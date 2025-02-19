; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.zs_port = type { %struct.TYPE_2__, i32*, %struct.zs_scc* }
%struct.TYPE_2__ = type { i32 }
%struct.zs_scc = type { i32, i32 }

@RxENABLE = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @zs_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.zs_port*, align 8
  %4 = alloca %struct.zs_scc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.zs_port* @to_zport(%struct.uart_port* %7)
  store %struct.zs_port* %8, %struct.zs_port** %3, align 8
  %9 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %10 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %9, i32 0, i32 2
  %11 = load %struct.zs_scc*, %struct.zs_scc** %10, align 8
  store %struct.zs_scc* %11, %struct.zs_scc** %4, align 8
  %12 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %13 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %12, i32 0, i32 1
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @RxENABLE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %19 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %25 = load i32, i32* @R5, align 4
  %26 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %27 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @write_zsreg(%struct.zs_port* %24, i32 %25, i32 %30)
  %32 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %33 = load i32, i32* @R3, align 4
  %34 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %35 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_zsreg(%struct.zs_port* %32, i32 %33, i32 %38)
  %40 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %41 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %40, i32 0, i32 1
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %45 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %44, i32 0, i32 0
  %46 = call i32 @atomic_add_return(i32 -1, i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %1
  %50 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %51 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %55 = call i32 @free_irq(i32 %53, %struct.zs_scc* %54)
  br label %56

56:                                               ; preds = %49, %1
  ret void
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_zsreg(%struct.zs_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.zs_scc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
