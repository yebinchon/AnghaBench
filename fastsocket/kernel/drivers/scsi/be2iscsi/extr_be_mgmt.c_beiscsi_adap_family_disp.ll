; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_adap_family_disp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_adap_family_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.beiscsi_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"BE2 Adapter Family\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"BE3-R Adapter Family\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Skyhawk-R Adapter Family\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unkown Adapter Family: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_adap_family_disp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.beiscsi_hba*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %9, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %14 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %13)
  store %struct.beiscsi_hba* %14, %struct.beiscsi_hba** %10, align 8
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %10, align 8
  %16 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %33 [
    i32 133, label %21
    i32 131, label %21
    i32 130, label %21
    i32 132, label %25
    i32 129, label %25
    i32 128, label %29
  ]

21:                                               ; preds = %3, %3, %3
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %3, %3
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %29, %25, %21
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
