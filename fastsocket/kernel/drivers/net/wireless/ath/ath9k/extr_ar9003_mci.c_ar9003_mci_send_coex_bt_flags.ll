; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_coex_bt_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_coex_bt_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@MCI_GPM_COEX_AGENT = common dso_local global i32 0, align 4
@MCI_GPM_COEX_BT_UPDATE_FLAGS = common dso_local global i32 0, align 4
@MCI_GPM_COEX_B_BT_FLAGS_OP = common dso_local global i32 0, align 4
@MCI_GPM_COEX_W_BT_FLAGS = common dso_local global i32 0, align 4
@MCI_GPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32, i32)* @ar9003_mci_send_coex_bt_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_mci_send_coex_bt_flags(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %12 = load i32, i32* @MCI_GPM_COEX_AGENT, align 4
  %13 = load i32, i32* @MCI_GPM_COEX_BT_UPDATE_FLAGS, align 4
  %14 = call i32 @MCI_GPM_SET_TYPE_OPCODE(i32* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %17 = load i32, i32* @MCI_GPM_COEX_B_BT_FLAGS_OP, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %23 = load i32, i32* @MCI_GPM_COEX_W_BT_FLAGS, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %31 = load i32, i32* @MCI_GPM_COEX_W_BT_FLAGS, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %39 = load i32, i32* @MCI_GPM_COEX_W_BT_FLAGS, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %37, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 24
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %47 = load i32, i32* @MCI_GPM_COEX_W_BT_FLAGS, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %45, i32* %50, align 4
  %51 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %52 = load i32, i32* @MCI_GPM, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %51, i32 %52, i32 0, i32* %53, i32 16, i32 %54, i32 1)
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MCI_GPM_SET_TYPE_OPCODE(i32*, i32, i32) #2

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
