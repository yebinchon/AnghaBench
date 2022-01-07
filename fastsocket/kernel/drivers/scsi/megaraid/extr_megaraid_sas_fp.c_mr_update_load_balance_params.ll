; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_update_load_balance_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_update_load_balance_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MR_FW_RAID_MAP_ALL = type { i32 }
%struct.LD_LOAD_BALANCE_INFO = type { i32, i8** }
%struct.MR_LD_RAID = type { i32, i32, i32, i64 }

@MAX_LOGICAL_DRIVES = common dso_local global i32 0, align 4
@MR_LD_STATE_OPTIMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mr_update_load_balance_params(%struct.MR_FW_RAID_MAP_ALL* %0, %struct.LD_LOAD_BALANCE_INFO* %1) #0 {
  %3 = alloca %struct.MR_FW_RAID_MAP_ALL*, align 8
  %4 = alloca %struct.LD_LOAD_BALANCE_INFO*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.MR_LD_RAID*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.MR_FW_RAID_MAP_ALL* %0, %struct.MR_FW_RAID_MAP_ALL** %3, align 8
  store %struct.LD_LOAD_BALANCE_INFO* %1, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %93, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %3, align 8
  %17 = call i32 @MR_TargetIdToLdGet(i32 %15, %struct.MR_FW_RAID_MAP_ALL* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %22, i64 %24
  %26 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %93

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %3, align 8
  %30 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i32 %28, %struct.MR_FW_RAID_MAP_ALL* %29)
  store %struct.MR_LD_RAID* %30, %struct.MR_LD_RAID** %7, align 8
  %31 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %7, align 8
  %32 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %86

35:                                               ; preds = %27
  %36 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %7, align 8
  %37 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %86

40:                                               ; preds = %35
  %41 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %7, align 8
  %42 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %86

45:                                               ; preds = %40
  %46 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %7, align 8
  %47 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MR_LD_STATE_OPTIMAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %45
  %52 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %52, i64 %54
  %56 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %3, align 8
  %59 = call i32 @MR_LdSpanArrayGet(i32 %57, i32 0, %struct.MR_FW_RAID_MAP_ALL* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %3, align 8
  %62 = call i32 @MR_ArPdGet(i32 %60, i32 0, %struct.MR_FW_RAID_MAP_ALL* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %3, align 8
  %65 = call i8* @MR_PdDevHandleGet(i32 %63, %struct.MR_FW_RAID_MAP_ALL* %64)
  %66 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %66, i64 %68
  %70 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %65, i8** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %3, align 8
  %75 = call i32 @MR_ArPdGet(i32 %73, i32 1, %struct.MR_FW_RAID_MAP_ALL* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %3, align 8
  %78 = call i8* @MR_PdDevHandleGet(i32 %76, %struct.MR_FW_RAID_MAP_ALL* %77)
  %79 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %79, i64 %81
  %83 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  store i8* %78, i8** %85, align 8
  br label %92

86:                                               ; preds = %45, %40, %35, %27
  %87 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %87, i64 %89
  %91 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %86, %51
  br label %93

93:                                               ; preds = %92, %21
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %10

96:                                               ; preds = %10
  ret void
}

declare dso_local i32 @MR_TargetIdToLdGet(i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_LdSpanArrayGet(i32, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_ArPdGet(i32, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i8* @MR_PdDevHandleGet(i32, %struct.MR_FW_RAID_MAP_ALL*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
