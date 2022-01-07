; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpc52xx_uart.c_mpc52xx_uart_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpc52xx_uart.c_mpc52xx_uart_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (%struct.uart_port*)*, i32 (%struct.uart_port*)*, i64 (%struct.uart_port*)*, i32 (%struct.uart_port*)* }
%struct.uart_port = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ISR_PASS_LIMIT = common dso_local global i64 0, align 8
@psc_ops = common dso_local global %struct.TYPE_3__* null, align 8
@MPC52xx_PSC_D_DCD = common dso_local global i32 0, align 4
@MPC52xx_PSC_DCD = common dso_local global i32 0, align 4
@MPC52xx_PSC_D_CTS = common dso_local global i32 0, align 4
@MPC52xx_PSC_CTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc52xx_uart_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_uart_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uart_port*
  store %struct.uart_port* %10, %struct.uart_port** %5, align 8
  %11 = load i64, i64* @ISR_PASS_LIMIT, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  br label %15

15:                                               ; preds = %87, %2
  store i32 0, i32* %7, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psc_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %17, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %20 = call i32 %18(%struct.uart_port* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psc_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64 (%struct.uart_port*)*, i64 (%struct.uart_port*)** %22, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %25 = call i64 %23(%struct.uart_port* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %29 = call i32 @mpc52xx_uart_int_rx_chars(%struct.uart_port* %28)
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %27, %15
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psc_ops, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %34, align 8
  %36 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %37 = call i32 %35(%struct.uart_port* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psc_ops, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64 (%struct.uart_port*)*, i64 (%struct.uart_port*)** %39, align 8
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = call i64 %40(%struct.uart_port* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %46 = call i32 @mpc52xx_uart_int_tx_chars(%struct.uart_port* %45)
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %32
  %50 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %51 = call %struct.TYPE_4__* @PSC(%struct.uart_port* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @in_8(i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MPC52xx_PSC_D_DCD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @MPC52xx_PSC_DCD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @uart_handle_dcd_change(%struct.uart_port* %59, i32 %65)
  br label %67

67:                                               ; preds = %58, %49
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @MPC52xx_PSC_D_CTS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @MPC52xx_PSC_CTS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @uart_handle_cts_change(%struct.uart_port* %73, i32 %79)
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %81
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %15, label %90

90:                                               ; preds = %87
  %91 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %94
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mpc52xx_uart_int_rx_chars(%struct.uart_port*) #1

declare dso_local i32 @mpc52xx_uart_int_tx_chars(%struct.uart_port*) #1

declare dso_local i32 @in_8(i32*) #1

declare dso_local %struct.TYPE_4__* @PSC(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
