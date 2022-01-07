; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_bsg_request(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %5 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %6 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %20 [
    i32 130, label %11
    i32 128, label %14
    i32 129, label %17
  ]

11:                                               ; preds = %1
  %12 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %13 = call i32 @lpfc_bsg_hst_vendor(%struct.fc_bsg_job* %12)
  store i32 %13, i32* %4, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %16 = call i32 @lpfc_bsg_rport_els(%struct.fc_bsg_job* %15)
  store i32 %16, i32* %4, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %19 = call i32 @lpfc_bsg_send_mgmt_cmd(%struct.fc_bsg_job* %18)
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %24 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %29 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %20, %17, %14, %11
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @lpfc_bsg_hst_vendor(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_bsg_rport_els(%struct.fc_bsg_job*) #1

declare dso_local i32 @lpfc_bsg_send_mgmt_cmd(%struct.fc_bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
