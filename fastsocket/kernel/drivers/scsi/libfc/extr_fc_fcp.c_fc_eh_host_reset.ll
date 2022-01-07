; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.fc_lport.0*)* }
%struct.fc_lport.0 = type opaque

@.str = private unnamed_addr constant [16 x i8] c"Resetting host\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@FC_HOST_RESET_TIMEOUT = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"libfc: Host reset succeeded on port (%6.6x)\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"libfc: Host reset failed, port (%6.6x) is not ready.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.fc_lport* %13, %struct.fc_lport** %5, align 8
  %14 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %15 = call i32 @FC_SCSI_DBG(%struct.fc_lport* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %16)
  %18 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %19 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.fc_lport.0*)*, i32 (%struct.fc_lport.0*)** %20, align 8
  %22 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %23 = bitcast %struct.fc_lport* %22 to %struct.fc_lport.0*
  %24 = call i32 %21(%struct.fc_lport.0* %23)
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* @FC_HOST_RESET_TIMEOUT, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %39, %1
  %29 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %30 = call i64 @fc_fcp_lport_queue_ready(%struct.fc_lport* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @time_before(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ false, %28 ], [ %36, %32 ]
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = call i32 @msleep(i32 1000)
  br label %28

41:                                               ; preds = %37
  %42 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %43 = call i64 @fc_fcp_lport_queue_ready(%struct.fc_lport* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* @KERN_INFO, align 4
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %48 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %49 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @shost_printk(i32 %46, %struct.Scsi_Host* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @SUCCESS, align 4
  store i32 %52, i32* %2, align 4
  br label %61

53:                                               ; preds = %41
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %56 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %57 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @shost_printk(i32 %54, %struct.Scsi_Host* %55, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @FAILED, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %45
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @FC_SCSI_DBG(%struct.fc_lport*, i8*) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i64 @fc_fcp_lport_queue_ready(%struct.fc_lport*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
