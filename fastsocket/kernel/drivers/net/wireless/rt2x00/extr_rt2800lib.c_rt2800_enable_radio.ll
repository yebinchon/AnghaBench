; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_enable_radio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_enable_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@H2M_BBP_AGENT = common dso_local global i32 0, align 4
@H2M_MAILBOX_CSR = common dso_local global i32 0, align 4
@H2M_INT_SRC = common dso_local global i32 0, align 4
@MCU_BOOT_SIGNAL = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@RT3071 = common dso_local global i32 0, align 4
@RT3572 = common dso_local global i32 0, align 4
@MCU_CURRENT = common dso_local global i32 0, align 4
@MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MAC_SYS_CTRL_ENABLE_TX = common dso_local global i32 0, align 4
@MAC_SYS_CTRL_ENABLE_RX = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_ENABLE_TX_DMA = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_ENABLE_RX_DMA = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_WP_DMA_BURST_SIZE = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_TX_WRITEBACK_DONE = common dso_local global i32 0, align 4
@EEPROM_LED_AG_CONF = common dso_local global i32 0, align 4
@MCU_LED_AG_CONF = common dso_local global i32 0, align 4
@EEPROM_LED_ACT_CONF = common dso_local global i32 0, align 4
@MCU_LED_ACT_CONF = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY = common dso_local global i32 0, align 4
@MCU_LED_LED_POLARITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_enable_radio(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = call i64 @rt2800_wait_wpdma_ready(%struct.rt2x00_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = call i64 @rt2800_init_registers(%struct.rt2x00_dev* %10)
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ true, %1 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %146

21:                                               ; preds = %13
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = load i32, i32* @H2M_BBP_AGENT, align 4
  %24 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %22, i32 %23, i32 0)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @H2M_MAILBOX_CSR, align 4
  %27 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 0)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = load i32, i32* @H2M_INT_SRC, align 4
  %34 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %32, i32 %33, i32 0)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @MCU_BOOT_SIGNAL, align 4
  %37 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %35, i32 %36, i32 0, i32 0, i32 0)
  br label %38

38:                                               ; preds = %31, %21
  %39 = call i32 @msleep(i32 1)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = call i32 @rt2800_init_bbp(%struct.rt2x00_dev* %40)
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %146

47:                                               ; preds = %38
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %49 = call i32 @rt2800_init_rfcsr(%struct.rt2x00_dev* %48)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = load i32, i32* @RT3070, align 4
  %56 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = load i32, i32* @RT3071, align 4
  %61 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = load i32, i32* @RT3572, align 4
  %66 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63, %58, %53
  %69 = call i32 @udelay(i32 200)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %71 = load i32, i32* @MCU_CURRENT, align 4
  %72 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %70, i32 %71, i32 0, i32 0, i32 0)
  %73 = call i32 @udelay(i32 10)
  br label %74

74:                                               ; preds = %68, %63, %47
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %76 = load i32, i32* @MAC_SYS_CTRL, align 4
  %77 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %75, i32 %76, i32* %4)
  %78 = load i32, i32* @MAC_SYS_CTRL_ENABLE_TX, align 4
  %79 = call i32 @rt2x00_set_field32(i32* %4, i32 %78, i32 1)
  %80 = load i32, i32* @MAC_SYS_CTRL_ENABLE_RX, align 4
  %81 = call i32 @rt2x00_set_field32(i32* %4, i32 %80, i32 0)
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = load i32, i32* @MAC_SYS_CTRL, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %82, i32 %83, i32 %84)
  %86 = call i32 @udelay(i32 50)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %88 = load i32, i32* @WPDMA_GLO_CFG, align 4
  %89 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %87, i32 %88, i32* %4)
  %90 = load i32, i32* @WPDMA_GLO_CFG_ENABLE_TX_DMA, align 4
  %91 = call i32 @rt2x00_set_field32(i32* %4, i32 %90, i32 1)
  %92 = load i32, i32* @WPDMA_GLO_CFG_ENABLE_RX_DMA, align 4
  %93 = call i32 @rt2x00_set_field32(i32* %4, i32 %92, i32 1)
  %94 = load i32, i32* @WPDMA_GLO_CFG_WP_DMA_BURST_SIZE, align 4
  %95 = call i32 @rt2x00_set_field32(i32* %4, i32 %94, i32 2)
  %96 = load i32, i32* @WPDMA_GLO_CFG_TX_WRITEBACK_DONE, align 4
  %97 = call i32 @rt2x00_set_field32(i32* %4, i32 %96, i32 1)
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %99 = load i32, i32* @WPDMA_GLO_CFG, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %103 = load i32, i32* @MAC_SYS_CTRL, align 4
  %104 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %102, i32 %103, i32* %4)
  %105 = load i32, i32* @MAC_SYS_CTRL_ENABLE_TX, align 4
  %106 = call i32 @rt2x00_set_field32(i32* %4, i32 %105, i32 1)
  %107 = load i32, i32* @MAC_SYS_CTRL_ENABLE_RX, align 4
  %108 = call i32 @rt2x00_set_field32(i32* %4, i32 %107, i32 1)
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %110 = load i32, i32* @MAC_SYS_CTRL, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %109, i32 %110, i32 %111)
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %114 = load i32, i32* @EEPROM_LED_AG_CONF, align 4
  %115 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %113, i32 %114, i32* %5)
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %117 = load i32, i32* @MCU_LED_AG_CONF, align 4
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, 255
  %120 = load i32, i32* %5, align 4
  %121 = ashr i32 %120, 8
  %122 = and i32 %121, 255
  %123 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %116, i32 %117, i32 255, i32 %119, i32 %122)
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %125 = load i32, i32* @EEPROM_LED_ACT_CONF, align 4
  %126 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %124, i32 %125, i32* %5)
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %128 = load i32, i32* @MCU_LED_ACT_CONF, align 4
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, 255
  %131 = load i32, i32* %5, align 4
  %132 = ashr i32 %131, 8
  %133 = and i32 %132, 255
  %134 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %127, i32 %128, i32 255, i32 %130, i32 %133)
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %136 = load i32, i32* @EEPROM_LED_POLARITY, align 4
  %137 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %135, i32 %136, i32* %5)
  %138 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %139 = load i32, i32* @MCU_LED_LED_POLARITY, align 4
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, 255
  %142 = load i32, i32* %5, align 4
  %143 = ashr i32 %142, 8
  %144 = and i32 %143, 255
  %145 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %138, i32 %139, i32 255, i32 %141, i32 %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %74, %44, %18
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rt2800_wait_wpdma_ready(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2800_init_registers(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_mcu_request(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2800_init_bbp(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
