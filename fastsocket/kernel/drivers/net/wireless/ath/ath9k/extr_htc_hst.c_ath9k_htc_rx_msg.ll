; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_rx_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_rx_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.htc_endpoint* }
%struct.htc_endpoint = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.sk_buff*, i32)* }
%struct.sk_buff = type { i64 }
%struct.htc_frame_hdr = type { i32, i32, i64* }

@ENDPOINT_MAX = common dso_local global i32 0, align 4
@USB_REG_IN_PIPE = common dso_local global i64 0, align 8
@ENDPOINT0 = common dso_local global i32 0, align 4
@HTC_FLAGS_RECV_TRAILER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_rx_msg(%struct.htc_target* %0, %struct.sk_buff* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.htc_frame_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.htc_endpoint*, align 8
  %12 = alloca i32*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %14 = icmp ne %struct.htc_target* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %4
  br label %131

19:                                               ; preds = %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %23, %struct.htc_frame_hdr** %9, align 8
  %24 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ENDPOINT_MAX, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @USB_REG_IN_PIPE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %35)
  br label %40

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %131

41:                                               ; preds = %19
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @ENDPOINT0, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %87

45:                                               ; preds = %41
  %46 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %47 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HTC_FLAGS_RECV_TRAILER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = icmp eq i32 %58, 12976128
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 4
  %65 = inttoptr i64 %64 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %65, %struct.htc_frame_hdr** %9, align 8
  br label %66

66:                                               ; preds = %60, %52
  br label %67

67:                                               ; preds = %66, %45
  %68 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %69 = bitcast %struct.htc_frame_hdr* %68 to i8*
  %70 = getelementptr i8, i8* %69, i64 16
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be16_to_cpu(i32 %73)
  switch i32 %74, label %83 [
    i32 128, label %75
    i32 129, label %79
  ]

75:                                               ; preds = %67
  %76 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %77 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %78 = call i32 @htc_process_target_rdy(%struct.htc_target* %76, %struct.htc_frame_hdr* %77)
  br label %84

79:                                               ; preds = %67
  %80 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %81 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %82 = call i32 @htc_process_conn_rsp(%struct.htc_target* %80, %struct.htc_frame_hdr* %81)
  br label %84

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83, %79, %75
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  br label %131

87:                                               ; preds = %41
  %88 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %89 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @HTC_FLAGS_RECV_TRAILER, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %98 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %96, %101
  %103 = call i32 @skb_trim(%struct.sk_buff* %95, i64 %102)
  br label %104

104:                                              ; preds = %94, %87
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = call i32 @skb_pull(%struct.sk_buff* %105, i32 16)
  %107 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %108 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %107, i32 0, i32 0
  %109 = load %struct.htc_endpoint*, %struct.htc_endpoint** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %109, i64 %111
  store %struct.htc_endpoint* %112, %struct.htc_endpoint** %11, align 8
  %113 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %114 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %115, align 8
  %117 = icmp ne i32 (i32, %struct.sk_buff*, i32)* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %104
  %119 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %120 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %121, align 8
  %123 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %124 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 %122(i32 %126, %struct.sk_buff* %127, i32 %128)
  br label %130

130:                                              ; preds = %118, %104
  br label %131

131:                                              ; preds = %18, %40, %130, %84
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @htc_process_target_rdy(%struct.htc_target*, %struct.htc_frame_hdr*) #1

declare dso_local i32 @htc_process_conn_rsp(%struct.htc_target*, %struct.htc_frame_hdr*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
