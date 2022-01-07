; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_add_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@sdio_uart_table_lock = common dso_local global i32 0, align 4
@UART_NR = common dso_local global i32 0, align 4
@sdio_uart_table = common dso_local global %struct.sdio_uart_port** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_uart_port*)* @sdio_uart_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_add_port(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca %struct.sdio_uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %2, align 8
  %5 = load i32, i32* @EBUSY, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %7, i32 0, i32 4
  %9 = call i32 @kref_init(i32* %8)
  %10 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %10, i32 0, i32 3
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %13, i32 0, i32 2
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = call i32 @spin_lock(i32* @sdio_uart_table_lock)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %41, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UART_NR, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load %struct.sdio_uart_port**, %struct.sdio_uart_port*** @sdio_uart_table, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sdio_uart_port*, %struct.sdio_uart_port** %25, i64 %27
  %29 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %28, align 8
  %30 = icmp ne %struct.sdio_uart_port* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %36 = load %struct.sdio_uart_port**, %struct.sdio_uart_port*** @sdio_uart_table, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sdio_uart_port*, %struct.sdio_uart_port** %36, i64 %38
  store %struct.sdio_uart_port* %35, %struct.sdio_uart_port** %39, align 8
  store i32 0, i32* %4, align 4
  br label %44

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %20

44:                                               ; preds = %31, %20
  %45 = call i32 @spin_unlock(i32* @sdio_uart_table_lock)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
