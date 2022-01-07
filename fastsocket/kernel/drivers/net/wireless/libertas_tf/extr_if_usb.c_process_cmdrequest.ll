; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_process_cmdrequest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_process_cmdrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.if_usb_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lbtf_private = type { i32, i32 }

@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"The receive buffer is too large\0A\00", align 1
@MESSAGE_HEADER_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbtf_private*)* @process_cmdrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_cmdrequest(i32 %0, i32* %1, %struct.sk_buff* %2, %struct.if_usb_card* %3, %struct.lbtf_private* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.if_usb_card*, align 8
  %10 = alloca %struct.lbtf_private*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.if_usb_card* %3, %struct.if_usb_card** %9, align 8
  store %struct.lbtf_private* %4, %struct.lbtf_private** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %16 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @lbtf_deb_usbd(i32* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call i32 @kfree_skb(%struct.sk_buff* %20)
  br label %49

22:                                               ; preds = %5
  %23 = call i32 (...) @in_interrupt()
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.lbtf_private*, %struct.lbtf_private** %10, align 8
  %29 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.lbtf_private*, %struct.lbtf_private** %10, align 8
  %32 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @MESSAGE_HEADER_LEN, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MESSAGE_HEADER_LEN, align 4
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @memcpy(i32 %33, i32* %37, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  %44 = load %struct.lbtf_private*, %struct.lbtf_private** %10, align 8
  %45 = call i32 @lbtf_cmd_response_rx(%struct.lbtf_private* %44)
  %46 = load %struct.lbtf_private*, %struct.lbtf_private** %10, align 8
  %47 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbtf_cmd_response_rx(%struct.lbtf_private*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
