; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_send_all_channel_groups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_send_all_channel_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_phy_db = type { i32 }
%struct.iwl_phy_db_entry = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't SEND phy_db section %d (%d), err %d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Sent PHY_DB HCMD, type = %d num = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_phy_db*, i32, i64)* @iwl_phy_db_send_all_channel_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_phy_db_send_all_channel_groups(%struct.iwl_phy_db* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_phy_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_phy_db_entry*, align 8
  store %struct.iwl_phy_db* %0, %struct.iwl_phy_db** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %53, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.iwl_phy_db_entry* @iwl_phy_db_get_section(%struct.iwl_phy_db* %16, i32 %17, i64 %18)
  store %struct.iwl_phy_db_entry* %19, %struct.iwl_phy_db_entry** %10, align 8
  %20 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %10, align 8
  %21 = icmp ne %struct.iwl_phy_db_entry* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %57

25:                                               ; preds = %15
  %26 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %10, align 8
  %29 = getelementptr inbounds %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %10, align 8
  %32 = getelementptr inbounds %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iwl_send_phy_db_cmd(%struct.iwl_phy_db* %26, i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @IWL_ERR(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %57

46:                                               ; preds = %25
  %47 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @IWL_DEBUG_INFO(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %11

56:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %37, %22
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.iwl_phy_db_entry* @iwl_phy_db_get_section(%struct.iwl_phy_db*, i32, i64) #1

declare dso_local i32 @iwl_send_phy_db_cmd(%struct.iwl_phy_db*, i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
