; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_queue_unsent_gpm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_queue_unsent_gpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32, i32, i32 }

@MCI_GPM = common dso_local global i64 0, align 8
@MCI_GPM_COEX_AGENT = common dso_local global i64 0, align 8
@MCI_GPM_COEX_B_BT_FLAGS_OP = common dso_local global i32 0, align 4
@MCI_GPM_COEX_BT_FLAGS_READ = common dso_local global i64 0, align 8
@MCI_GPM_COEX_B_HALT_STATE = common dso_local global i32 0, align 4
@MCI_GPM_COEX_BT_GPM_UNHALT = common dso_local global i64 0, align 8
@MCI_GPM_COEX_BT_GPM_HALT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64, i32*, i32)* @ar9003_mci_queue_unsent_gpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_queue_unsent_gpm(%struct.ath_hw* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_hw_mci*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ath9k_hw_mci* %14, %struct.ath9k_hw_mci** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @MCI_GPM, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %85

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @MCI_GPM_TYPE(i32* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @MCI_GPM_OPCODE(i32* %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @MCI_GPM_COEX_AGENT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %85

28:                                               ; preds = %19
  %29 = load i64, i64* %11, align 8
  switch i64 %29, label %84 [
    i64 130, label %30
    i64 128, label %44
    i64 129, label %48
  ]

30:                                               ; preds = %28
  %31 = load i32*, i32** %7, align 8
  %32 = bitcast i32* %31 to i64*
  %33 = load i32, i32* @MCI_GPM_COEX_B_BT_FLAGS_OP, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MCI_GPM_COEX_BT_FLAGS_READ, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %85

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %9, align 8
  %43 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %85

44:                                               ; preds = %28
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %9, align 8
  %47 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %85

48:                                               ; preds = %28
  %49 = load i32*, i32** %7, align 8
  %50 = bitcast i32* %49 to i64*
  %51 = load i32, i32* @MCI_GPM_COEX_B_HALT_STATE, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MCI_GPM_COEX_BT_GPM_UNHALT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %9, align 8
  %60 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %9, align 8
  %65 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %64, i32 0, i32 3
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i32*, i32** %7, align 8
  %69 = bitcast i32* %68 to i64*
  %70 = load i32, i32* @MCI_GPM_COEX_B_HALT_STATE, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MCI_GPM_COEX_BT_GPM_HALT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %9, align 8
  %82 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %67
  br label %85

84:                                               ; preds = %28
  br label %85

85:                                               ; preds = %18, %27, %84, %83, %44, %40, %39
  ret void
}

declare dso_local i64 @MCI_GPM_TYPE(i32*) #1

declare dso_local i64 @MCI_GPM_OPCODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
