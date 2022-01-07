; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_unwrap_fir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_unwrap_fir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_cb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %struct.TYPE_4__*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s short frame length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"crc error calc 0x%x len %d\0A\00", align 1
@ETH_P_IRDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcs_cb*, i32*, i32)* @mcs_unwrap_fir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs_unwrap_fir(%struct.mcs_cb* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mcs_cb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.mcs_cb* %0, %struct.mcs_cb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %19 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @IRDA_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %26 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %33 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %125

39:                                               ; preds = %3
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @crc32_le(i32 -1, i32* %40, i32 %41)
  %43 = xor i32 %42, -1
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @get_unaligned_le32(i32* %48)
  %50 = icmp ne i32 %44, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @IRDA_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %56 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %63 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %125

69:                                               ; preds = %39
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  %72 = call %struct.sk_buff* @dev_alloc_skb(i32 %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %9, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %81 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %125

87:                                               ; preds = %69
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = call i32 @skb_reserve(%struct.sk_buff* %88, i32 1)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %90, i32* %91, i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @skb_put(%struct.sk_buff* %94, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %98 = call i32 @skb_reset_mac_header(%struct.sk_buff* %97)
  %99 = load i32, i32* @ETH_P_IRDA, align 4
  %100 = call i32 @htons(i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %104 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %107, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = call i32 @netif_rx(%struct.sk_buff* %108)
  %110 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %111 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %119 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %117
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %87, %79, %51, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IRDA_ERROR(i8*, i32, i32) #1

declare dso_local i32 @crc32_le(i32, i32*, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

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
