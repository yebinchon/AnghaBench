; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_unwrap_mir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_unwrap_mir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_cb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %struct.TYPE_4__*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s short frame length %d\0A\00", align 1
@GOOD_FCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"crc error calc 0x%x len %d\0A\00", align 1
@ETH_P_IRDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcs_cb*, i32*, i32)* @mcs_unwrap_mir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs_unwrap_mir(%struct.mcs_cb* %0, i32* %1, i32 %2) #0 {
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
  %11 = sub nsw i32 %10, 2
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
  br label %122

39:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %40, -1
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @irda_calc_crc16(i32 %41, i32* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @GOOD_FCS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @IRDA_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %53 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %60 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %122

66:                                               ; preds = %39
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  %69 = call %struct.sk_buff* @dev_alloc_skb(i32 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %9, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %78 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %122

84:                                               ; preds = %66
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = call i32 @skb_reserve(%struct.sk_buff* %85, i32 1)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %87, i32* %88, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @skb_put(%struct.sk_buff* %91, i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = call i32 @skb_reset_mac_header(%struct.sk_buff* %94)
  %96 = load i32, i32* @ETH_P_IRDA, align 4
  %97 = call i32 @htons(i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %101 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %104, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = call i32 @netif_rx(%struct.sk_buff* %105)
  %107 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %108 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %116 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %114
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %84, %76, %48, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IRDA_ERROR(i8*, i32, i32) #1

declare dso_local i32 @irda_calc_crc16(i32, i32*, i32) #1

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
