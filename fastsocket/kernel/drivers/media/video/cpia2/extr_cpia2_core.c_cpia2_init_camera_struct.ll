; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_init_camera_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_init_camera_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't kmalloc cpia2 struct\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.camera_data* @cpia2_init_camera_struct() #0 {
  %1 = alloca %struct.camera_data*, align 8
  %2 = alloca %struct.camera_data*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.camera_data* @kzalloc(i32 12, i32 %3)
  store %struct.camera_data* %4, %struct.camera_data** %2, align 8
  %5 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %6 = icmp ne %struct.camera_data* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.camera_data* null, %struct.camera_data** %1, align 8
  br label %19

9:                                                ; preds = %0
  %10 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %11 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %13 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %12, i32 0, i32 2
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %16 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %15, i32 0, i32 1
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  store %struct.camera_data* %18, %struct.camera_data** %1, align 8
  br label %19

19:                                               ; preds = %9, %7
  %20 = load %struct.camera_data*, %struct.camera_data** %1, align 8
  ret %struct.camera_data* %20
}

declare dso_local %struct.camera_data* @kzalloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
