; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_rport_set_dev_loss_tmo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_rport_set_dev_loss_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i64, i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fc_rport*, i64)* }

@FC_PORTSTATE_BLOCKED = common dso_local global i64 0, align 8
@FC_PORTSTATE_DELETED = common dso_local global i64 0, align 8
@FC_PORTSTATE_NOTPRESENT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SCSI_DEVICE_BLOCK_MAX_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rport*, i64)* @fc_rport_set_dev_loss_tmo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_rport_set_dev_loss_tmo(%struct.fc_rport* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_rport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.fc_internal*, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %9 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %6, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.fc_internal* @to_fc_internal(i32 %12)
  store %struct.fc_internal* %13, %struct.fc_internal** %7, align 8
  %14 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %15 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FC_PORTSTATE_BLOCKED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %2
  %20 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %21 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FC_PORTSTATE_DELETED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %27 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FC_PORTSTATE_NOTPRESENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19, %2
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %25
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @UINT_MAX, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %34
  %42 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %43 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @SCSI_DEVICE_BLOCK_MAX_TIMEOUT, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %46, %41
  %54 = load %struct.fc_internal*, %struct.fc_internal** %7, align 8
  %55 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.fc_rport*, i64)*, i32 (%struct.fc_rport*, i64)** %57, align 8
  %59 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 %58(%struct.fc_rport* %59, i64 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %50, %38, %31
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
