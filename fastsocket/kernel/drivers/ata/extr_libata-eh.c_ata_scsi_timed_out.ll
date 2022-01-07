; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_scsi_timed_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_scsi_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.ata_port = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ata_queued_cmd = type { i32, i32, %struct.scsi_cmnd* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@BLK_EH_NOT_HANDLED = common dso_local global i32 0, align 4
@BLK_EH_HANDLED = common dso_local global i32 0, align 4
@ATA_QCFLAG_EH_SCHEDULED = common dso_local global i32 0, align 4
@AC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"EXIT, ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_scsi_timed_out(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %3, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host* %13)
  store %struct.ata_port* %14, %struct.ata_port** %4, align 8
  %15 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @BLK_EH_NOT_HANDLED, align 4
  store i32 %23, i32* %7, align 4
  br label %64

24:                                               ; preds = %1
  %25 = load i32, i32* @BLK_EH_HANDLED, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  %31 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %32 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %31, i32 %35)
  store %struct.ata_queued_cmd* %36, %struct.ata_queued_cmd** %6, align 8
  %37 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %38 = icmp ne %struct.ata_queued_cmd* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %24
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 2
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %41, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %44 = icmp ne %struct.scsi_cmnd* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load i32, i32* @ATA_QCFLAG_EH_SCHEDULED, align 4
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %53 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @BLK_EH_NOT_HANDLED, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %39, %24
  %59 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %60 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %58, %22
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
