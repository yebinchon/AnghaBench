; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_link_state_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_link_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32 (%struct.lpfc_hba*)*, i32 (%struct.lpfc_hba*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"up\00", align 1
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_link_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_link_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %10, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %11, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 0
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %12, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = load i32 (%struct.lpfc_hba*)*, i32 (%struct.lpfc_hba*)** %36, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %39 = call i32 %37(%struct.lpfc_hba* %38)
  store i32 %39, i32* %13, align 4
  br label %57

40:                                               ; preds = %28, %4
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LPFC_LINK_UP, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 2
  %53 = load i32 (%struct.lpfc_hba*)*, i32 (%struct.lpfc_hba*)** %52, align 8
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %55 = call i32 %53(%struct.lpfc_hba* %54)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %50, %44, %40
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strlen(i8* %61)
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
