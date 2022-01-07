; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_tx_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_tx_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.p54_txcancel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_TXCANCEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_tx_cancel(%struct.p54_common* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p54_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.p54_txcancel*, align 8
  %8 = alloca i64, align 8
  store %struct.p54_common* %0, %struct.p54_common** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @le32_to_cpu(i32 %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %13 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %19 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i1 [ true, %2 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %22
  %31 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %32 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %33 = load i32, i32* @P54_CONTROL_TYPE_TXCANCEL, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %31, i32 %32, i32 4, i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %30
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i64 @skb_put(%struct.sk_buff* %46, i32 4)
  %48 = inttoptr i64 %47 to %struct.p54_txcancel*
  store %struct.p54_txcancel* %48, %struct.p54_txcancel** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.p54_txcancel*, %struct.p54_txcancel** %7, align 8
  %51 = getelementptr inbounds %struct.p54_txcancel, %struct.p54_txcancel* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @p54_tx(%struct.p54_common* %52, %struct.sk_buff* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %45, %42, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
