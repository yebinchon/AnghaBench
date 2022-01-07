; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_stat_data_ctrl_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_stat_data_ctrl_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"power2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"No Bucket\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"Statistical Data enabled :%d, blocked :%d, Bucket type :%s, Bucket base :%d, Bucket step :%d\0ALatency Ranges :\00", align 1
@LPFC_NO_BUCKET = common dso_local global i32 0, align 4
@LPFC_MAX_BUCKET_COUNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%08ld \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lpfc_stat_data_ctrl_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_stat_data_ctrl_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %7, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %8, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %28 [
    i32 129, label %26
    i32 128, label %27
  ]

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %29

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %29

28:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %29

29:                                               ; preds = %28, %27, %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %35 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %38 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %39, i8* %40, i32 %43, i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strlen(i8* %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LPFC_NO_BUCKET, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %107

55:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %103, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @LPFC_MAX_BUCKET_COUNT, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %56
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 129
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %68, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %13, align 8
  br label %88

76:                                               ; preds = %60
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = add nsw i32 %79, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %76, %65
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 10
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %106

94:                                               ; preds = %88
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i64, i64* %13, align 8
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %99)
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @strlen(i8* %101)
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %56

106:                                              ; preds = %93, %56
  br label %107

107:                                              ; preds = %106, %29
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @strlen(i8* %113)
  ret i32 %114
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
