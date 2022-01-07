; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i32*, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"pmz: startup()\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@pmz_irq_mutex = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_IS_OPEN = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_IS_IRQ_ON = common dso_local global i32 0, align 4
@pmz_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"PowerMac Zilog\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to register zs interrupt handler.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"pmz: delaying %d ms\0A\00", align 1
@INT_ALL_Rx = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"pmz: startup() done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @pmz_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmz_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_pmac_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %7)
  store %struct.uart_pmac_port* %8, %struct.uart_pmac_port** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %11 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %131

16:                                               ; preds = %1
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %131

24:                                               ; preds = %16
  %25 = call i32 @mutex_lock(i32* @pmz_irq_mutex)
  %26 = load i32, i32* @PMACZILOG_FLAG_IS_OPEN, align 4
  %27 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %28 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %32 = call i32 @ZS_IS_CONS(%struct.uart_pmac_port* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %24
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %40 = call i32 @__pmz_startup(%struct.uart_pmac_port* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %34, %24
  %46 = load i32, i32* @PMACZILOG_FLAG_IS_IRQ_ON, align 4
  %47 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %48 = call %struct.TYPE_8__* @pmz_get_port_A(%struct.uart_pmac_port* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %53 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @pmz_interrupt, align 4
  %57 = load i32, i32* @IRQF_SHARED, align 4
  %58 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %59 = call i64 @request_irq(i32 %55, i32 %56, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.uart_pmac_port* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %45
  %62 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %63 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %69 = call i32 @pmz_set_scc_power(%struct.uart_pmac_port* %68, i32 0)
  %70 = call i32 @mutex_unlock(i32* @pmz_irq_mutex)
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %131

73:                                               ; preds = %45
  %74 = call i32 @mutex_unlock(i32* @pmz_irq_mutex)
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @msleep(i32 %80)
  br label %82

82:                                               ; preds = %77, %73
  %83 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %84 = call i64 @ZS_IS_IRDA(%struct.uart_pmac_port* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %88 = call i32 @pmz_irda_reset(%struct.uart_pmac_port* %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 0
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load i32, i32* @INT_ALL_Rx, align 4
  %95 = load i32, i32* @TxINT_ENAB, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %98 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @R1, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %96
  store i32 %103, i32* %101, align 4
  %104 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %105 = call i32 @ZS_IS_EXTCLK(%struct.uart_pmac_port* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %89
  %108 = load i32, i32* @EXT_INT_ENAB, align 4
  %109 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %110 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @R1, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %108
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %107, %89
  %117 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %118 = load i64, i64* @R1, align 8
  %119 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %4, align 8
  %120 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @R1, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @write_zsreg(%struct.uart_pmac_port* %117, i64 %118, i32 %124)
  %126 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %127 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %126, i32 0, i32 0
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = call i32 (i8*, ...) @pmz_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %116, %61, %21, %13
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @pmz_debug(i8*, ...) #1

declare dso_local i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ZS_IS_CONS(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__pmz_startup(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_8__* @pmz_get_port_A(%struct.uart_pmac_port*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.uart_pmac_port*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pmz_set_scc_power(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ZS_IS_IRDA(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_irda_reset(%struct.uart_pmac_port*) #1

declare dso_local i32 @ZS_IS_EXTCLK(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
