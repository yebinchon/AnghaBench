; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_init_xbow_synth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_fwio.c_p54_init_xbow_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32 }
%struct.sk_buff = type { i32 }
%struct.p54_xbow_synth = type { i32, i8*, i8*, i8* }

@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_XBOW_SYNTH_CFG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_init_xbow_synth(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_xbow_synth*, align 8
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  %6 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %7 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %8 = load i32, i32* @P54_CONTROL_TYPE_XBOW_SYNTH_CFG, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %6, i32 %7, i32 32, i32 %8, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_put(%struct.sk_buff* %21, i32 32)
  %23 = inttoptr i64 %22 to %struct.p54_xbow_synth*
  store %struct.p54_xbow_synth* %23, %struct.p54_xbow_synth** %5, align 8
  %24 = call i8* @cpu_to_le16(i32 1)
  %25 = load %struct.p54_xbow_synth*, %struct.p54_xbow_synth** %5, align 8
  %26 = getelementptr inbounds %struct.p54_xbow_synth, %struct.p54_xbow_synth* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = call i8* @cpu_to_le16(i32 2)
  %28 = load %struct.p54_xbow_synth*, %struct.p54_xbow_synth** %5, align 8
  %29 = getelementptr inbounds %struct.p54_xbow_synth, %struct.p54_xbow_synth* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = call i8* @cpu_to_le16(i32 5390)
  %31 = load %struct.p54_xbow_synth*, %struct.p54_xbow_synth** %5, align 8
  %32 = getelementptr inbounds %struct.p54_xbow_synth, %struct.p54_xbow_synth* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.p54_xbow_synth*, %struct.p54_xbow_synth** %5, align 8
  %34 = getelementptr inbounds %struct.p54_xbow_synth, %struct.p54_xbow_synth* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memset(i32 %35, i32 0, i32 4)
  %37 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @p54_tx(%struct.p54_common* %37, %struct.sk_buff* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %20, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
