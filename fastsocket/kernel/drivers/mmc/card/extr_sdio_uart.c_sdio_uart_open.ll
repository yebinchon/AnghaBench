; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.sdio_uart_port*, i32 }
%struct.sdio_uart_port = type { i32, i32, %struct.tty_struct* }
%struct.file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @sdio_uart_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.sdio_uart_port*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.sdio_uart_port* @sdio_uart_port_get(i32 %10)
  store %struct.sdio_uart_port* %11, %struct.sdio_uart_port** %6, align 8
  %12 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %13 = icmp ne %struct.sdio_uart_port* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %19 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 0
  %23 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %22, align 8
  %24 = icmp ne %struct.sdio_uart_port* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 0
  %28 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %27, align 8
  %29 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %30 = icmp ne %struct.sdio_uart_port* %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %33 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %36 = call i32 @sdio_uart_port_put(%struct.sdio_uart_port* %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %75

39:                                               ; preds = %25, %17
  %40 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %41 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %39
  %45 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 0
  store %struct.sdio_uart_port* %45, %struct.sdio_uart_port** %47, align 8
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %50 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %49, i32 0, i32 2
  store %struct.tty_struct* %48, %struct.tty_struct** %50, align 8
  %51 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %52 = call i32 @sdio_uart_startup(%struct.sdio_uart_port* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 0
  store %struct.sdio_uart_port* null, %struct.sdio_uart_port** %57, align 8
  %58 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %59 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %58, i32 0, i32 2
  store %struct.tty_struct* null, %struct.tty_struct** %59, align 8
  %60 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %61 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %64 = call i32 @sdio_uart_port_put(%struct.sdio_uart_port* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %75

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66, %39
  %68 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %69 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %73 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %55, %31, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.sdio_uart_port* @sdio_uart_port_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sdio_uart_port_put(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_startup(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
