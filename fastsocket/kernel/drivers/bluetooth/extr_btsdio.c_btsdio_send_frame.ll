; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.hci_dev = type { %struct.TYPE_3__, i32, i32, %struct.btsdio_data* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.btsdio_data = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @btsdio_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btsdio_send_frame(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.btsdio_data*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.hci_dev*
  store %struct.hci_dev* %9, %struct.hci_dev** %4, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 3
  %12 = load %struct.btsdio_data*, %struct.btsdio_data** %11, align 8
  store %struct.btsdio_data* %12, %struct.btsdio_data** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @HCI_RUNNING, align 4
  %18 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 1
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %48 [
    i32 129, label %30
    i32 130, label %36
    i32 128, label %42
  ]

30:                                               ; preds = %25
  %31 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %51

36:                                               ; preds = %25
  %37 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %51

42:                                               ; preds = %25
  %43 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %51

48:                                               ; preds = %25
  %49 = load i32, i32* @EILSEQ, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %59

51:                                               ; preds = %42, %36, %30
  %52 = load %struct.btsdio_data*, %struct.btsdio_data** %5, align 8
  %53 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %52, i32 0, i32 1
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @skb_queue_tail(i32* %53, %struct.sk_buff* %54)
  %56 = load %struct.btsdio_data*, %struct.btsdio_data** %5, align 8
  %57 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %56, i32 0, i32 0
  %58 = call i32 @schedule_work(i32* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %51, %48, %22
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
