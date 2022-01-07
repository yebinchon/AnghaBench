; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_device = type { i64, i64 }
%struct.pm8001_hba_info = type { %struct.pm8001_device* }

@PM8001_MAX_DEVICES = common dso_local global i64 0, align 8
@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"max support %d devices, ignore ..\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pm8001_device* @pm8001_alloc_dev(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_device*, align 8
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @PM8001_MAX_DEVICES, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %11 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %10, i32 0, i32 0
  %12 = load %struct.pm8001_device*, %struct.pm8001_device** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %12, i64 %13
  %15 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %9
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %22 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %21, i32 0, i32 0
  %23 = load %struct.pm8001_device*, %struct.pm8001_device** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %23, i64 %24
  %26 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %25, i32 0, i32 1
  store i64 %20, i64* %26, align 8
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %28 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %27, i32 0, i32 0
  %29 = load %struct.pm8001_device*, %struct.pm8001_device** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %29, i64 %30
  store %struct.pm8001_device* %31, %struct.pm8001_device** %2, align 8
  br label %46

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %5

36:                                               ; preds = %5
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @PM8001_MAX_DEVICES, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = load i64, i64* @PM8001_MAX_DEVICES, align 8
  %43 = call i32 @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  store %struct.pm8001_device* null, %struct.pm8001_device** %2, align 8
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.pm8001_device*, %struct.pm8001_device** %2, align 8
  ret %struct.pm8001_device* %47
}

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
