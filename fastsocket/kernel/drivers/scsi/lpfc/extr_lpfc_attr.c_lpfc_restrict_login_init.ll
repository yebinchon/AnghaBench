; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_restrict_login_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_restrict_login_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"0422 lpfc_restrict_login attribute cannot be set to %d, allowed range is [0, 1]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32)* @lpfc_restrict_login_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_restrict_login_init(%struct.lpfc_vport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %21

11:                                               ; preds = %8, %2
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = load i32, i32* @LOG_INIT, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %34

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %27, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
