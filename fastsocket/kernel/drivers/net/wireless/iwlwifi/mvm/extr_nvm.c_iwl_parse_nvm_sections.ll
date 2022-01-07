; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_nvm.c_iwl_parse_nvm_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_nvm.c_iwl_parse_nvm_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_nvm_data = type { i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_2__*, %struct.iwl_nvm_section* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_nvm_section = type { i64 }

@NVM_SECTION_TYPE_SW = common dso_local global i64 0, align 8
@NVM_SECTION_TYPE_HW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Can't parse empty NVM sections\0A\00", align 1
@NVM_SECTION_TYPE_CALIBRATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_nvm_data* (%struct.iwl_mvm*)* @iwl_parse_nvm_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_nvm_data* @iwl_parse_nvm_sections(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_nvm_data*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_nvm_section*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 2
  %10 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %9, align 8
  store %struct.iwl_nvm_section* %10, %struct.iwl_nvm_section** %4, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 2
  %13 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %12, align 8
  %14 = load i64, i64* @NVM_SECTION_TYPE_SW, align 8
  %15 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %13, i64 %14
  %16 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 2
  %22 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %21, align 8
  %23 = load i64, i64* @NVM_SECTION_TYPE_HW, align 8
  %24 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %22, i64 %23
  %25 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19, %1
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = call i32 @IWL_ERR(%struct.iwl_mvm* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.iwl_nvm_data* null, %struct.iwl_nvm_data** %2, align 8
  br label %72

31:                                               ; preds = %19
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store %struct.iwl_nvm_data* null, %struct.iwl_nvm_data** %2, align 8
  br label %72

41:                                               ; preds = %31
  %42 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %43 = load i64, i64* @NVM_SECTION_TYPE_HW, align 8
  %44 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %42, i64 %43
  %45 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %5, align 8
  %48 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %49 = load i64, i64* @NVM_SECTION_TYPE_SW, align 8
  %50 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %48, i64 %49
  %51 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %6, align 8
  %54 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %4, align 8
  %55 = load i64, i64* @NVM_SECTION_TYPE_CALIBRATION, align 8
  %56 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %54, i64 %55
  %57 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %7, align 8
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call %struct.iwl_nvm_data* @iwl_parse_nvm_data(i32 %64, i32 %67, i32* %68, i32* %69, i32* %70)
  store %struct.iwl_nvm_data* %71, %struct.iwl_nvm_data** %2, align 8
  br label %72

72:                                               ; preds = %41, %40, %28
  %73 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %2, align 8
  ret %struct.iwl_nvm_data* %73
}

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.iwl_nvm_data* @iwl_parse_nvm_data(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
