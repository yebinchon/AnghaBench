; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.sdio_uart_port* }
%struct.sdio_uart_port = type { i32, i32, i32, %struct.circ_buf }
%struct.circ_buf = type { i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @sdio_uart_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdio_uart_port*, align 8
  %9 = alloca %struct.circ_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %14, align 8
  store %struct.sdio_uart_port* %15, %struct.sdio_uart_port** %8, align 8
  %16 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %17 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %16, i32 0, i32 3
  store %struct.circ_buf* %17, %struct.circ_buf** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %19 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %108

25:                                               ; preds = %3
  %26 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %27 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  br label %29

29:                                               ; preds = %25, %47
  %30 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %31 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %34 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @UART_XMIT_SIZE, align 4
  %37 = call i32 @CIRC_SPACE_TO_END(i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i32, i32* %10, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %79

47:                                               ; preds = %43
  %48 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %49 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %52 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @memcpy(i64 %55, i8* %56, i32 %57)
  %59 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %60 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @UART_XMIT_SIZE, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %63, %65
  %67 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %29

79:                                               ; preds = %46
  %80 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %81 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %84 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @UART_IER_THRI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %79
  %90 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %91 = call i32 @sdio_uart_claim_func(%struct.sdio_uart_port* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %96 = call i32 @sdio_uart_start_tx(%struct.sdio_uart_port* %95)
  %97 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %98 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sdio_uart_irq(i32 %99)
  %101 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %102 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %101)
  br label %105

103:                                              ; preds = %89
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %103, %94
  br label %106

106:                                              ; preds = %105, %79
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %22
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @CIRC_SPACE_TO_END(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_start_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_irq(i32) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
