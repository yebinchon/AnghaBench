; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_hst_vendor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_hst_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_bsg_hst_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_hst_vendor(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %5 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %6 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %45 [
    i32 128, label %15
    i32 135, label %18
    i32 129, label %21
    i32 138, label %24
    i32 137, label %27
    i32 136, label %30
    i32 133, label %33
    i32 134, label %36
    i32 132, label %39
    i32 131, label %42
    i32 130, label %42
  ]

15:                                               ; preds = %1
  %16 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %17 = call i32 @lpfc_bsg_hba_set_event(%struct.fc_bsg_job* %16)
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %20 = call i32 @lpfc_bsg_hba_get_event(%struct.fc_bsg_job* %19)
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %1
  %22 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %23 = call i32 @lpfc_bsg_send_mgmt_rsp(%struct.fc_bsg_job* %22)
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %1
  %25 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %26 = call i32 @lpfc_bsg_diag_loopback_mode(%struct.fc_bsg_job* %25)
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %1
  %28 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %29 = call i32 @lpfc_sli4_bsg_diag_mode_end(%struct.fc_bsg_job* %28)
  store i32 %29, i32* %4, align 4
  br label %57

30:                                               ; preds = %1
  %31 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %32 = call i32 @lpfc_bsg_diag_loopback_run(%struct.fc_bsg_job* %31)
  store i32 %32, i32* %4, align 4
  br label %57

33:                                               ; preds = %1
  %34 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %35 = call i32 @lpfc_sli4_bsg_link_diag_test(%struct.fc_bsg_job* %34)
  store i32 %35, i32* %4, align 4
  br label %57

36:                                               ; preds = %1
  %37 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %38 = call i32 @lpfc_bsg_get_dfc_rev(%struct.fc_bsg_job* %37)
  store i32 %38, i32* %4, align 4
  br label %57

39:                                               ; preds = %1
  %40 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %41 = call i32 @lpfc_bsg_mbox_cmd(%struct.fc_bsg_job* %40)
  store i32 %41, i32* %4, align 4
  br label %57

42:                                               ; preds = %1, %1
  %43 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %44 = call i32 @lpfc_menlo_cmd(%struct.fc_bsg_job* %43)
  store i32 %44, i32* %4, align 4
  br label %57

45:                                               ; preds = %1
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  %48 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %49 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %54 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @lpfc_bsg_hba_set_event(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_bsg_hba_get_event(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_bsg_send_mgmt_rsp(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_bsg_diag_loopback_mode(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_sli4_bsg_diag_mode_end(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_bsg_diag_loopback_run(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_sli4_bsg_link_diag_test(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_bsg_get_dfc_rev(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_bsg_mbox_cmd(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_menlo_cmd(%struct.fc_bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
