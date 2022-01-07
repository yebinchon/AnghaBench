; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_release_std_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_release_std_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@UPF_IOREMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @serial8250_release_std_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_release_std_resource(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %4 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %5 = call i32 @serial8250_port_size(%struct.uart_8250_port* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %48 [
    i32 134, label %10
    i32 128, label %10
    i32 130, label %10
    i32 131, label %10
    i32 133, label %10
    i32 132, label %41
    i32 129, label %41
  ]

10:                                               ; preds = %1, %1, %1, %1, %1
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %48

17:                                               ; preds = %10
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UPF_IOREMAP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @iounmap(i32* %29)
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %25, %17
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @release_mem_region(i32 %38, i32 %39)
  br label %48

41:                                               ; preds = %1, %1
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @release_region(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %1, %41, %34, %16
  ret void
}

declare dso_local i32 @serial8250_port_size(%struct.uart_8250_port*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
