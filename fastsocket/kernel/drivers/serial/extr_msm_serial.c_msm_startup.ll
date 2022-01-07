; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.msm_port = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"msm_serial%d\00", align 1
@msm_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@UART_MR1 = common dso_local global i32 0, align 4
@UART_MR1_AUTO_RFR_LEVEL1 = common dso_local global i32 0, align 4
@UART_MR1_AUTO_RFR_LEVEL0 = common dso_local global i32 0, align 4
@UART_IPR = common dso_local global i32 0, align 4
@UART_IPR_RXSTALE_LAST = common dso_local global i32 0, align 4
@UART_IPR_STALE_LSB = common dso_local global i32 0, align 4
@UART_CR = common dso_local global i32 0, align 4
@UART_IMR_RXLEV = common dso_local global i32 0, align 4
@UART_IMR_RXSTALE = common dso_local global i32 0, align 4
@UART_IMR_CURRENT_CTS = common dso_local global i32 0, align 4
@UART_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @msm_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.msm_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %8)
  store %struct.msm_port* %9, %struct.msm_port** %4, align 8
  %10 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %11 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snprintf(i32 %12, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @msm_irq, align 4
  %21 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %22 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %23 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = call i32 @request_irq(i32 %19, i32 %20, i32 %21, i32 %24, %struct.uart_port* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %117

32:                                               ; preds = %1
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = call i32 @msm_init_clock(%struct.uart_port* %33)
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 12
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 12
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %32
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = load i32, i32* @UART_MR1, align 4
  %54 = call i32 @msm_read(%struct.uart_port* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @UART_MR1_AUTO_RFR_LEVEL1, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @UART_MR1_AUTO_RFR_LEVEL0, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @UART_MR1_AUTO_RFR_LEVEL1, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 2
  %66 = and i32 %63, %65
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @UART_MR1_AUTO_RFR_LEVEL0, align 4
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @UART_MR1, align 4
  %77 = call i32 @msm_write(%struct.uart_port* %74, i32 %75, i32 %76)
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = load i32, i32* @UART_IPR, align 4
  %80 = call i32 @msm_read(%struct.uart_port* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %51
  %88 = load i32, i32* @UART_IPR_RXSTALE_LAST, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @UART_IPR_STALE_LSB, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @UART_IPR, align 4
  %97 = call i32 @msm_write(%struct.uart_port* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %87, %51
  %99 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %100 = call i32 @msm_reset(%struct.uart_port* %99)
  %101 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %102 = load i32, i32* @UART_CR, align 4
  %103 = call i32 @msm_write(%struct.uart_port* %101, i32 5, i32 %102)
  %104 = load i32, i32* @UART_IMR_RXLEV, align 4
  %105 = load i32, i32* @UART_IMR_RXSTALE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @UART_IMR_CURRENT_CTS, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %110 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %112 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %113 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @UART_IMR, align 4
  %116 = call i32 @msm_write(%struct.uart_port* %111, i32 %114, i32 %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %98, %30
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msm_init_clock(%struct.uart_port*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @msm_reset(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
