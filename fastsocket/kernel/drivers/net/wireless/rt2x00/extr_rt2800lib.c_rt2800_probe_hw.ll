; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_probe_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_probe_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }

@GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR2 = common dso_local global i32 0, align 4
@CAPABILITY_CONTROL_FILTERS = common dso_local global i32 0, align 4
@CAPABILITY_CONTROL_FILTER_PSPOLL = common dso_local global i32 0, align 4
@CAPABILITY_PRE_TBTT_INTERRUPT = common dso_local global i32 0, align 4
@REQUIRE_FIRMWARE = common dso_local global i32 0, align 4
@REQUIRE_L2PAD = common dso_local global i32 0, align 4
@REQUIRE_TXSTATUS_FIFO = common dso_local global i32 0, align 4
@CAPABILITY_HW_CRYPTO = common dso_local global i32 0, align 4
@CAPABILITY_LINK_TUNING = common dso_local global i32 0, align 4
@REQUIRE_HT_TX_DESC = common dso_local global i32 0, align 4
@REQUIRE_PS_AUTOWAKE = common dso_local global i32 0, align 4
@REQUIRE_DMA = common dso_local global i32 0, align 4
@REQUIRE_TASKLET_CONTEXT = common dso_local global i32 0, align 4
@DEFAULT_RSSI_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_probe_hw(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = call i32 @rt2800_probe_rt(%struct.rt2x00_dev* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %115

12:                                               ; preds = %1
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = call i32 @rt2800_validate_eeprom(%struct.rt2x00_dev* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %115

19:                                               ; preds = %12
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = call i32 @rt2800_init_eeprom(%struct.rt2x00_dev* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %115

26:                                               ; preds = %19
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = load i32, i32* @GPIO_CTRL, align 4
  %29 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %27, i32 %28, i32* %5)
  %30 = load i32, i32* @GPIO_CTRL_DIR2, align 4
  %31 = call i32 @rt2x00_set_field32(i32* %5, i32 %30, i32 1)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = load i32, i32* @GPIO_CTRL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = call i32 @rt2800_probe_hw_mode(%struct.rt2x00_dev* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %115

42:                                               ; preds = %26
  %43 = load i32, i32* @CAPABILITY_CONTROL_FILTERS, align 4
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %44, i32 0, i32 1
  %46 = call i32 @__set_bit(i32 %43, i32* %45)
  %47 = load i32, i32* @CAPABILITY_CONTROL_FILTER_PSPOLL, align 4
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %49 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %48, i32 0, i32 1
  %50 = call i32 @__set_bit(i32 %47, i32* %49)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @CAPABILITY_PRE_TBTT_INTERRUPT, align 4
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %56, i32 0, i32 1
  %58 = call i32 @__set_bit(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %54, %42
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = call i32 @rt2x00_is_soc(%struct.rt2x00_dev* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @REQUIRE_FIRMWARE, align 4
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %66 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %65, i32 0, i32 1
  %67 = call i32 @__set_bit(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* @REQUIRE_L2PAD, align 4
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %71 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %70, i32 0, i32 1
  %72 = call i32 @__set_bit(i32 %69, i32* %71)
  %73 = load i32, i32* @REQUIRE_TXSTATUS_FIFO, align 4
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %74, i32 0, i32 1
  %76 = call i32 @__set_bit(i32 %73, i32* %75)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %78 = call i32 @rt2800_hwcrypt_disabled(%struct.rt2x00_dev* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* @CAPABILITY_HW_CRYPTO, align 4
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %82, i32 0, i32 1
  %84 = call i32 @__set_bit(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %80, %68
  %86 = load i32, i32* @CAPABILITY_LINK_TUNING, align 4
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %88 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %87, i32 0, i32 1
  %89 = call i32 @__set_bit(i32 %86, i32* %88)
  %90 = load i32, i32* @REQUIRE_HT_TX_DESC, align 4
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %92 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %91, i32 0, i32 1
  %93 = call i32 @__set_bit(i32 %90, i32* %92)
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %95 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load i32, i32* @REQUIRE_PS_AUTOWAKE, align 4
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %100 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %99, i32 0, i32 1
  %101 = call i32 @__set_bit(i32 %98, i32* %100)
  br label %111

102:                                              ; preds = %85
  %103 = load i32, i32* @REQUIRE_DMA, align 4
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %105 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %104, i32 0, i32 1
  %106 = call i32 @__set_bit(i32 %103, i32* %105)
  %107 = load i32, i32* @REQUIRE_TASKLET_CONTEXT, align 4
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %109 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %108, i32 0, i32 1
  %110 = call i32 @__set_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %102, %97
  %112 = load i32, i32* @DEFAULT_RSSI_OFFSET, align 4
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %114 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %111, %40, %24, %17, %10
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @rt2800_probe_rt(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_validate_eeprom(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_eeprom(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_probe_hw_mode(%struct.rt2x00_dev*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_is_soc(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_hwcrypt_disabled(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
