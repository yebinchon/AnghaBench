; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_channel_id_to_txp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_channel_id_to_txp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_phy_db = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_phy_db_chg_txp = type { i32 }

@IWL_NUM_TXP_CH_GROUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_phy_db*, i32)* @channel_id_to_txp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_id_to_txp(%struct.iwl_phy_db* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_phy_db*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_phy_db_chg_txp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_phy_db* %0, %struct.iwl_phy_db** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ch_id_to_ch_index(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 255, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %43, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IWL_NUM_TXP_CH_GROUPS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.iwl_phy_db_chg_txp*
  store %struct.iwl_phy_db_chg_txp* %29, %struct.iwl_phy_db_chg_txp** %6, align 8
  %30 = load %struct.iwl_phy_db_chg_txp*, %struct.iwl_phy_db_chg_txp** %6, align 8
  %31 = icmp ne %struct.iwl_phy_db_chg_txp* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store i32 255, i32* %3, align 4
  br label %47

33:                                               ; preds = %19
  %34 = load %struct.iwl_phy_db_chg_txp*, %struct.iwl_phy_db_chg_txp** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_phy_db_chg_txp, %struct.iwl_phy_db_chg_txp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %15

46:                                               ; preds = %15
  store i32 255, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %40, %32, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ch_id_to_ch_index(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
