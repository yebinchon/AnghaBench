; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sli4_protocol_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sli4_protocol_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fc\0A\00", align 1
@LPFC_LNK_DAT_VAL = common dso_local global i64 0, align 8
@LPFC_LNK_TYPE_GE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"fcoe\0A\00", align 1
@LPFC_LNK_TYPE_FC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lpfc_sli4_protocol_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_protocol_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %8, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %16, %struct.lpfc_vport** %9, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %10, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LPFC_SLI_REV4, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %66

29:                                               ; preds = %3
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LPFC_LNK_DAT_VAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %29
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LPFC_LNK_TYPE_GE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  br label %66

49:                                               ; preds = %37
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LPFC_LNK_TYPE_FC, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i32 @snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = call i32 @snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %57, %45, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
