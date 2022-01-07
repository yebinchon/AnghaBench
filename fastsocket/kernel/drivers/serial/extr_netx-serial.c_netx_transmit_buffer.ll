; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_transmit_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_transmit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART_DR = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@UART_FR = common dso_local global i64 0, align 8
@FR_TXFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @netx_transmit_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netx_transmit_buffer(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.circ_buf* %7, %struct.circ_buf** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UART_DR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i64 %15, i64 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  br label %94

29:                                               ; preds = %1
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = call i64 @uart_tx_stopped(%struct.uart_port* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %35 = call i64 @uart_circ_empty(%struct.circ_buf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = call i32 @netx_stop_tx(%struct.uart_port* %38)
  br label %94

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %76, %40
  %42 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %43 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UART_DR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i64 %49, i64 %54)
  %56 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  %60 = load i32, i32* @UART_XMIT_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = and i64 %59, %62
  %64 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %65 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %72 = call i64 @uart_circ_empty(%struct.circ_buf* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %41
  br label %87

75:                                               ; preds = %41
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @UART_FR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  %83 = load i32, i32* @FR_TXFF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br i1 %86, label %41, label %87

87:                                               ; preds = %76, %74
  %88 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %89 = call i64 @uart_circ_empty(%struct.circ_buf* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %93 = call i32 @netx_stop_tx(%struct.uart_port* %92)
  br label %94

94:                                               ; preds = %12, %37, %91, %87
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @netx_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
