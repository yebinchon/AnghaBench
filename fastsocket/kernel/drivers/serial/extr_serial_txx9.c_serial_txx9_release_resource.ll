; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_serial_txx9_release_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_serial_txx9_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_txx9_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@TXX9_REGION_SIZE = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_txx9_port*)* @serial_txx9_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_txx9_release_resource(%struct.uart_txx9_port* %0) #0 {
  %2 = alloca %struct.uart_txx9_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_txx9_port* %0, %struct.uart_txx9_port** %2, align 8
  %4 = load i32, i32* @TXX9_REGION_SIZE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %9 [
    i32 128, label %40
  ]

9:                                                ; preds = %1
  %10 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %47

16:                                               ; preds = %9
  %17 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UPF_IOREMAP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @iounmap(i32* %28)
  %30 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %24, %16
  %34 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @release_mem_region(i32 %37, i32 %38)
  br label %47

40:                                               ; preds = %1
  %41 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @release_region(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %33, %15
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
