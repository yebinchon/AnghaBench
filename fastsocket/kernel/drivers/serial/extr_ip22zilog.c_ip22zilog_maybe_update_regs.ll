; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_maybe_update_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_maybe_update_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_ip22zilog_port = type { i32, i32 }
%struct.zilog_channel = type { i32 }

@IP22ZILOG_FLAG_REGS_HELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_ip22zilog_port*, %struct.zilog_channel*)* @ip22zilog_maybe_update_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_maybe_update_regs(%struct.uart_ip22zilog_port* %0, %struct.zilog_channel* %1) #0 {
  %3 = alloca %struct.uart_ip22zilog_port*, align 8
  %4 = alloca %struct.zilog_channel*, align 8
  store %struct.uart_ip22zilog_port* %0, %struct.uart_ip22zilog_port** %3, align 8
  store %struct.zilog_channel* %1, %struct.zilog_channel** %4, align 8
  %5 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %6 = call i32 @ZS_REGS_HELD(%struct.uart_ip22zilog_port* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %10 = call i64 @ZS_TX_ACTIVE(%struct.uart_ip22zilog_port* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* @IP22ZILOG_FLAG_REGS_HELD, align 4
  %14 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %24

18:                                               ; preds = %8
  %19 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %20 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__load_zsregs(%struct.zilog_channel* %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

declare dso_local i32 @ZS_REGS_HELD(%struct.uart_ip22zilog_port*) #1

declare dso_local i64 @ZS_TX_ACTIVE(%struct.uart_ip22zilog_port*) #1

declare dso_local i32 @__load_zsregs(%struct.zilog_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
