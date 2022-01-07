; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_sci_task_request_build_ssp_task_iu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_sci_task_request_build_ssp_task_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ssp_task_iu }
%struct.ssp_task_iu = type { i32, i32, i32 }
%struct.sas_task = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.isci_tmf = type { i32, i32 }

@IREQ_TMF = common dso_local global i32 0, align 4
@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*)* @sci_task_request_build_ssp_task_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_task_request_build_ssp_task_iu(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  %3 = alloca %struct.ssp_task_iu*, align 8
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca %struct.isci_tmf*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  %6 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %7 = call %struct.sas_task* @isci_request_access_task(%struct.isci_request* %6)
  store %struct.sas_task* %7, %struct.sas_task** %4, align 8
  %8 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %9 = call %struct.isci_tmf* @isci_request_access_tmf(%struct.isci_request* %8)
  store %struct.isci_tmf* %9, %struct.isci_tmf** %5, align 8
  %10 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %11 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.ssp_task_iu* %12, %struct.ssp_task_iu** %3, align 8
  %13 = load %struct.ssp_task_iu*, %struct.ssp_task_iu** %3, align 8
  %14 = call i32 @memset(%struct.ssp_task_iu* %13, i32 0, i32 12)
  %15 = load %struct.ssp_task_iu*, %struct.ssp_task_iu** %3, align 8
  %16 = getelementptr inbounds %struct.ssp_task_iu, %struct.ssp_task_iu* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %19 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32 %17, i32 %21, i32 8)
  %23 = load %struct.isci_tmf*, %struct.isci_tmf** %5, align 8
  %24 = getelementptr inbounds %struct.isci_tmf, %struct.isci_tmf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ssp_task_iu*, %struct.ssp_task_iu** %3, align 8
  %27 = getelementptr inbounds %struct.ssp_task_iu, %struct.ssp_task_iu* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @IREQ_TMF, align 4
  %29 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %30 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.isci_tmf*, %struct.isci_tmf** %5, align 8
  %35 = getelementptr inbounds %struct.isci_tmf, %struct.isci_tmf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %36, %33 ], [ %38, %37 ]
  %41 = load %struct.ssp_task_iu*, %struct.ssp_task_iu** %3, align 8
  %42 = getelementptr inbounds %struct.ssp_task_iu, %struct.ssp_task_iu* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local %struct.sas_task* @isci_request_access_task(%struct.isci_request*) #1

declare dso_local %struct.isci_tmf* @isci_request_access_tmf(%struct.isci_request*) #1

declare dso_local i32 @memset(%struct.ssp_task_iu*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
