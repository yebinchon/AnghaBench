; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_register_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.hci_uart*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_UART = common dso_local global i32 0, align 4
@hci_uart_open = common dso_local global i32 0, align 4
@hci_uart_close = common dso_local global i32 0, align 4
@hci_uart_flush = common dso_local global i32 0, align 4
@hci_uart_send_frame = common dso_local global i32 0, align 4
@hci_uart_destruct = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@HCI_QUIRK_NO_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @hci_uart_register_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_register_dev(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %6, %struct.hci_dev** %4, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = icmp ne %struct.hci_dev* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 0
  store %struct.hci_dev* %14, %struct.hci_dev** %16, align 8
  %17 = load i32, i32* @HCI_UART, align 4
  %18 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %21 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 7
  store %struct.hci_uart* %20, %struct.hci_uart** %22, align 8
  %23 = load i32, i32* @hci_uart_open, align 4
  %24 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @hci_uart_close, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @hci_uart_flush, align 4
  %30 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @hci_uart_send_frame, align 4
  %33 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @hci_uart_destruct, align 4
  %36 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @reset, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %13
  %44 = load i32, i32* @HCI_QUIRK_NO_RESET, align 4
  %45 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 0
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %13
  %49 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %50 = call i64 @hci_register_dev(%struct.hci_dev* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %55 = call i32 @hci_free_dev(%struct.hci_dev* %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %52, %9
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
