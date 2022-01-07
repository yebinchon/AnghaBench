; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_init_sas_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_init_sas_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)* }
%struct.pm8001_hba_info = type { i64, i32*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pm8001_ioctl_payload = type { i32, i32, i32*, i64 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_6__* null, align 8
@chip_8001 = common dso_local global i64 0, align 8
@completion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*)* @pm8001_init_sas_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_init_sas_add(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %8 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %5
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %15 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 4717008, i32* %20, align 4
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %22 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i32 @cpu_to_be64(i64 %29)
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %32 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  br label %38

38:                                               ; preds = %13
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %5

41:                                               ; preds = %5
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %43 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %46 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %51 = call i32 @memcpy(i32* %44, i32* %49, i32 %50)
  ret void
}

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
