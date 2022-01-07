; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_set_nvmd_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_set_nvmd_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { i32, i32* }
%struct.get_nvm_data_resp = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Set nvm data complete!\0A\00", align 1
@NVMD_STAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Set nvm data error!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_mpi_set_nvmd_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.get_nvm_data_resp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pm8001_ccb_info*, align 8
  %8 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr i8, i8* %9, i64 4
  %11 = bitcast i8* %10 to %struct.get_nvm_data_resp*
  store %struct.get_nvm_data_resp* %11, %struct.get_nvm_data_resp** %5, align 8
  %12 = load %struct.get_nvm_data_resp*, %struct.get_nvm_data_resp** %5, align 8
  %13 = getelementptr inbounds %struct.get_nvm_data_resp, %struct.get_nvm_data_resp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %17 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %16, i32 0, i32 1
  %18 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %18, i64 %19
  store %struct.pm8001_ccb_info* %20, %struct.pm8001_ccb_info** %7, align 8
  %21 = load %struct.get_nvm_data_resp*, %struct.get_nvm_data_resp** %5, align 8
  %22 = getelementptr inbounds %struct.get_nvm_data_resp, %struct.get_nvm_data_resp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %26 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @complete(i32 %27)
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = call i32 @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %29, i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @NVMD_STAT, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %38 = call i32 @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %37, i32 %38)
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %42 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %44 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @pm8001_ccb_free(%struct.pm8001_hba_info* %45, i64 %46)
  br label %48

48:                                               ; preds = %40, %36
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @complete(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_ccb_free(%struct.pm8001_hba_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
