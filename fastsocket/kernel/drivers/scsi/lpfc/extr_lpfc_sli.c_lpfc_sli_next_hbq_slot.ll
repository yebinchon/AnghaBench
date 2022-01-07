; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_hbq_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_hbq_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hbq_entry = type { i32 }
%struct.lpfc_hba = type { i64*, %struct.hbq_s*, i32 }
%struct.hbq_s = type { i64, i64, i64, i64, i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"1802 HBQ %d: local_hbqGetIdx %u is > than hbqp->entry_count %u\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_hbq_entry* (%struct.lpfc_hba*, i64)* @lpfc_sli_next_hbq_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_hbq_entry* @lpfc_sli_next_hbq_slot(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca %struct.lpfc_hbq_entry*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hbq_s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 1
  %11 = load %struct.hbq_s*, %struct.hbq_s** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %11, i64 %12
  store %struct.hbq_s* %13, %struct.hbq_s** %6, align 8
  %14 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %15 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %18 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %23 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %27 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %32 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %21, %2
  %34 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %35 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %38 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %93

44:                                               ; preds = %33
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @le32_to_cpu(i64 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %55 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %57 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %60 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %44
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %68 = load i32, i32* @KERN_ERR, align 4
  %69 = load i32, i32* @LOG_SLI, align 4
  %70 = load i32, i32* @LOG_VPORT, align 4
  %71 = or i32 %69, %70
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %74 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %77 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %67, i32 %68, i32 %71, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %72, i64 %75, i64 %78)
  %80 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  store %struct.lpfc_hbq_entry* null, %struct.lpfc_hbq_entry** %3, align 8
  br label %106

83:                                               ; preds = %44
  %84 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %85 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %88 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store %struct.lpfc_hbq_entry* null, %struct.lpfc_hbq_entry** %3, align 8
  br label %106

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %33
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load %struct.hbq_s*, %struct.hbq_s** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %96, i64 %97
  %99 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.lpfc_hbq_entry*
  %102 = load %struct.hbq_s*, %struct.hbq_s** %6, align 8
  %103 = getelementptr inbounds %struct.hbq_s, %struct.hbq_s* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.lpfc_hbq_entry, %struct.lpfc_hbq_entry* %101, i64 %104
  store %struct.lpfc_hbq_entry* %105, %struct.lpfc_hbq_entry** %3, align 8
  br label %106

106:                                              ; preds = %93, %91, %66
  %107 = load %struct.lpfc_hbq_entry*, %struct.lpfc_hbq_entry** %3, align 8
  ret %struct.lpfc_hbq_entry* %107
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
