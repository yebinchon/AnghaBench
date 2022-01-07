; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_raw_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_raw_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zs_port*)* @zs_raw_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_raw_transmit_chars(%struct.zs_port* %0) #0 {
  %2 = alloca %struct.zs_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.zs_port* %0, %struct.zs_port** %2, align 8
  %4 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %5 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %10 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %16 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %17 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @write_zsdata(%struct.zs_port* %15, i64 %19)
  %21 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %22 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %28 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %84

30:                                               ; preds = %1
  %31 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %32 = call i64 @uart_circ_empty(%struct.circ_buf* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %36 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %35, i32 0, i32 0
  %37 = call i64 @uart_tx_stopped(%struct.TYPE_7__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %30
  %40 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %41 = call i32 @zs_raw_stop_tx(%struct.zs_port* %40)
  br label %84

42:                                               ; preds = %34
  %43 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %44 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %45 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %48 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @write_zsdata(%struct.zs_port* %43, i64 %51)
  %53 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  %57 = load i32, i32* @UART_XMIT_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = and i64 %56, %59
  %61 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %62 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %64 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %70 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %69)
  %71 = load i64, i64* @WAKEUP_CHARS, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %42
  %74 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %75 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %74, i32 0, i32 0
  %76 = call i32 @uart_write_wakeup(%struct.TYPE_7__* %75)
  br label %77

77:                                               ; preds = %73, %42
  %78 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %79 = call i64 @uart_circ_empty(%struct.circ_buf* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %83 = call i32 @zs_raw_stop_tx(%struct.zs_port* %82)
  br label %84

84:                                               ; preds = %14, %39, %81, %77
  ret void
}

declare dso_local i32 @write_zsdata(%struct.zs_port*, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_7__*) #1

declare dso_local i32 @zs_raw_stop_tx(%struct.zs_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
