; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_lh7a40x.c_lh7a40xuart_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_lh7a40x.c_lh7a40xuart_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.uart_port_lh7a40x = type { i32 }

@UART_R_STATUS = common dso_local global i32 0, align 4
@UART_R_RAWISR = common dso_local global i32 0, align 4
@MSEOI = common dso_local global i32 0, align 4
@DCD = common dso_local global i32 0, align 4
@DSR = common dso_local global i32 0, align 4
@CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @lh7a40xuart_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lh7a40xuart_modem_status(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = load i32, i32* @UART_R_STATUS, align 4
  %7 = call i32 @UR(%struct.uart_port* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = bitcast %struct.uart_port* %9 to %struct.uart_port_lh7a40x*
  %11 = getelementptr inbounds %struct.uart_port_lh7a40x, %struct.uart_port_lh7a40x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %8, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @UART_R_RAWISR, align 4
  %16 = load i32, i32* @MSEOI, align 4
  %17 = call i32 @BIT_SET(%struct.uart_port* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %65

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = bitcast %struct.uart_port* %23 to %struct.uart_port_lh7a40x*
  %25 = getelementptr inbounds %struct.uart_port_lh7a40x, %struct.uart_port_lh7a40x* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DCD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @DCD, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @uart_handle_dcd_change(%struct.uart_port* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %21
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DSR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @CTS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @CTS, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @uart_handle_cts_change(%struct.uart_port* %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @wake_up_interruptible(i32* %63)
  br label %65

65:                                               ; preds = %58, %20
  ret void
}

declare dso_local i32 @UR(%struct.uart_port*, i32) #1

declare dso_local i32 @BIT_SET(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
