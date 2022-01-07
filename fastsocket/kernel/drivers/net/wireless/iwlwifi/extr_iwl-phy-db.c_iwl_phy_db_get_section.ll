; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_get_section.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_get_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_phy_db_entry = type { i32 }
%struct.iwl_phy_db = type { %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry }

@IWL_PHY_DB_MAX = common dso_local global i32 0, align 4
@IWL_NUM_PAPD_CH_GROUPS = common dso_local global i64 0, align 8
@IWL_NUM_TXP_CH_GROUPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_phy_db_entry* (%struct.iwl_phy_db*, i32, i64)* @iwl_phy_db_get_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_phy_db_entry* @iwl_phy_db_get_section(%struct.iwl_phy_db* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.iwl_phy_db_entry*, align 8
  %5 = alloca %struct.iwl_phy_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.iwl_phy_db* %0, %struct.iwl_phy_db** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %9 = icmp ne %struct.iwl_phy_db* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IWL_PHY_DB_MAX, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  store %struct.iwl_phy_db_entry* null, %struct.iwl_phy_db_entry** %4, align 8
  br label %49

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %48 [
    i32 128, label %17
    i32 129, label %20
    i32 132, label %23
    i32 131, label %26
    i32 130, label %37
  ]

17:                                               ; preds = %15
  %18 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %18, i32 0, i32 4
  store %struct.iwl_phy_db_entry* %19, %struct.iwl_phy_db_entry** %4, align 8
  br label %49

20:                                               ; preds = %15
  %21 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %21, i32 0, i32 3
  store %struct.iwl_phy_db_entry* %22, %struct.iwl_phy_db_entry** %4, align 8
  br label %49

23:                                               ; preds = %15
  %24 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %24, i32 0, i32 2
  store %struct.iwl_phy_db_entry* %25, %struct.iwl_phy_db_entry** %4, align 8
  br label %49

26:                                               ; preds = %15
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @IWL_NUM_PAPD_CH_GROUPS, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.iwl_phy_db_entry* null, %struct.iwl_phy_db_entry** %4, align 8
  br label %49

31:                                               ; preds = %26
  %32 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %32, i32 0, i32 1
  %34 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry* %34, i64 %35
  store %struct.iwl_phy_db_entry* %36, %struct.iwl_phy_db_entry** %4, align 8
  br label %49

37:                                               ; preds = %15
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @IWL_NUM_TXP_CH_GROUPS, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.iwl_phy_db_entry* null, %struct.iwl_phy_db_entry** %4, align 8
  br label %49

42:                                               ; preds = %37
  %43 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %43, i32 0, i32 0
  %45 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry* %45, i64 %46
  store %struct.iwl_phy_db_entry* %47, %struct.iwl_phy_db_entry** %4, align 8
  br label %49

48:                                               ; preds = %15
  store %struct.iwl_phy_db_entry* null, %struct.iwl_phy_db_entry** %4, align 8
  br label %49

49:                                               ; preds = %48, %42, %41, %31, %30, %23, %20, %17, %14
  %50 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %4, align 8
  ret %struct.iwl_phy_db_entry* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
