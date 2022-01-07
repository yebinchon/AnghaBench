; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_parse_latt_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_parse_latt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_acqe_link = type { i32 }

@lpfc_acqe_link_status = common dso_local global i32 0, align 4
@LPFC_ATT_LINK_DOWN = common dso_local global i32 0, align 4
@LPFC_ATT_RESERVED = common dso_local global i32 0, align 4
@LPFC_ATT_LINK_UP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"0399 Invalid link attention type: x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_acqe_link*)* @lpfc_sli4_parse_latt_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_parse_latt_type(%struct.lpfc_hba* %0, %struct.lpfc_acqe_link* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_acqe_link*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_acqe_link* %1, %struct.lpfc_acqe_link** %4, align 8
  %6 = load i32, i32* @lpfc_acqe_link_status, align 4
  %7 = load %struct.lpfc_acqe_link*, %struct.lpfc_acqe_link** %4, align 8
  %8 = call i32 @bf_get(i32 %6, %struct.lpfc_acqe_link* %7)
  switch i32 %8, label %15 [
    i32 131, label %9
    i32 130, label %9
    i32 128, label %11
    i32 129, label %13
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* @LPFC_ATT_LINK_DOWN, align 4
  store i32 %10, i32* %5, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* @LPFC_ATT_RESERVED, align 4
  store i32 %12, i32* %5, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @LPFC_ATT_LINK_UP, align 4
  store i32 %14, i32* %5, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load i32, i32* @LOG_INIT, align 4
  %19 = load i32, i32* @lpfc_acqe_link_status, align 4
  %20 = load %struct.lpfc_acqe_link*, %struct.lpfc_acqe_link** %4, align 8
  %21 = call i32 @bf_get(i32 %19, %struct.lpfc_acqe_link* %20)
  %22 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @LPFC_ATT_RESERVED, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %15, %13, %11, %9
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_acqe_link*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
