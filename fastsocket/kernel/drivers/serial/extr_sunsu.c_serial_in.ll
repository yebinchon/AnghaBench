; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_serial_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_serial_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_sunsu_port*, i32)* @serial_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_in(%struct.uart_sunsu_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_sunsu_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_sunsu_port* %0, %struct.uart_sunsu_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %7 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %43 [
    i32 129, label %16
    i32 128, label %35
  ]

16:                                               ; preds = %2
  %17 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @outb(i32 %23, i32 %27)
  %29 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %30 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @inb(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %51

35:                                               ; preds = %2
  %36 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %37 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @readb(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %2
  %44 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %45 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @inb(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %35, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
