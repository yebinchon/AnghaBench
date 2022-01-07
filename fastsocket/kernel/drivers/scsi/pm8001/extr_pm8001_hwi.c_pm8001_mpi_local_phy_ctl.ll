; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_local_phy_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_local_phy_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }
%struct.local_phy_ctl_resp = type { i32, i32 }

@ID_BITS = common dso_local global i64 0, align 8
@OP_BITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%x phy execute %x phy op failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%x phy execute %x phy op success!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_local_phy_ctl(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.local_phy_ctl_resp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr i8, i8* %9, i64 4
  %11 = bitcast i8* %10 to %struct.local_phy_ctl_resp*
  store %struct.local_phy_ctl_resp* %11, %struct.local_phy_ctl_resp** %5, align 8
  %12 = load %struct.local_phy_ctl_resp*, %struct.local_phy_ctl_resp** %5, align 8
  %13 = getelementptr inbounds %struct.local_phy_ctl_resp, %struct.local_phy_ctl_resp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.local_phy_ctl_resp*, %struct.local_phy_ctl_resp** %5, align 8
  %17 = getelementptr inbounds %struct.local_phy_ctl_resp, %struct.local_phy_ctl_resp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  %20 = load i64, i64* @ID_BITS, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.local_phy_ctl_resp*, %struct.local_phy_ctl_resp** %5, align 8
  %23 = getelementptr inbounds %struct.local_phy_ctl_resp, %struct.local_phy_ctl_resp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = load i64, i64* @OP_BITS, align 8
  %27 = and i64 %25, %26
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  %35 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %31, i32 %34)
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %39)
  %41 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  ret i32 0
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
