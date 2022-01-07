; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_tx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_tx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { %struct.TYPE_5__*, %struct.uart_port }
%struct.TYPE_5__ = type { i32 }
%struct.uart_port = type { %struct.TYPE_6__, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@S3C2410_UTXH = common dso_local global i32 0, align 4
@S3C2410_UFSTAT = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c24xx_serial_tx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_tx_chars(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c24xx_uart_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.circ_buf*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.s3c24xx_uart_port*
  store %struct.s3c24xx_uart_port* %10, %struct.s3c24xx_uart_port** %5, align 8
  %11 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %12 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %11, i32 0, i32 1
  store %struct.uart_port* %12, %struct.uart_port** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.circ_buf* %16, %struct.circ_buf** %7, align 8
  store i32 256, i32* %8, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %23 = load i32, i32* @S3C2410_UTXH, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @wr_regb(%struct.uart_port* %22, i32 %23, i64 %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %112

35:                                               ; preds = %2
  %36 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %37 = call i64 @uart_circ_empty(%struct.circ_buf* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %41 = call i64 @uart_tx_stopped(%struct.uart_port* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %35
  %44 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %45 = call i32 @s3c24xx_serial_stop_tx(%struct.uart_port* %44)
  br label %112

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %69, %46
  %48 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %49 = call i64 @uart_circ_empty(%struct.circ_buf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = icmp sgt i32 %52, 0
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  br i1 %56, label %57, label %96

57:                                               ; preds = %55
  %58 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %59 = load i32, i32* @S3C2410_UFSTAT, align 4
  %60 = call i32 @rd_regl(%struct.uart_port* %58, i32 %59)
  %61 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %62 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %96

69:                                               ; preds = %57
  %70 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %71 = load i32, i32* @S3C2410_UTXH, align 4
  %72 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %73 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %76 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @wr_regb(%struct.uart_port* %70, i32 %71, i64 %79)
  %81 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %82 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  %85 = load i32, i32* @UART_XMIT_SIZE, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = and i64 %84, %87
  %89 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %90 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %47

96:                                               ; preds = %68, %55
  %97 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %98 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %97)
  %99 = load i64, i64* @WAKEUP_CHARS, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %103 = call i32 @uart_write_wakeup(%struct.uart_port* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %106 = call i64 @uart_circ_empty(%struct.circ_buf* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %110 = call i32 @s3c24xx_serial_stop_tx(%struct.uart_port* %109)
  br label %111

111:                                              ; preds = %108, %104
  br label %112

112:                                              ; preds = %111, %43, %21
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %113
}

declare dso_local i32 @wr_regb(%struct.uart_port*, i32, i64) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @s3c24xx_serial_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
