; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_load_tx_iir_ofdm_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_load_tx_iir_ofdm_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.lcn_tx_iir_filter = type { i32, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.b43_phy_lcn_load_tx_iir_ofdm_filter.phy_regs = private unnamed_addr constant [16 x i32] [i32 2319, i32 2304, i32 2305, i32 2310, i32 2311, i32 2312, i32 2306, i32 2307, i32 2313, i32 2314, i32 2315, i32 2308, i32 2309, i32 2316, i32 2317, i32 2318], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i64)* @b43_phy_lcn_load_tx_iir_ofdm_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_lcn_load_tx_iir_ofdm_filter(%struct.b43_wldev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca [3 x %struct.lcn_tx_iir_filter], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = bitcast [16 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([16 x i32]* @__const.b43_phy_lcn_load_tx_iir_ofdm_filter.phy_regs to i8*), i64 64, i1 false)
  %11 = bitcast [3 x %struct.lcn_tx_iir_filter]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 264, i1 false)
  %12 = bitcast i8* %11 to [3 x %struct.lcn_tx_iir_filter]*
  %13 = getelementptr inbounds [3 x %struct.lcn_tx_iir_filter], [3 x %struct.lcn_tx_iir_filter]* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.lcn_tx_iir_filter, %struct.lcn_tx_iir_filter* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds [3 x %struct.lcn_tx_iir_filter], [3 x %struct.lcn_tx_iir_filter]* %12, i32 0, i32 2
  %16 = getelementptr inbounds %struct.lcn_tx_iir_filter, %struct.lcn_tx_iir_filter* %15, i32 0, i32 0
  store i32 2, i32* %16, align 16
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %55, %2
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [3 x %struct.lcn_tx_iir_filter], [3 x %struct.lcn_tx_iir_filter]* %9, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(%struct.lcn_tx_iir_filter* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x %struct.lcn_tx_iir_filter], [3 x %struct.lcn_tx_iir_filter]* %9, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.lcn_tx_iir_filter, %struct.lcn_tx_iir_filter* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x %struct.lcn_tx_iir_filter], [3 x %struct.lcn_tx_iir_filter]* %9, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.lcn_tx_iir_filter, %struct.lcn_tx_iir_filter* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @b43_phy_write(%struct.b43_wldev* %35, i32 %39, i32 %48)
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %31

53:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %59

54:                                               ; preds = %22
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %17

58:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lcn_tx_iir_filter*) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
