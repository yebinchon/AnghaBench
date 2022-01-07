; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_set_target_kb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_set_target_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8 }

@.str = private unnamed_addr constant [26 x i8] c"Requested target_kb = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_set_target_kb(%struct.camera_data* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.camera_data*, align 8
  %4 = alloca i8, align 1
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %5)
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %10 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %8, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %18 = call i32 @cpia2_usb_stream_pause(%struct.camera_data* %17)
  %19 = load i8, i8* %4, align 1
  %20 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %21 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8 %19, i8* %23, align 1
  %24 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %25 = call i32 @cpia2_reset_camera(%struct.camera_data* %24)
  %26 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %27 = call i32 @cpia2_usb_stream_resume(%struct.camera_data* %26)
  br label %28

28:                                               ; preds = %16, %2
  ret i32 0
}

declare dso_local i32 @DBG(i8*, i8 zeroext) #1

declare dso_local i32 @cpia2_usb_stream_pause(%struct.camera_data*) #1

declare dso_local i32 @cpia2_reset_camera(%struct.camera_data*) #1

declare dso_local i32 @cpia2_usb_stream_resume(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
