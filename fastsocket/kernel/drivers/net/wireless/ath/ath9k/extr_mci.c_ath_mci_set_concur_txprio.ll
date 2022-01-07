; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_set_concur_txprio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_set_concur_txprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_btcoex }
%struct.ath_btcoex = type { %struct.ath_mci_profile }
%struct.ath_mci_profile = type { i32, i64, i64, i64, i64, i64, i64 }

@ATH_BTCOEX_STOMP_MAX = common dso_local global i32 0, align 4
@ATH_MCI_INQUIRY_PRIO = common dso_local global i32 0, align 4
@ATH_BTCOEX_STOMP_ALL = common dso_local global i64 0, align 8
@ATH_BTCOEX_STOMP_NONE = common dso_local global i64 0, align 8
@__const.ath_mci_set_concur_txprio.prof_prio = private unnamed_addr constant [4 x i32] [i32 50, i32 90, i32 94, i32 52], align 16
@ATH_BTCOEX_STOMP_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_mci_set_concur_txprio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_mci_set_concur_txprio(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_btcoex*, align 8
  %4 = alloca %struct.ath_mci_profile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i32], align 16
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 1
  store %struct.ath_btcoex* %9, %struct.ath_btcoex** %3, align 8
  %10 = load %struct.ath_btcoex*, %struct.ath_btcoex** %3, align 8
  %11 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %10, i32 0, i32 0
  store %struct.ath_mci_profile* %11, %struct.ath_mci_profile** %4, align 8
  %12 = load i32, i32* @ATH_BTCOEX_STOMP_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = mul nuw i64 4, %13
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i32* %15, i32 0, i32 %17)
  %19 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %4, align 8
  %20 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load i32, i32* @ATH_MCI_INQUIRY_PRIO, align 4
  %25 = load i64, i64* @ATH_BTCOEX_STOMP_ALL, align 8
  %26 = getelementptr inbounds i32, i32* %15, i64 %25
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %4, align 8
  %28 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %23
  %32 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %4, align 8
  %33 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ATH_MCI_INQUIRY_PRIO, align 4
  %38 = load i64, i64* @ATH_BTCOEX_STOMP_NONE, align 8
  %39 = getelementptr inbounds i32, i32* %15, i64 %38
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %31, %23
  br label %109

41:                                               ; preds = %1
  %42 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %42, i8* align 16 bitcast ([4 x i32]* @__const.ath_mci_set_concur_txprio.prof_prio to i8*), i64 16, i1 false)
  %43 = load i64, i64* @ATH_BTCOEX_STOMP_NONE, align 8
  %44 = getelementptr inbounds i32, i32* %15, i64 %43
  store i32 255, i32* %44, align 4
  %45 = load i64, i64* @ATH_BTCOEX_STOMP_LOW, align 8
  %46 = getelementptr inbounds i32, i32* %15, i64 %45
  store i32 255, i32* %46, align 4
  %47 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %4, align 8
  %48 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %4, align 8
  %53 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ath_mci_update_stomp_txprio(i32 %54, i32* %15)
  br label %56

56:                                               ; preds = %51, %41
  %57 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %4, align 8
  %58 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = call i32 @ath_mci_update_stomp_txprio(i32 %63, i32* %15)
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %4, align 8
  %67 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ath_mci_update_stomp_txprio(i32 %72, i32* %15)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %4, align 8
  %76 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ath_mci_update_stomp_txprio(i32 %81, i32* %15)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %4, align 8
  %85 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ath_mci_update_stomp_txprio(i32 %90, i32* %15)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i64, i64* @ATH_BTCOEX_STOMP_NONE, align 8
  %94 = getelementptr inbounds i32, i32* %15, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 255
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i64, i64* @ATH_BTCOEX_STOMP_NONE, align 8
  %99 = getelementptr inbounds i32, i32* %15, i64 %98
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i64, i64* @ATH_BTCOEX_STOMP_LOW, align 8
  %102 = getelementptr inbounds i32, i32* %15, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 255
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i64, i64* @ATH_BTCOEX_STOMP_LOW, align 8
  %107 = getelementptr inbounds i32, i32* %15, i64 %106
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108, %40
  %110 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %111 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ath9k_hw_btcoex_set_concur_txprio(i32 %112, i32* %15)
  %114 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %114)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ath_mci_update_stomp_txprio(i32, i32*) #2

declare dso_local i32 @ath9k_hw_btcoex_set_concur_txprio(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
