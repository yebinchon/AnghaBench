; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, i32 }

@CX2341X_ENC_MUTE_VIDEO = common dso_local global i32 0, align 4
@PVR2_CVAL_INPUT_RADIO = common dso_local global i64 0, align 8
@CX2341X_ENC_START_CAPTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_encoder_start(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %5 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %4, i32 72, i32 -1073741825)
  %6 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %7 = load i32, i32* @CX2341X_ENC_MUTE_VIDEO, align 4
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %9 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PVR2_CVAL_INPUT_RADIO, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = call i32 (%struct.pvr2_hdw*, i32, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %6, i32 %7, i32 1, i32 %14)
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %27 [
    i32 128, label %19
    i32 129, label %23
  ]

19:                                               ; preds = %1
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %21 = load i32, i32* @CX2341X_ENC_START_CAPTURE, align 4
  %22 = call i32 (%struct.pvr2_hdw*, i32, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %20, i32 %21, i32 2, i32 1, i32 20)
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %25 = load i32, i32* @CX2341X_ENC_START_CAPTURE, align 4
  %26 = call i32 (%struct.pvr2_hdw*, i32, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %24, i32 %25, i32 2, i32 0, i32 19)
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %29 = load i32, i32* @CX2341X_ENC_START_CAPTURE, align 4
  %30 = call i32 (%struct.pvr2_hdw*, i32, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %28, i32 %29, i32 2, i32 0, i32 19)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %23, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @pvr2_write_register(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @pvr2_encoder_vcmd(%struct.pvr2_hdw*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
