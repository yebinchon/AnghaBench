; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_scb_ampdu_update_max_txlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_scb_ampdu_update_max_txlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ampdu_info = type { i64*** }

@MCS_TABLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ampdu_info*, i64)* @brcms_c_scb_ampdu_update_max_txlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_scb_ampdu_update_max_txlen(%struct.ampdu_info* %0, i64 %1) #0 {
  %3 = alloca %struct.ampdu_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ampdu_info* %0, %struct.ampdu_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %72, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @MCS_TABLE_SIZE, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %75

11:                                               ; preds = %7
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @mcs_2_rate(i64 %12, i32 0, i32 0)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = mul i64 %14, %15
  %17 = lshr i64 %16, 3
  %18 = load %struct.ampdu_info*, %struct.ampdu_info** %3, align 8
  %19 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %18, i32 0, i32 0
  %20 = load i64***, i64**** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i64**, i64*** %20, i64 %21
  %23 = load i64**, i64*** %22, align 8
  %24 = getelementptr inbounds i64*, i64** %23, i64 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %17, i64* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @mcs_2_rate(i64 %27, i32 1, i32 0)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = mul i64 %29, %30
  %32 = lshr i64 %31, 3
  %33 = load %struct.ampdu_info*, %struct.ampdu_info** %3, align 8
  %34 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %33, i32 0, i32 0
  %35 = load i64***, i64**** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i64**, i64*** %35, i64 %36
  %38 = load i64**, i64*** %37, align 8
  %39 = getelementptr inbounds i64*, i64** %38, i64 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 %32, i64* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @mcs_2_rate(i64 %42, i32 0, i32 1)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %4, align 8
  %46 = mul i64 %44, %45
  %47 = lshr i64 %46, 3
  %48 = load %struct.ampdu_info*, %struct.ampdu_info** %3, align 8
  %49 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %48, i32 0, i32 0
  %50 = load i64***, i64**** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i64**, i64*** %50, i64 %51
  %53 = load i64**, i64*** %52, align 8
  %54 = getelementptr inbounds i64*, i64** %53, i64 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  store i64 %47, i64* %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @mcs_2_rate(i64 %57, i32 1, i32 1)
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %4, align 8
  %61 = mul i64 %59, %60
  %62 = lshr i64 %61, 3
  %63 = load %struct.ampdu_info*, %struct.ampdu_info** %3, align 8
  %64 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %63, i32 0, i32 0
  %65 = load i64***, i64**** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i64**, i64*** %65, i64 %66
  %68 = load i64**, i64*** %67, align 8
  %69 = getelementptr inbounds i64*, i64** %68, i64 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  store i64 %62, i64* %71, align 8
  br label %72

72:                                               ; preds = %11
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %6, align 8
  br label %7

75:                                               ; preds = %7
  ret void
}

declare dso_local i64 @mcs_2_rate(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
