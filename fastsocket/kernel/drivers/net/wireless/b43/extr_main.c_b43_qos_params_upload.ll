; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_qos_params_upload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_qos_params_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32 }

@B43_NR_QOSPARAMS = common dso_local global i32 0, align 4
@B43_MMIO_RNG = common dso_local global i32 0, align 4
@B43_QOSPARAM_TXOP = common dso_local global i64 0, align 8
@B43_QOSPARAM_CWMIN = common dso_local global i64 0, align 8
@B43_QOSPARAM_CWMAX = common dso_local global i64 0, align 8
@B43_QOSPARAM_CWCUR = common dso_local global i64 0, align 8
@B43_QOSPARAM_AIFS = common dso_local global i64 0, align 8
@B43_QOSPARAM_BSLOTS = common dso_local global i64 0, align 8
@B43_QOSPARAM_REGGAP = common dso_local global i64 0, align 8
@B43_QOSPARAM_STATUS = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.ieee80211_tx_queue_params*, i32)* @b43_qos_params_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_qos_params_upload(%struct.b43_wldev* %0, %struct.ieee80211_tx_queue_params* %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store %struct.ieee80211_tx_queue_params* %1, %struct.ieee80211_tx_queue_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @B43_NR_QOSPARAMS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %113

22:                                               ; preds = %3
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %24 = load i32, i32* @B43_MMIO_RNG, align 4
  %25 = call i32 @b43_read16(%struct.b43_wldev* %23, i32 %24)
  %26 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = bitcast i32* %16 to i32**
  %31 = mul nuw i64 4, %14
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32** %30, i32 0, i32 %32)
  %34 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 32
  %38 = load i64, i64* @B43_QOSPARAM_TXOP, align 8
  %39 = getelementptr inbounds i32, i32* %16, i64 %38
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @B43_QOSPARAM_CWMIN, align 8
  %44 = getelementptr inbounds i32, i32* %16, i64 %43
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @B43_QOSPARAM_CWMAX, align 8
  %49 = getelementptr inbounds i32, i32* %16, i64 %48
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @B43_QOSPARAM_CWCUR, align 8
  %54 = getelementptr inbounds i32, i32* %16, i64 %53
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @B43_QOSPARAM_AIFS, align 8
  %59 = getelementptr inbounds i32, i32* %16, i64 %58
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i64, i64* @B43_QOSPARAM_BSLOTS, align 8
  %62 = getelementptr inbounds i32, i32* %16, i64 %61
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load i64, i64* @B43_QOSPARAM_REGGAP, align 8
  %69 = getelementptr inbounds i32, i32* %16, i64 %68
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %109, %22
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @ARRAY_SIZE(i32* %16)
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @B43_QOSPARAM_STATUS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %80 = load i32, i32* @B43_SHM_SHARED, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul i32 %82, 2
  %84 = add i32 %81, %83
  %85 = call i32 @b43_shm_read16(%struct.b43_wldev* %79, i32 %80, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, 256
  store i32 %87, i32* %10, align 4
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %89 = load i32, i32* @B43_SHM_SHARED, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %11, align 4
  %92 = mul i32 %91, 2
  %93 = add i32 %90, %92
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @b43_shm_write16(%struct.b43_wldev* %88, i32 %89, i32 %93, i32 %94)
  br label %108

96:                                               ; preds = %74
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %98 = load i32, i32* @B43_SHM_SHARED, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %11, align 4
  %101 = mul i32 %100, 2
  %102 = add i32 %99, %101
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %16, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @b43_shm_write16(%struct.b43_wldev* %97, i32 %98, i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %96, %78
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %70

112:                                              ; preds = %70
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %21
  %114 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %12, align 4
  switch i32 %115, label %117 [
    i32 0, label %116
    i32 1, label %116
  ]

116:                                              ; preds = %113, %113
  ret void

117:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #2

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
