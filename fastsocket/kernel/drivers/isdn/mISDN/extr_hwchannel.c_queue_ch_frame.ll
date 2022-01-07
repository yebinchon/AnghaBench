; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_hwchannel.c_queue_ch_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_hwchannel.c_queue_ch_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mISDNchannel = type { i64, i32 (i64, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.mISDNhead = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_ch_frame(%struct.mISDNchannel* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.mISDNchannel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.mISDNhead*, align 8
  store %struct.mISDNchannel* %0, %struct.mISDNchannel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = load %struct.mISDNchannel*, %struct.mISDNchannel** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i32 @_queue_data(%struct.mISDNchannel* %13, i32 %14, i32 %15, i32 0, i32* null, i32 %16)
  br label %46

18:                                               ; preds = %4
  %19 = load %struct.mISDNchannel*, %struct.mISDNchannel** %5, align 8
  %20 = getelementptr inbounds %struct.mISDNchannel, %struct.mISDNchannel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call %struct.mISDNhead* @mISDN_HEAD_P(%struct.sk_buff* %24)
  store %struct.mISDNhead* %25, %struct.mISDNhead** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mISDNhead*, %struct.mISDNhead** %9, align 8
  %28 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mISDNhead*, %struct.mISDNhead** %9, align 8
  %31 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mISDNchannel*, %struct.mISDNchannel** %5, align 8
  %33 = getelementptr inbounds %struct.mISDNchannel, %struct.mISDNchannel* %32, i32 0, i32 1
  %34 = load i32 (i64, %struct.sk_buff*)*, i32 (i64, %struct.sk_buff*)** %33, align 8
  %35 = load %struct.mISDNchannel*, %struct.mISDNchannel** %5, align 8
  %36 = getelementptr inbounds %struct.mISDNchannel, %struct.mISDNchannel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call i32 %34(i64 %37, %struct.sk_buff* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %23
  br label %46

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42, %18
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @dev_kfree_skb(%struct.sk_buff* %44)
  br label %46

46:                                               ; preds = %41, %43, %12
  ret void
}

declare dso_local i32 @_queue_data(%struct.mISDNchannel*, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.mISDNhead* @mISDN_HEAD_P(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
