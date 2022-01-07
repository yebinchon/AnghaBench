; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PVR2_TRACE_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pvr2_ioread_create id=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pvr2_ioread* @pvr2_ioread_create() #0 {
  %1 = alloca %struct.pvr2_ioread*, align 8
  %2 = alloca %struct.pvr2_ioread*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.pvr2_ioread* @kzalloc(i32 4, i32 %3)
  store %struct.pvr2_ioread* %4, %struct.pvr2_ioread** %2, align 8
  %5 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %6 = icmp ne %struct.pvr2_ioread* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.pvr2_ioread* null, %struct.pvr2_ioread** %1, align 8
  br label %20

8:                                                ; preds = %0
  %9 = load i32, i32* @PVR2_TRACE_STRUCT, align 4
  %10 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %11 = call i32 @pvr2_trace(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pvr2_ioread* %10)
  %12 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %13 = call i64 @pvr2_ioread_init(%struct.pvr2_ioread* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %17 = call i32 @kfree(%struct.pvr2_ioread* %16)
  store %struct.pvr2_ioread* null, %struct.pvr2_ioread** %1, align 8
  br label %20

18:                                               ; preds = %8
  %19 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  store %struct.pvr2_ioread* %19, %struct.pvr2_ioread** %1, align 8
  br label %20

20:                                               ; preds = %18, %15, %7
  %21 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %1, align 8
  ret %struct.pvr2_ioread* %21
}

declare dso_local %struct.pvr2_ioread* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_ioread*) #1

declare dso_local i64 @pvr2_ioread_init(%struct.pvr2_ioread*) #1

declare dso_local i32 @kfree(%struct.pvr2_ioread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
