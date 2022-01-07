; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i64, i64 }

@SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FNIC_HOST_RESET_SETTLE_TIME = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@LPORT_ST_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %5, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %13 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.fc_lport* %13, %struct.fc_lport** %6, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %15 = call i32 @fnic_reset(%struct.Scsi_Host* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SUCCESS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %1
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* @FNIC_HOST_RESET_SETTLE_TIME, align 8
  %22 = load i64, i64* @HZ, align 8
  %23 = mul i64 %21, %22
  %24 = add i64 %20, %23
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* @FAILED, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %44, %19
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @time_before(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LPORT_ST_READY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %37, %31
  %45 = call i32 @ssleep(i32 1)
  br label %26

46:                                               ; preds = %42, %26
  br label %47

47:                                               ; preds = %46, %1
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @fnic_reset(%struct.Scsi_Host*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
