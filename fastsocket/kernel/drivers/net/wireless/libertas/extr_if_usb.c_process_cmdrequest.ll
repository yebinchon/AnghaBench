; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_process_cmdrequest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_process_cmdrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.if_usb_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lbs_private = type { i64, i32*, i32, i32* }

@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"The receive buffer is too large\0A\00", align 1
@MESSAGE_HEADER_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Wake up main thread to handle cmd response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbs_private*)* @process_cmdrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_cmdrequest(i32 %0, i32* %1, %struct.sk_buff* %2, %struct.if_usb_card* %3, %struct.lbs_private* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.if_usb_card*, align 8
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.if_usb_card* %3, %struct.if_usb_card** %9, align 8
  store %struct.lbs_private* %4, %struct.lbs_private** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %17 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @lbs_deb_usbd(i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call i32 @kfree_skb(%struct.sk_buff* %21)
  br label %84

23:                                               ; preds = %5
  %24 = call i32 (...) @in_interrupt()
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 2
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %11, align 8
  %39 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MESSAGE_HEADER_LEN, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %50 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @MESSAGE_HEADER_LEN, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %59, i32* %63, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  %73 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @lbs_notify_command_response(%struct.lbs_private* %73, i64 %74)
  %76 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  %80 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @lbs_deb_usbd(i32* %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @lbs_deb_usbd(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbs_notify_command_response(%struct.lbs_private*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
