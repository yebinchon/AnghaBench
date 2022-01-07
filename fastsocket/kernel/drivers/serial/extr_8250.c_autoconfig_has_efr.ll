; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_autoconfig_has_efr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_autoconfig_has_efr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@UART_CAP_EFR = common dso_local global i32 0, align 4
@UART_CAP_SLEEP = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i32 0, align 4
@UART_ID1 = common dso_local global i32 0, align 4
@UART_ID2 = common dso_local global i32 0, align 4
@UART_ID3 = common dso_local global i32 0, align 4
@UART_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"950id=%02x:%02x:%02x:%02x \00", align 1
@PORT_16C950 = common dso_local global i32 0, align 4
@UART_BUG_QUOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"850id=%04x \00", align 1
@PORT_16850 = common dso_local global i32 0, align 4
@PORT_16654 = common dso_local global i32 0, align 4
@PORT_16650V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @autoconfig_has_efr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autoconfig_has_efr(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %7 = load i32, i32* @UART_CAP_EFR, align 4
  %8 = load i32, i32* @UART_CAP_SLEEP, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %17 = load i32, i32* @UART_LCR, align 4
  %18 = call i32 @serial_out(%struct.uart_8250_port* %16, i32 %17, i32 191)
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %20 = load i32, i32* @UART_EFR, align 4
  %21 = load i32, i32* @UART_EFR_ECB, align 4
  %22 = call i32 @serial_out(%struct.uart_8250_port* %19, i32 %20, i32 %21)
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %24 = load i32, i32* @UART_LCR, align 4
  %25 = call i32 @serial_out(%struct.uart_8250_port* %23, i32 %24, i32 0)
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %27 = load i32, i32* @UART_ID1, align 4
  %28 = call i32 @serial_icr_read(%struct.uart_8250_port* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %30 = load i32, i32* @UART_ID2, align 4
  %31 = call i32 @serial_icr_read(%struct.uart_8250_port* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %33 = load i32, i32* @UART_ID3, align 4
  %34 = call i32 @serial_icr_read(%struct.uart_8250_port* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %36 = load i32, i32* @UART_REV, align 4
  %37 = call i32 @serial_icr_read(%struct.uart_8250_port* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, i32, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 22
  br i1 %44, label %45, label %74

45:                                               ; preds = %1
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 201
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 80
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 82
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 84
  br i1 %56, label %57, label %74

57:                                               ; preds = %54, %51, %48
  %58 = load i32, i32* @PORT_16C950, align 4
  %59 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 82
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* @UART_BUG_QUOT, align 4
  %69 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %70 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %64, %57
  br label %108

74:                                               ; preds = %54, %45, %1
  %75 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %76 = call i32 @autoconfig_read_divisor_id(%struct.uart_8250_port* %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (i8*, i32, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = lshr i32 %79, 8
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 16
  br i1 %82, label %89, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 18
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 20
  br i1 %88, label %89, label %94

89:                                               ; preds = %86, %83, %74
  %90 = load i32, i32* @PORT_16850, align 4
  %91 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %92 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  br label %108

94:                                               ; preds = %86
  %95 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %96 = call i32 @size_fifo(%struct.uart_8250_port* %95)
  %97 = icmp eq i32 %96, 64
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* @PORT_16654, align 4
  %100 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %101 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %108

103:                                              ; preds = %94
  %104 = load i32, i32* @PORT_16650V2, align 4
  %105 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %106 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %73, %89, %103, %98
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial_icr_read(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @DEBUG_AUTOCONF(i8*, i32, ...) #1

declare dso_local i32 @autoconfig_read_divisor_id(%struct.uart_8250_port*) #1

declare dso_local i32 @size_fifo(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
