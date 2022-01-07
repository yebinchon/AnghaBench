; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_nodev_tmo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_nodev_tmo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32 }

@LPFC_DEF_DEVLOSS_TMO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"0407 Ignoring nodev_tmo module parameter because devloss_tmo is set.\0A\00", align 1
@LPFC_MIN_DEVLOSS_TMO = common dso_local global i32 0, align 4
@LPFC_MAX_DEVLOSS_TMO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"0400 lpfc_nodev_tmo attribute cannot be set to %d, allowed range is [%d, %d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32)* @lpfc_nodev_tmo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nodev_tmo_init(%struct.lpfc_vport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %7 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LPFC_DEF_DEVLOSS_TMO, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @LPFC_DEF_DEVLOSS_TMO, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %22 = load i32, i32* @KERN_ERR, align 4
  %23 = load i32, i32* @LOG_INIT, align 4
  %24 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %11
  store i32 0, i32* %3, align 4
  br label %54

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @LPFC_MIN_DEVLOSS_TMO, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @LPFC_MAX_DEVLOSS_TMO, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %54

41:                                               ; preds = %30, %26
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load i32, i32* @LOG_INIT, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @LPFC_MIN_DEVLOSS_TMO, align 4
  %47 = load i32, i32* @LPFC_MAX_DEVLOSS_TMO, align 4
  %48 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @LPFC_DEF_DEVLOSS_TMO, align 4
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %41, %34, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
