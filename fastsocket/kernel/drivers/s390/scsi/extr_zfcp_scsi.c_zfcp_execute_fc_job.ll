; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_execute_fc_job.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_execute_fc_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @zfcp_execute_fc_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_execute_fc_job(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %4 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %5 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 130, label %9
    i32 129, label %12
    i32 131, label %12
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %11 = call i32 @zfcp_fc_execute_els_fc_job(%struct.fc_bsg_job* %10)
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1, %1
  %13 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %14 = call i32 @zfcp_fc_execute_ct_fc_job(%struct.fc_bsg_job* %13)
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @zfcp_fc_execute_els_fc_job(%struct.fc_bsg_job*) #1

declare dso_local i32 @zfcp_fc_execute_ct_fc_job(%struct.fc_bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
