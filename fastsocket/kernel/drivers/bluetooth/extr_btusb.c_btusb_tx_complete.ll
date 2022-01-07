; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_tx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.hci_dev = type { %struct.TYPE_2__, i32, i32, %struct.btusb_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.btusb_data = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s urb %p status %d count %d\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @btusb_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_tx_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.btusb_data*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hci_dev*
  store %struct.hci_dev* %12, %struct.hci_dev** %4, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 3
  %15 = load %struct.btusb_data*, %struct.btusb_data** %14, align 8
  store %struct.btusb_data* %15, %struct.btusb_data** %5, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, %struct.urb* %19, i32 %22, i32 %25)
  %27 = load i32, i32* @HCI_RUNNING, align 4
  %28 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 1
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  br label %56

33:                                               ; preds = %1
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %41
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  br label %55

49:                                               ; preds = %33
  %50 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %38
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %58 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %61 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.btusb_data*, %struct.btusb_data** %5, align 8
  %65 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.urb*, %struct.urb** %2, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @kfree(i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.urb*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
