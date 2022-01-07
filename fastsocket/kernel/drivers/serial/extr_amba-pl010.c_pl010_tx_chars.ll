; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_tx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@UART01x_DR = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_amba_port*)* @pl010_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl010_tx_chars(%struct.uart_amba_port* %0) #0 {
  %2 = alloca %struct.uart_amba_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_amba_port* %0, %struct.uart_amba_port** %2, align 8
  %5 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.circ_buf* %9, %struct.circ_buf** %3, align 8
  %10 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UART01x_DR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i64 %19, i64 %25)
  %27 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  br label %113

36:                                               ; preds = %1
  %37 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %38 = call i64 @uart_circ_empty(%struct.circ_buf* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %41, i32 0, i32 0
  %43 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %36
  %46 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %46, i32 0, i32 0
  %48 = call i32 @pl010_stop_tx(%struct.TYPE_8__* %47)
  br label %113

49:                                               ; preds = %40
  %50 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %92, %49
  %56 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %60 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %65 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UART01x_DR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i64 %63, i64 %69)
  %71 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  %75 = load i32, i32* @UART_XMIT_SIZE, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = and i64 %74, %77
  %79 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %80 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %82 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %88 = call i64 @uart_circ_empty(%struct.circ_buf* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %55
  br label %96

91:                                               ; preds = %55
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %4, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %55, label %96

96:                                               ; preds = %92, %90
  %97 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %98 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %97)
  %99 = load i64, i64* @WAKEUP_CHARS, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %103 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %102, i32 0, i32 0
  %104 = call i32 @uart_write_wakeup(%struct.TYPE_8__* %103)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %107 = call i64 @uart_circ_empty(%struct.circ_buf* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %111 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %110, i32 0, i32 0
  %112 = call i32 @pl010_stop_tx(%struct.TYPE_8__* %111)
  br label %113

113:                                              ; preds = %15, %45, %109, %105
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i32 @pl010_stop_tx(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
