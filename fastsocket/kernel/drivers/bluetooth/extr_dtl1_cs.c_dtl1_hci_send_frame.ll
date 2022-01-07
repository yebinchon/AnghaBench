; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_hci_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_hci_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.hci_dev = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Frame for unknown HCI device (hdev=NULL)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@NSHL = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dtl1_hci_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtl1_hci_send_frame(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hci_dev*
  store %struct.hci_dev* %11, %struct.hci_dev** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %13 = icmp ne %struct.hci_dev* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %107

18:                                               ; preds = %1
  %19 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %4, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call %struct.TYPE_10__* @bt_cb(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %48 [
    i32 129, label %27
    i32 130, label %34
    i32 128, label %41
  ]

27:                                               ; preds = %18
  %28 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 129, i32* %33, align 8
  br label %51

34:                                               ; preds = %18
  %35 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 130, i32* %40, align 8
  br label %51

41:                                               ; preds = %18
  %42 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 131, i32* %47, align 8
  br label %51

48:                                               ; preds = %18
  %49 = load i32, i32* @EILSEQ, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %107

51:                                               ; preds = %41, %34, %27
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load i64, i64* @NSHL, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = add nsw i64 %62, 1
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.sk_buff* @bt_skb_alloc(i64 %63, i32 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = icmp ne %struct.sk_buff* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %51
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %107

71:                                               ; preds = %51
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load i64, i64* @NSHL, align 8
  %74 = call i32 @skb_reserve(%struct.sk_buff* %72, i64 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64* @skb_put(%struct.sk_buff* %76, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %75, i64* %80, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %71
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i64* @skb_put(%struct.sk_buff* %91, i32 1)
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %71
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i64, i64* @NSHL, align 8
  %96 = call i32 @skb_push(%struct.sk_buff* %94, i64 %95)
  %97 = load i64, i64* @NSHL, align 8
  %98 = call i32 @memcpy(i32 %96, %struct.TYPE_8__* %7, i64 %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call i32 @skb_queue_tail(i32* %100, %struct.sk_buff* %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = call i32 @dtl1_write_wakeup(%struct.TYPE_9__* %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = call i32 @kfree_skb(%struct.sk_buff* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %93, %68, %48, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local %struct.TYPE_10__* @bt_cb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64*, i32) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dtl1_write_wakeup(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
