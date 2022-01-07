; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"MMC IRQ begin\0A\00", align 1
@CTL_STATUS = common dso_local global i32 0, align 4
@CTL_IRQ_MASK = common dso_local global i32 0, align 4
@TMIO_MASK_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"tmio_mmc: Spurious irq, disabling! 0x%08x 0x%08x 0x%08x\0A\00", align 1
@TMIO_STAT_CARD_INSERT = common dso_local global i32 0, align 4
@TMIO_STAT_CARD_REMOVE = common dso_local global i32 0, align 4
@TMIO_MASK_CMD = common dso_local global i32 0, align 4
@TMIO_STAT_RXRDY = common dso_local global i32 0, align 4
@TMIO_STAT_TXRQ = common dso_local global i32 0, align 4
@TMIO_STAT_DATAEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Status at end of loop: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MMC IRQ end\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tmio_mmc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_mmc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tmio_mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tmio_mmc_host*
  store %struct.tmio_mmc_host* %10, %struct.tmio_mmc_host** %5, align 8
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %13 = load i32, i32* @CTL_STATUS, align 4
  %14 = call i32 @sd_ctrl_read32(%struct.tmio_mmc_host* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %16 = load i32, i32* @CTL_IRQ_MASK, align 4
  %17 = call i32 @sd_ctrl_read32(%struct.tmio_mmc_host* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @TMIO_MASK_IRQ, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @pr_debug_status(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pr_debug_status(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %2
  %31 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @disable_mmc_irqs(%struct.tmio_mmc_host* %31, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @pr_debug_status(i32 %41)
  br label %121

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %102, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %119

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @TMIO_STAT_CARD_INSERT, align 4
  %50 = load i32, i32* @TMIO_STAT_CARD_REMOVE, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %56 = load i32, i32* @TMIO_STAT_CARD_INSERT, align 4
  %57 = load i32, i32* @TMIO_STAT_CARD_REMOVE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @ack_mmc_irqs(%struct.tmio_mmc_host* %55, i32 %58)
  %60 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %61 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mmc_detect_change(i32 %62, i32 0)
  br label %64

64:                                               ; preds = %54, %47
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @TMIO_MASK_CMD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %71 = load i32, i32* @TMIO_MASK_CMD, align 4
  %72 = call i32 @ack_mmc_irqs(%struct.tmio_mmc_host* %70, i32 %71)
  %73 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @tmio_mmc_cmd_irq(%struct.tmio_mmc_host* %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %64
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @TMIO_STAT_RXRDY, align 4
  %79 = load i32, i32* @TMIO_STAT_TXRQ, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %85 = load i32, i32* @TMIO_STAT_RXRDY, align 4
  %86 = load i32, i32* @TMIO_STAT_TXRQ, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @ack_mmc_irqs(%struct.tmio_mmc_host* %84, i32 %87)
  %89 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %90 = call i32 @tmio_mmc_pio_irq(%struct.tmio_mmc_host* %89)
  br label %91

91:                                               ; preds = %83, %76
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @TMIO_STAT_DATAEND, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %98 = load i32, i32* @TMIO_STAT_DATAEND, align 4
  %99 = call i32 @ack_mmc_irqs(%struct.tmio_mmc_host* %97, i32 %98)
  %100 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %101 = call i32 @tmio_mmc_data_irq(%struct.tmio_mmc_host* %100)
  br label %102

102:                                              ; preds = %96, %91
  %103 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %104 = load i32, i32* @CTL_STATUS, align 4
  %105 = call i32 @sd_ctrl_read32(%struct.tmio_mmc_host* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %107 = load i32, i32* @CTL_IRQ_MASK, align 4
  %108 = call i32 @sd_ctrl_read32(%struct.tmio_mmc_host* %106, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @TMIO_MASK_IRQ, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @pr_debug_status(i32 %117)
  br label %44

119:                                              ; preds = %44
  %120 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %30
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %122
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @sd_ctrl_read32(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @pr_debug_status(i32) #1

declare dso_local i32 @disable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @ack_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @mmc_detect_change(i32, i32) #1

declare dso_local i32 @tmio_mmc_cmd_irq(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_pio_irq(%struct.tmio_mmc_host*) #1

declare dso_local i32 @tmio_mmc_data_irq(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
