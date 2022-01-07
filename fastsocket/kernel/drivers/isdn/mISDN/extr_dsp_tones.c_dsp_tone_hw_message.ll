; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_tones.c_dsp_tone_hw_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_tones.c_dsp_tone_hw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 (i64, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }

@PH_CONTROL_REQ = common dso_local global i32 0, align 4
@HFC_SPL_LOOP_ON = common dso_local global i32 0, align 4
@HFC_SPL_LOOP_OFF = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsp*, i32*, i32)* @dsp_tone_hw_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsp_tone_hw_message(%struct.dsp* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.dsp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.dsp* %0, %struct.dsp** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @PH_CONTROL_REQ, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @HFC_SPL_LOOP_ON, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @HFC_SPL_LOOP_OFF, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @_alloc_mISDN_skb(i32 %8, i32 %16, i32 %17, i32* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %15
  %24 = load %struct.dsp*, %struct.dsp** %4, align 8
  %25 = getelementptr inbounds %struct.dsp, %struct.dsp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.dsp*, %struct.dsp** %4, align 8
  %31 = getelementptr inbounds %struct.dsp, %struct.dsp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64 (i64, %struct.sk_buff*)*, i64 (i64, %struct.sk_buff*)** %32, align 8
  %34 = load %struct.dsp*, %struct.dsp** %4, align 8
  %35 = getelementptr inbounds %struct.dsp, %struct.dsp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i64 %33(i64 %37, %struct.sk_buff* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @dev_kfree_skb(%struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %41, %29
  br label %48

45:                                               ; preds = %23
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i32 @dev_kfree_skb(%struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %45, %44
  br label %49

49:                                               ; preds = %48, %15
  ret void
}

declare dso_local %struct.sk_buff* @_alloc_mISDN_skb(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
