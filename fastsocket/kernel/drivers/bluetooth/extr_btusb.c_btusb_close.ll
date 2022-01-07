; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, %struct.btusb_data* }
%struct.btusb_data = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@BTUSB_ISOC_RUNNING = common dso_local global i32 0, align 4
@BTUSB_BULK_RUNNING = common dso_local global i32 0, align 4
@BTUSB_INTR_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btusb_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_close(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btusb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 2
  %8 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  store %struct.btusb_data* %8, %struct.btusb_data** %4, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @HCI_RUNNING, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = call i32 @test_and_clear_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

19:                                               ; preds = %1
  %20 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %21 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %20, i32 0, i32 4
  %22 = call i32 @cancel_work_sync(i32* %21)
  %23 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %24 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %23, i32 0, i32 3
  %25 = call i32 @cancel_work_sync(i32* %24)
  %26 = load i32, i32* @BTUSB_ISOC_RUNNING, align 4
  %27 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %28 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %27, i32 0, i32 2
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load i32, i32* @BTUSB_BULK_RUNNING, align 4
  %31 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %32 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %31, i32 0, i32 2
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load i32, i32* @BTUSB_INTR_RUNNING, align 4
  %35 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %36 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %35, i32 0, i32 2
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %39 = call i32 @btusb_stop_traffic(%struct.btusb_data* %38)
  %40 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %41 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 @usb_autopm_get_interface(%struct.TYPE_3__* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %19
  br label %56

47:                                               ; preds = %19
  %48 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %49 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %53 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %54)
  br label %56

56:                                               ; preds = %47, %46
  %57 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %58 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %57, i32 0, i32 0
  %59 = call i32 @usb_scuttle_anchored_urbs(i32* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @btusb_stop_traffic(%struct.btusb_data*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_scuttle_anchored_urbs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
