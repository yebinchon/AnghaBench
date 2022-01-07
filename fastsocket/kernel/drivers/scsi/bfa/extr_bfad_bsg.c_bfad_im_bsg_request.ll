; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_im_bsg_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_im_bsg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_im_bsg_request(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %4 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %6 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %16 [
    i32 130, label %10
    i32 131, label %13
    i32 128, label %13
    i32 132, label %13
    i32 129, label %13
  ]

10:                                               ; preds = %1
  %11 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %12 = call i32 @bfad_im_bsg_vendor_request(%struct.fc_bsg_job* %11)
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %1, %1, %1, %1
  %14 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %15 = call i32 @bfad_im_bsg_els_ct_request(%struct.fc_bsg_job* %14)
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %20 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %24 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %16, %13, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @bfad_im_bsg_vendor_request(%struct.fc_bsg_job*) #1

declare dso_local i32 @bfad_im_bsg_els_ct_request(%struct.fc_bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
