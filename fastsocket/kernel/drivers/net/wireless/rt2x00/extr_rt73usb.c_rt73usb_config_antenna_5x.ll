; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_config_antenna_5x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_config_antenna_5x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }
%struct.antenna_setup = type { i32 }

@BBP_R3_SMART_MODE = common dso_local global i32 0, align 4
@BBP_R4_RX_ANTENNA_CONTROL = common dso_local global i32 0, align 4
@CAPABILITY_FRAME_TYPE = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@BBP_R4_RX_FRAME_END = common dso_local global i32 0, align 4
@BBP_R77_RX_ANTENNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.antenna_setup*)* @rt73usb_config_antenna_5x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_config_antenna_5x(%struct.rt2x00_dev* %0, %struct.antenna_setup* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.antenna_setup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.antenna_setup* %1, %struct.antenna_setup** %4, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = call i32 @rt73usb_bbp_read(%struct.rt2x00_dev* %9, i32 3, i32* %5)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = call i32 @rt73usb_bbp_read(%struct.rt2x00_dev* %11, i32 4, i32* %6)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = call i32 @rt73usb_bbp_read(%struct.rt2x00_dev* %13, i32 77, i32* %7)
  %15 = load i32, i32* @BBP_R3_SMART_MODE, align 4
  %16 = call i32 @rt2x00_set_field8(i32* %5, i32 %15, i32 0)
  %17 = load %struct.antenna_setup*, %struct.antenna_setup** %4, align 8
  %18 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %58 [
    i32 128, label %20
    i32 130, label %40
    i32 129, label %57
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %22 = call i32 @rt2x00_set_field8(i32* %6, i32 %21, i32 2)
  %23 = load i32, i32* @CAPABILITY_FRAME_TYPE, align 4
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 1
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %33 = icmp ne i32 %31, %32
  br label %34

34:                                               ; preds = %28, %20
  %35 = phi i1 [ false, %20 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @rt2x00_set_field8(i32* %6, i32 %37, i32 %38)
  br label %75

40:                                               ; preds = %2
  %41 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %42 = call i32 @rt2x00_set_field8(i32* %6, i32 %41, i32 1)
  %43 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %44 = call i32 @rt2x00_set_field8(i32* %6, i32 %43, i32 0)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %52 = call i32 @rt2x00_set_field8(i32* %7, i32 %51, i32 0)
  br label %56

53:                                               ; preds = %40
  %54 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %55 = call i32 @rt2x00_set_field8(i32* %7, i32 %54, i32 3)
  br label %56

56:                                               ; preds = %53, %50
  br label %75

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %2, %57
  %59 = load i32, i32* @BBP_R4_RX_ANTENNA_CONTROL, align 4
  %60 = call i32 @rt2x00_set_field8(i32* %6, i32 %59, i32 1)
  %61 = load i32, i32* @BBP_R4_RX_FRAME_END, align 4
  %62 = call i32 @rt2x00_set_field8(i32* %6, i32 %61, i32 0)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %64 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %70 = call i32 @rt2x00_set_field8(i32* %7, i32 %69, i32 3)
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* @BBP_R77_RX_ANTENNA, align 4
  %73 = call i32 @rt2x00_set_field8(i32* %7, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %56, %34
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %76, i32 77, i32 %77)
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %79, i32 3, i32 %80)
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @rt73usb_bbp_write(%struct.rt2x00_dev* %82, i32 4, i32 %83)
  ret void
}

declare dso_local i32 @rt73usb_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt73usb_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
