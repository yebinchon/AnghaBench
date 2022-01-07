; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, {}*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.srp_target_port = type { i32 }
%struct.srp_request = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SRP abort called\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SRP_TSK_ABORT_TASK = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @srp_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.srp_target_port*, align 8
  %5 = alloca %struct.srp_request*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.srp_target_port* @host_to_target(i32 %10)
  store %struct.srp_target_port* %11, %struct.srp_target_port** %4, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.srp_request*
  store %struct.srp_request* %15, %struct.srp_request** %5, align 8
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %18 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @shost_printk(i32 %16, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.srp_request*, %struct.srp_request** %5, align 8
  %22 = icmp ne %struct.srp_request* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %25 = load %struct.srp_request*, %struct.srp_request** %5, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = call i32 @srp_claim_req(%struct.srp_target_port* %24, %struct.srp_request* %25, %struct.scsi_cmnd* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23, %1
  %30 = load i32, i32* @FAILED, align 4
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %23
  %32 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %33 = load %struct.srp_request*, %struct.srp_request** %5, align 8
  %34 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SRP_TSK_ABORT_TASK, align 4
  %42 = call i32 @srp_send_tsk_mgmt(%struct.srp_target_port* %32, i32 %35, i32 %40, i32 %41)
  %43 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %44 = load %struct.srp_request*, %struct.srp_request** %5, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = call i32 @srp_free_req(%struct.srp_target_port* %43, %struct.srp_request* %44, %struct.scsi_cmnd* %45, i32 0)
  %47 = load i32, i32* @DID_ABORT, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 1
  %53 = bitcast {}** %52 to i32 (%struct.scsi_cmnd*)**
  %54 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %53, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = call i32 %54(%struct.scsi_cmnd* %55)
  %57 = load i32, i32* @SUCCESS, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %31, %29
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.srp_target_port* @host_to_target(i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*) #1

declare dso_local i32 @srp_claim_req(%struct.srp_target_port*, %struct.srp_request*, %struct.scsi_cmnd*) #1

declare dso_local i32 @srp_send_tsk_mgmt(%struct.srp_target_port*, i32, i32, i32) #1

declare dso_local i32 @srp_free_req(%struct.srp_target_port*, %struct.srp_request*, %struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
