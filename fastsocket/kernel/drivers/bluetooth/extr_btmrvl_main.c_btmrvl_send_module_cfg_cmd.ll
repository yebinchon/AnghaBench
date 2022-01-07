; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_send_module_cfg_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_send_module_cfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i8* }
%struct.btmrvl_cmd = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"No free skb\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OGF = common dso_local global i32 0, align 4
@BT_CMD_MODULE_CFG_REQ = common dso_local global i32 0, align 4
@MRVL_VENDOR_PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Queue module cfg Command\00", align 1
@WAIT_UNTIL_CMD_RESP = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"module_cfg_cmd(%x): timeout: %d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"module cfg Command done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btmrvl_send_module_cfg_cmd(%struct.btmrvl_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btmrvl_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.btmrvl_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.sk_buff* @bt_skb_alloc(i32 24, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = icmp eq %struct.sk_buff* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %89

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i64 @skb_put(%struct.sk_buff* %18, i32 24)
  %20 = inttoptr i64 %19 to %struct.btmrvl_cmd*
  store %struct.btmrvl_cmd* %20, %struct.btmrvl_cmd** %7, align 8
  %21 = load i32, i32* @OGF, align 4
  %22 = load i32, i32* @BT_CMD_MODULE_CFG_REQ, align 4
  %23 = call i32 @hci_opcode_pack(i32 %21, i32 %22)
  %24 = call i32 @cpu_to_le16(i32 %23)
  %25 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* @MRVL_VENDOR_PKT, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call %struct.TYPE_8__* @bt_cb(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %39 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %46 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @skb_queue_head(i32* %48, %struct.sk_buff* %49)
  %51 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %52 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %55 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %60 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @wake_up_interruptible(i32* %61)
  %63 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %64 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %69 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @WAIT_UNTIL_CMD_RESP, align 4
  %74 = call i32 @msecs_to_jiffies(i32 %73)
  %75 = call i32 @wait_event_interruptible_timeout(i32 %67, i32 %72, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %17
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %82 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %77, %17
  %87 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_opcode_pack(i32, i32) #1

declare dso_local %struct.TYPE_8__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
