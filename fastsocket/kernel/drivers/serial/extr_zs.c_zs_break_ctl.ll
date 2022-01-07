; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_break_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.zs_port = type { i32*, %struct.zs_scc* }
%struct.zs_scc = type { i32 }

@SND_BRK = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @zs_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zs_port*, align 8
  %6 = alloca %struct.zs_scc*, align 8
  %7 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.zs_port* @to_zport(%struct.uart_port* %8)
  store %struct.zs_port* %9, %struct.zs_port** %5, align 8
  %10 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %11 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %10, i32 0, i32 1
  %12 = load %struct.zs_scc*, %struct.zs_scc** %11, align 8
  store %struct.zs_scc* %12, %struct.zs_scc** %6, align 8
  %13 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %14 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @SND_BRK, align 4
  %21 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %22 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @SND_BRK, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %31 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %29
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %27, %19
  %37 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %38 = load i32, i32* @R5, align 4
  %39 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %40 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @write_zsreg(%struct.zs_port* %37, i32 %38, i32 %43)
  %45 = load %struct.zs_scc*, %struct.zs_scc** %6, align 8
  %46 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %45, i32 0, i32 0
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_zsreg(%struct.zs_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
