; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.file = type { i32 }
%struct.hci_uart = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBADF = common dso_local global i32 0, align 4
@HCI_UART_PROTO_SET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i64)* @hci_uart_tty_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_tty_ioctl(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hci_uart*, align 8
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.hci_uart*
  store %struct.hci_uart* %16, %struct.hci_uart** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %19 = icmp ne %struct.hci_uart* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EBADF, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %86

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %78 [
    i32 128, label %25
    i32 129, label %48
    i32 130, label %63
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %27 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %28 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %27, i32 0, i32 1
  %29 = call i32 @test_and_set_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %25
  %32 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @hci_uart_set_proto(%struct.hci_uart* %32, i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %39 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %40 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %39, i32 0, i32 1
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %86

43:                                               ; preds = %31
  br label %47

44:                                               ; preds = %25
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %86

47:                                               ; preds = %43
  br label %84

48:                                               ; preds = %23
  %49 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %50 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %51 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %50, i32 0, i32 1
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %56 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %5, align 4
  br label %86

60:                                               ; preds = %48
  %61 = load i32, i32* @EUNATCH, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %86

63:                                               ; preds = %23
  %64 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %65 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %66 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %65, i32 0, i32 1
  %67 = call i32 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %71 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  br label %86

75:                                               ; preds = %63
  %76 = load i32, i32* @EUNATCH, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %86

78:                                               ; preds = %23
  %79 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %80 = load %struct.file*, %struct.file** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @n_tty_ioctl_helper(%struct.tty_struct* %79, %struct.file* %80, i32 %81, i64 %82)
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %78, %47
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %75, %69, %60, %54, %44, %37, %20
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hci_uart_set_proto(%struct.hci_uart*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @n_tty_ioctl_helper(%struct.tty_struct*, %struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
