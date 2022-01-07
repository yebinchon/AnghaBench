; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_get_max_txpwr_half_dbm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_get_max_txpwr_half_dbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_nvm_data = type { i32 }
%struct.iwl_eeprom_enhanced_txpwr = type { i64, i64, i64, i64, i64 }

@ANT_A = common dso_local global i32 0, align 4
@ANT_B = common dso_local global i32 0, align 4
@ANT_C = common dso_local global i32 0, align 4
@ANT_AB = common dso_local global i32 0, align 4
@ANT_BC = common dso_local global i32 0, align 4
@ANT_AC = common dso_local global i32 0, align 4
@ANT_ABC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_nvm_data*, %struct.iwl_eeprom_enhanced_txpwr*)* @iwl_get_max_txpwr_half_dbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_get_max_txpwr_half_dbm(%struct.iwl_nvm_data* %0, %struct.iwl_eeprom_enhanced_txpwr* %1) #0 {
  %3 = alloca %struct.iwl_nvm_data*, align 8
  %4 = alloca %struct.iwl_eeprom_enhanced_txpwr*, align 8
  %5 = alloca i64, align 8
  store %struct.iwl_nvm_data* %0, %struct.iwl_nvm_data** %3, align 8
  store %struct.iwl_eeprom_enhanced_txpwr* %1, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ANT_A, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %18, %12, %2
  %23 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ANT_B, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %35, %29, %22
  %40 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ANT_C, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %54 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %52, %46, %39
  %57 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %3, align 8
  %58 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ANT_AB, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ANT_BC, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ANT_AC, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68, %62, %56
  %75 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %82 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %80, %74, %68
  %85 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %3, align 8
  %86 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ANT_ABC, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %92 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %4, align 8
  %98 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %96, %90, %84
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
