; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_process_txrx_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_process_txrx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }
%struct.mxser_port = type { i64, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@PORT_16450 = common dso_local global i64 0, align 8
@PORT_8250 = common dso_local global i64 0, align 8
@UART_INFO_NUM = common dso_local global i32 0, align 4
@Gpci_uart_info = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxser_port*)* @process_txrx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_txrx_fifo(%struct.mxser_port* %0) #0 {
  %2 = alloca %struct.mxser_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mxser_port* %0, %struct.mxser_port** %2, align 8
  %4 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %5 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PORT_16450, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %11 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PORT_8250, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9, %1
  %16 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %17 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  %18 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %19 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %18, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %21 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %20, i32 0, i32 3
  store i32 1, i32* %21, align 8
  %22 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %23 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %22, i32 0, i32 4
  store i32 1, i32* %23, align 4
  br label %80

24:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %76, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @UART_INFO_NUM, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %25
  %30 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %31 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %30, i32 0, i32 5
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Gpci_uart_info, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %34, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %29
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Gpci_uart_info, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %50 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Gpci_uart_info, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %58 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Gpci_uart_info, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %66 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Gpci_uart_info, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %74 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %29
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %25

79:                                               ; preds = %42, %25
  br label %80

80:                                               ; preds = %79, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
