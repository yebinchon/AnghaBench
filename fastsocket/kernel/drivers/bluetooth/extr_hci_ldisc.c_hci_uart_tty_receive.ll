; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.hci_uart = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32, %struct.tty_struct* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.hci_uart*, i8*, i32)* }

@HCI_UART_PROTO_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32*, i8*, i32)* @hci_uart_tty_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_uart_tty_receive(%struct.tty_struct* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hci_uart*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hci_uart*
  store %struct.hci_uart* %14, %struct.hci_uart** %9, align 8
  %15 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %16 = icmp ne %struct.hci_uart* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %19 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %20 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %19, i32 0, i32 4
  %21 = load %struct.tty_struct*, %struct.tty_struct** %20, align 8
  %22 = icmp ne %struct.tty_struct* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  br label %58

24:                                               ; preds = %17
  %25 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %26 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %27 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %26, i32 0, i32 3
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %58

31:                                               ; preds = %24
  %32 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %33 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %36 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.hci_uart*, i8*, i32)*, i32 (%struct.hci_uart*, i8*, i32)** %38, align 8
  %40 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32, i32* %8, align 4
  %44 = call i32 %39(%struct.hci_uart* %40, i8* %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %47 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %45
  store i32 %52, i32* %50, align 4
  %53 = load %struct.hci_uart*, %struct.hci_uart** %9, align 8
  %54 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %57 = call i32 @tty_unthrottle(%struct.tty_struct* %56)
  br label %58

58:                                               ; preds = %31, %30, %23
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_unthrottle(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
