; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_check_evtpkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_check_evtpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_event_hdr = type { i64 }
%struct.hci_ev_cmd_complete = type { i32 }

@HCI_EV_CMD_COMPLETE = common dso_local global i64 0, align 8
@HCI_EVENT_HDR_SIZE = common dso_local global i64 0, align 8
@BT_CMD_MODULE_CFG_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btmrvl_check_evtpkt(%struct.btmrvl_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_event_hdr*, align 8
  %6 = alloca %struct.hci_ev_cmd_complete*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %13, %struct.hci_event_hdr** %5, align 8
  %14 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HCI_EV_CMD_COMPLETE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HCI_EVENT_HDR_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.hci_ev_cmd_complete*
  store %struct.hci_ev_cmd_complete* %26, %struct.hci_ev_cmd_complete** %6, align 8
  %27 = load %struct.hci_ev_cmd_complete*, %struct.hci_ev_cmd_complete** %6, align 8
  %28 = getelementptr inbounds %struct.hci_ev_cmd_complete, %struct.hci_ev_cmd_complete* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @__le16_to_cpu(i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @hci_opcode_ocf(i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @BT_CMD_MODULE_CFG_REQ, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %19
  %37 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %38 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %44 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %47 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %51 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @wake_up_interruptible(i32* %53)
  br label %55

55:                                               ; preds = %42, %36, %19
  br label %56

56:                                               ; preds = %55, %2
  ret void
}

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i64 @hci_opcode_ocf(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
