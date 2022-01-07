; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }
%struct.uart_ip22zilog_port = type { i32, i32 }
%struct.zilog_channel = type { i32, i32 }

@IP22ZILOG_FLAG_TX_ACTIVE = common dso_local global i32 0, align 4
@IP22ZILOG_FLAG_TX_STOPPED = common dso_local global i32 0, align 4
@Tx_BUF_EMP = common dso_local global i8 0, align 1
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @ip22zilog_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_ip22zilog_port*, align 8
  %4 = alloca %struct.zilog_channel*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.uart_ip22zilog_port*
  store %struct.uart_ip22zilog_port* %8, %struct.uart_ip22zilog_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port* %9)
  store %struct.zilog_channel* %10, %struct.zilog_channel** %4, align 8
  %11 = load i32, i32* @IP22ZILOG_FLAG_TX_ACTIVE, align 4
  %12 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @IP22ZILOG_FLAG_TX_STOPPED, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %23 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %22, i32 0, i32 1
  %24 = call zeroext i8 @readb(i32* %23)
  store i8 %24, i8* %5, align 1
  %25 = call i32 (...) @ZSDELAY()
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @Tx_BUF_EMP, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  br label %98

33:                                               ; preds = %1
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %43 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %42, i32 0, i32 0
  %44 = call i32 @writeb(i64 %41, i32* %43)
  %45 = call i32 (...) @ZSDELAY()
  %46 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %47 = call i32 @ZS_WSYNC(%struct.zilog_channel* %46)
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  br label %98

55:                                               ; preds = %33
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store %struct.circ_buf* %59, %struct.circ_buf** %6, align 8
  %60 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %69 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %68, i32 0, i32 0
  %70 = call i32 @writeb(i64 %67, i32* %69)
  %71 = call i32 (...) @ZSDELAY()
  %72 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %73 = call i32 @ZS_WSYNC(%struct.zilog_channel* %72)
  %74 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %75 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  %78 = load i32, i32* @UART_XMIT_SIZE, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = and i64 %77, %80
  %82 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %83 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %85 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %90 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %89)
  %91 = load i64, i64* @WAKEUP_CHARS, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %55
  %94 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %95 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %94, i32 0, i32 0
  %96 = call i32 @uart_write_wakeup(i32* %95)
  br label %97

97:                                               ; preds = %93, %55
  br label %98

98:                                               ; preds = %32, %97, %38
  ret void
}

declare dso_local %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port*) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @ZSDELAY(...) #1

declare dso_local i32 @writeb(i64, i32*) #1

declare dso_local i32 @ZS_WSYNC(%struct.zilog_channel*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
