; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_cpia2_usb_stream_pause.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_cpia2_usb_stream_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i64 }

@USBIF_CMDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_usb_stream_pause(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  %3 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %5 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %10 = load i32, i32* @USBIF_CMDONLY, align 4
  %11 = call i32 @set_alternate(%struct.camera_data* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %13 = call i32 @free_sbufs(%struct.camera_data* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @set_alternate(%struct.camera_data*, i32) #1

declare dso_local i32 @free_sbufs(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
