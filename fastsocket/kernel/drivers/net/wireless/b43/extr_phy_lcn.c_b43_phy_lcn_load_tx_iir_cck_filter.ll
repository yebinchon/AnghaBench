; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_load_tx_iir_cck_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_load_tx_iir_cck_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcn_tx_iir_filter = type { i32, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.b43_wldev = type { i32 }

@__const.b43_phy_lcn_load_tx_iir_cck_filter.phy_regs = private unnamed_addr constant [16 x i32] [i32 2320, i32 2334, i32 2335, i32 2340, i32 2341, i32 2342, i32 2336, i32 2337, i32 2343, i32 2344, i32 2345, i32 2338, i32 2339, i32 2352, i32 2353, i32 2354], align 16
@__const.b43_phy_lcn_load_tx_iir_cck_filter.tx_iir_filters_cck = private unnamed_addr constant [13 x %struct.lcn_tx_iir_filter] [%struct.lcn_tx_iir_filter { i32 0, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 1, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 2, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 3, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 20, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 21, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 22, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 23, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 24, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 25, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 26, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 27, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }, %struct.lcn_tx_iir_filter { i32 30, i64 1, i32* null, %struct.TYPE_2__ zeroinitializer }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i64)* @b43_phy_lcn_load_tx_iir_cck_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_lcn_load_tx_iir_cck_filter(%struct.b43_wldev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca [13 x %struct.lcn_tx_iir_filter], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = bitcast [16 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([16 x i32]* @__const.b43_phy_lcn_load_tx_iir_cck_filter.phy_regs to i8*), i64 64, i1 false)
  %11 = bitcast [13 x %struct.lcn_tx_iir_filter]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([13 x %struct.lcn_tx_iir_filter]* @__const.b43_phy_lcn_load_tx_iir_cck_filter.tx_iir_filters_cck to i8*), i64 1144, i1 false)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %50, %2
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds [13 x %struct.lcn_tx_iir_filter], [13 x %struct.lcn_tx_iir_filter]* %9, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(%struct.lcn_tx_iir_filter* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [13 x %struct.lcn_tx_iir_filter], [13 x %struct.lcn_tx_iir_filter]* %9, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.lcn_tx_iir_filter, %struct.lcn_tx_iir_filter* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [13 x %struct.lcn_tx_iir_filter], [13 x %struct.lcn_tx_iir_filter]* %9, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.lcn_tx_iir_filter, %struct.lcn_tx_iir_filter* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @b43_phy_write(%struct.b43_wldev* %30, i32 %34, i32 %43)
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %26

48:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %54

49:                                               ; preds = %17
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %12

53:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lcn_tx_iir_filter*) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
