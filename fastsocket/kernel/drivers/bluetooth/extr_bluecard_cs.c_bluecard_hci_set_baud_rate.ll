; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_hci_set_baud_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_hci_set_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }

@HCI_COMMAND_PKT = common dso_local global i32 0, align 4
@HCI_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't allocate mem for new packet\00", align 1
@PKT_BAUD_RATE_460800 = common dso_local global i32 0, align 4
@PKT_BAUD_RATE_230400 = common dso_local global i32 0, align 4
@PKT_BAUD_RATE_115200 = common dso_local global i32 0, align 4
@PKT_BAUD_RATE_57600 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @bluecard_hci_set_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluecard_hci_set_baud_rate(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [5 x i8], align 1
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %14 = load i32, i32* @HCI_COMMAND_PKT, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 9, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 -4, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 1, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 3, i8* %19, align 1
  %20 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @bt_skb_alloc(i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %7, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %64

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %47 [
    i32 460800, label %28
    i32 230400, label %34
    i32 115200, label %40
    i32 57600, label %46
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* @PKT_BAUD_RATE_460800, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = call %struct.TYPE_5__* @bt_cb(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %53

34:                                               ; preds = %26
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4
  store i8 1, i8* %35, align 1
  %36 = load i32, i32* @PKT_BAUD_RATE_230400, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call %struct.TYPE_5__* @bt_cb(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %53

40:                                               ; preds = %26
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4
  store i8 2, i8* %41, align 1
  %42 = load i32, i32* @PKT_BAUD_RATE_115200, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call %struct.TYPE_5__* @bt_cb(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %53

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %26, %46
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4
  store i8 3, i8* %48, align 1
  %49 = load i32, i32* @PKT_BAUD_RATE_57600, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call %struct.TYPE_5__* @bt_cb(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %40, %34, %28
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @skb_put(%struct.sk_buff* %54, i32 5)
  %56 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %57 = call i32 @memcpy(i32 %55, i8* %56, i32 5)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @skb_queue_tail(i32* %59, %struct.sk_buff* %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = call i32 @bluecard_write_wakeup(%struct.TYPE_4__* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %53, %24
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local %struct.TYPE_5__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @bluecard_write_wakeup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
