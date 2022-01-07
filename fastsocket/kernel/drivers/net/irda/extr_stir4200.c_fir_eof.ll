; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_fir_eof.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_fir_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stir_cb = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { %struct.TYPE_5__*, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"%s: short frame len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"crc error calc 0x%x len %d\0A\00", align 1
@IRDA_RX_COPY_THRESHOLD = common dso_local global i32 0, align 4
@ETH_P_IRDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stir_cb*)* @fir_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fir_eof(%struct.stir_cb* %0) #0 {
  %2 = alloca %struct.stir_cb*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.stir_cb* %0, %struct.stir_cb** %2, align 8
  %8 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %9 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %8, i32 0, i32 1
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %21 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %28 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %35 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %179

41:                                               ; preds = %1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @crc32_le(i32 -1, i64 %44, i32 %45)
  %47 = xor i32 %46, -1
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @get_unaligned_le32(i64 %54)
  %56 = icmp ne i32 %48, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %62 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %69 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %179

75:                                               ; preds = %41
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @IRDA_RX_COPY_THRESHOLD, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  %82 = call %struct.sk_buff* @dev_alloc_skb(i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %6, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %91 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %179

97:                                               ; preds = %79
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i32 @skb_reserve(%struct.sk_buff* %98, i32 1)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %100, %struct.sk_buff** %5, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %101, i64 %104, i32 %105)
  br label %140

107:                                              ; preds = %75
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.sk_buff* @dev_alloc_skb(i32 %110)
  store %struct.sk_buff* %111, %struct.sk_buff** %6, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = icmp ne %struct.sk_buff* %112, null
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %107
  %119 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %120 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %179

126:                                              ; preds = %107
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = call i32 @skb_reserve(%struct.sk_buff* %127, i32 1)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %130, align 8
  store %struct.sk_buff* %131, %struct.sk_buff** %5, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  store %struct.sk_buff* %132, %struct.sk_buff** %134, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %126, %97
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @skb_put(%struct.sk_buff* %141, i32 %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = call i32 @skb_reset_mac_header(%struct.sk_buff* %144)
  %146 = load i32, i32* @ETH_P_IRDA, align 4
  %147 = call i32 @htons(i32 %146)
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %151 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  store %struct.TYPE_5__* %152, %struct.TYPE_5__** %154, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call i32 @netif_rx(%struct.sk_buff* %155)
  %157 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %158 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.stir_cb*, %struct.stir_cb** %2, align 8
  %166 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %164
  store i32 %171, i32* %169, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %140, %118, %89, %57, %19
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @crc32_le(i32, i64, i32) #1

declare dso_local i32 @get_unaligned_le32(i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
