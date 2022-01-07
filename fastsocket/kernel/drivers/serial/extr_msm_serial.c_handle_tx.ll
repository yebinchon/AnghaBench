; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_handle_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }
%struct.msm_port = type { i64 }

@UART_TF = common dso_local global i32 0, align 4
@UART_SR = common dso_local global i32 0, align 4
@UART_SR_TX_READY = common dso_local global i32 0, align 4
@UART_IMR_TXLEV = common dso_local global i64 0, align 8
@UART_IMR = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca %struct.msm_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %10)
  store %struct.msm_port* %11, %struct.msm_port** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @UART_TF, align 4
  %22 = call i32 @msm_write(%struct.uart_port* %17, i64 %20, i32 %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %16, %1
  br label %31

31:                                               ; preds = %55, %30
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = load i32, i32* @UART_SR, align 4
  %34 = call i32 @msm_read(%struct.uart_port* %32, i32 %33)
  %35 = load i32, i32* @UART_SR_TX_READY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %31
  %39 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %40 = call i64 @uart_circ_empty(%struct.circ_buf* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i64, i64* @UART_IMR_TXLEV, align 8
  %44 = xor i64 %43, -1
  %45 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %46 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = and i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %51 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @UART_IMR, align 4
  %54 = call i32 @msm_write(%struct.uart_port* %49, i64 %52, i32 %53)
  br label %82

55:                                               ; preds = %38
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %58 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @UART_TF, align 4
  %66 = call i32 @msm_write(%struct.uart_port* %56, i64 %64, i32 %65)
  %67 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = load i32, i32* @UART_XMIT_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = and i64 %70, %73
  %75 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %76 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  store i32 1, i32* %5, align 4
  br label %31

82:                                               ; preds = %42, %31
  %83 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %84 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %83)
  %85 = load i64, i64* @WAKEUP_CHARS, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %89 = call i32 @uart_write_wakeup(%struct.uart_port* %88)
  br label %90

90:                                               ; preds = %87, %82
  ret void
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
