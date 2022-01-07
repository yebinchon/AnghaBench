; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_set_tx_queueprops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_set_tx_queueprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.ath5k_txq_info*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ath5k_txq_info = type { i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32 }

@AR5K_TX_QUEUE_INACTIVE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_DATA = common dso_local global i64 0, align 8
@AR5K_WME_AC_VI = common dso_local global i64 0, align 8
@AR5K_WME_AC_VO = common dso_local global i64 0, align 8
@AR5K_TX_QUEUE_UAPSD = common dso_local global i64 0, align 8
@AR5K_TXQ_FLAG_POST_FR_BKOFF_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_tx_queueprops(%struct.ath5k_hw* %0, i32 %1, %struct.ath5k_txq_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_txq_info*, align 8
  %8 = alloca %struct.ath5k_txq_info*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath5k_txq_info* %2, %struct.ath5k_txq_info** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @AR5K_ASSERT_ENTRY(i32 %9, i32 %14)
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %18, i64 %20
  store %struct.ath5k_txq_info* %21, %struct.ath5k_txq_info** %8, align 8
  %22 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %23 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AR5K_TX_QUEUE_INACTIVE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %114

30:                                               ; preds = %3
  %31 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %32 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %35 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %37 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %40 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %42 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %45 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %47 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @min(i32 %48, i32 252)
  %50 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %51 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %53 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %52, i32 0, i32 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @ath5k_cw_validate(i8* %54)
  %56 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %57 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %56, i32 0, i32 8
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %59 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %58, i32 0, i32 7
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @ath5k_cw_validate(i8* %60)
  %62 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %63 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %65 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %68 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %70 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %73 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %75 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %78 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %80 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %83 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %85 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AR5K_TX_QUEUE_DATA, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %30
  %90 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %91 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AR5K_WME_AC_VI, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %107, label %95

95:                                               ; preds = %89
  %96 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %97 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AR5K_WME_AC_VO, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95, %30
  %102 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %103 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AR5K_TX_QUEUE_UAPSD, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101, %95, %89
  %108 = load i32, i32* @AR5K_TXQ_FLAG_POST_FR_BKOFF_DIS, align 4
  %109 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %110 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %101
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %27
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @AR5K_ASSERT_ENTRY(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @ath5k_cw_validate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
