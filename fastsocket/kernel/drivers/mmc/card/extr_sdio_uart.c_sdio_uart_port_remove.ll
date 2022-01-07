; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_port_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i64, i32, i32, i64, i32, %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@sdio_uart_table = common dso_local global %struct.sdio_uart_port** null, align 8
@sdio_uart_table_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_uart_port*)* @sdio_uart_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_port_remove(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca %struct.sdio_uart_port*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %2, align 8
  %4 = load %struct.sdio_uart_port**, %struct.sdio_uart_port*** @sdio_uart_table, align 8
  %5 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, i64 %7
  %9 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  %10 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %11 = icmp ne %struct.sdio_uart_port* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = call i32 @spin_lock(i32* @sdio_uart_table_lock)
  %15 = load %struct.sdio_uart_port**, %struct.sdio_uart_port*** @sdio_uart_table, align 8
  %16 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.sdio_uart_port*, %struct.sdio_uart_port** %15, i64 %18
  store %struct.sdio_uart_port* null, %struct.sdio_uart_port** %19, align 8
  %20 = call i32 @spin_unlock(i32* @sdio_uart_table_lock)
  %21 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %25 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %24, i32 0, i32 4
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %27, i32 0, i32 5
  %29 = load %struct.sdio_func*, %struct.sdio_func** %28, align 8
  store %struct.sdio_func* %29, %struct.sdio_func** %3, align 8
  %30 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %31 = call i32 @sdio_claim_host(%struct.sdio_func* %30)
  %32 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %33 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %32, i32 0, i32 5
  store %struct.sdio_func* null, %struct.sdio_func** %33, align 8
  %34 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %34, i32 0, i32 4
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @tty_hangup(i32 %44)
  br label %46

46:                                               ; preds = %41, %1
  %47 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %48 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %51 = call i32 @sdio_release_irq(%struct.sdio_func* %50)
  %52 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %53 = call i32 @sdio_disable_func(%struct.sdio_func* %52)
  %54 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %55 = call i32 @sdio_release_host(%struct.sdio_func* %54)
  %56 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %57 = call i32 @sdio_uart_port_put(%struct.sdio_uart_port* %56)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_hangup(i32) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_uart_port_put(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
