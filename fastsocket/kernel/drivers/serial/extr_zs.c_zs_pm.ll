; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_pm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.zs_port = type { i32* }

@TxENAB = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @zs_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_pm(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zs_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %9 = call %struct.zs_port* @to_zport(%struct.uart_port* %8)
  store %struct.zs_port* %9, %struct.zs_port** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* @TxENAB, align 4
  %14 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %15 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 5
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %13
  store i32 %19, i32* %17, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load i32, i32* @TxENAB, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %24 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %22
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %20, %12
  %30 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %31 = load i32, i32* @R5, align 4
  %32 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %33 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @write_zsreg(%struct.zs_port* %30, i32 %31, i32 %36)
  ret void
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

declare dso_local i32 @write_zsreg(%struct.zs_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
