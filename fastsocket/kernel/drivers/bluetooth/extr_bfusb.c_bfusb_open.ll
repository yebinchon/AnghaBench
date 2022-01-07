; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.bfusb_data* }
%struct.bfusb_data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"hdev %p bfusb %p\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@BFUSB_MAX_BULK_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @bfusb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_open(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.bfusb_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 1
  %10 = load %struct.bfusb_data*, %struct.bfusb_data** %9, align 8
  store %struct.bfusb_data* %10, %struct.bfusb_data** %4, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %11, %struct.bfusb_data* %12)
  %14 = load i32, i32* @HCI_RUNNING, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = call i64 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

20:                                               ; preds = %1
  %21 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %22 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @write_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %26 = call i32 @bfusb_rx_submit(%struct.bfusb_data* %25, i32* null)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %37, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BFUSB_MAX_BULK_RX, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %36 = call i32 @bfusb_rx_submit(%struct.bfusb_data* %35, i32* null)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %30

40:                                               ; preds = %30
  br label %46

41:                                               ; preds = %20
  %42 = load i32, i32* @HCI_RUNNING, align 4
  %43 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 0
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %41, %40
  %47 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %48 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @write_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, %struct.bfusb_data*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfusb_rx_submit(%struct.bfusb_data*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
