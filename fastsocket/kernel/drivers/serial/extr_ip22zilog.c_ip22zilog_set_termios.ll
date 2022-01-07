; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_ip22zilog_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ZS_CLOCK = common dso_local global i32 0, align 4
@ZS_CLOCK_DIVISOR = common dso_local global i32 0, align 4
@IP22ZILOG_FLAG_MODEM_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @ip22zilog_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_ip22zilog_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = bitcast %struct.uart_port* %11 to %struct.uart_ip22zilog_port*
  store %struct.uart_ip22zilog_port* %12, %struct.uart_ip22zilog_port** %7, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %15 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %16 = call i32 @uart_get_baud_rate(%struct.uart_port* %13, %struct.ktermios* %14, %struct.ktermios* %15, i32 1200, i32 76800)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %7, align 8
  %18 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @ZS_CLOCK, align 4
  %24 = load i32, i32* @ZS_CLOCK_DIVISOR, align 4
  %25 = sdiv i32 %23, %24
  %26 = call i32 @BPS_TO_BRG(i32 %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %7, align 8
  %28 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %29 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ip22zilog_convert_to_zs(%struct.uart_ip22zilog_port* %27, i32 %30, i32 %33, i32 %34)
  %36 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %7, align 8
  %37 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %36, i32 0, i32 0
  %38 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %39 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @UART_ENABLE_MS(%struct.TYPE_2__* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load i32, i32* @IP22ZILOG_FLAG_MODEM_STATUS, align 4
  %45 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %7, align 8
  %46 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %56

49:                                               ; preds = %3
  %50 = load i32, i32* @IP22ZILOG_FLAG_MODEM_STATUS, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %7, align 8
  %53 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %7, align 8
  %58 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %59 = call i32 @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port* %58)
  %60 = call i32 @ip22zilog_maybe_update_regs(%struct.uart_ip22zilog_port* %57, i32 %59)
  %61 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %62 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @uart_update_timeout(%struct.uart_port* %61, i32 %64, i32 %65)
  %67 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %7, align 8
  %68 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BPS_TO_BRG(i32, i32) #1

declare dso_local i32 @ip22zilog_convert_to_zs(%struct.uart_ip22zilog_port*, i32, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ip22zilog_maybe_update_regs(%struct.uart_ip22zilog_port*, i32) #1

declare dso_local i32 @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
