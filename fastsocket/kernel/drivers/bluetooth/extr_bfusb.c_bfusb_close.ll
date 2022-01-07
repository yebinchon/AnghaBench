; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.bfusb_data* }
%struct.bfusb_data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"hdev %p bfusb %p\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @bfusb_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_close(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.bfusb_data*, align 8
  %5 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 1
  %8 = load %struct.bfusb_data*, %struct.bfusb_data** %7, align 8
  store %struct.bfusb_data* %8, %struct.bfusb_data** %4, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %9, %struct.bfusb_data* %10)
  %12 = load i32, i32* @HCI_RUNNING, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = call i32 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %20 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @write_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %24 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @write_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %28 = call i32 @bfusb_unlink_urbs(%struct.bfusb_data* %27)
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = call i32 @bfusb_flush(%struct.hci_dev* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %18, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, %struct.bfusb_data*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfusb_unlink_urbs(%struct.bfusb_data*) #1

declare dso_local i32 @bfusb_flush(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
