; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_queue_dr_io_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_queue_dr_io_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i64*, i32, i32*, %struct.TYPE_8__, %struct.TYPE_5__*, %struct.vnic_wq_copy* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32* }
%struct.vnic_wq_copy = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fnic_io_req = type { i32 }
%struct.scsi_lun = type { i32 }

@FNIC_FLAGS_IO_BLOCKED = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"queue_dr_io_req failure - no descriptors\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@FNIC_TAG_DEV_RST = common dso_local global i32 0, align 4
@FCPIO_ITMF_LUN_RESET = common dso_local global i32 0, align 4
@SCSI_NO_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, %struct.scsi_cmnd*, %struct.fnic_io_req*)* @fnic_queue_dr_io_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_queue_dr_io_req(%struct.fnic* %0, %struct.scsi_cmnd* %1, %struct.fnic_io_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fnic*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.fnic_io_req*, align 8
  %8 = alloca %struct.vnic_wq_copy*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.scsi_lun, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct.fnic_io_req* %2, %struct.fnic_io_req** %7, align 8
  %13 = load %struct.fnic*, %struct.fnic** %5, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 5
  %15 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %14, align 8
  %16 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %15, i64 0
  store %struct.vnic_wq_copy* %16, %struct.vnic_wq_copy** %8, align 8
  %17 = load %struct.fnic*, %struct.fnic** %5, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %20, align 8
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %9, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.fnic*, %struct.fnic** %5, align 8
  %28 = load i32, i32* @FNIC_FLAGS_IO_BLOCKED, align 4
  %29 = call i32 @fnic_chk_state_flags_locked(%struct.fnic* %27, i32 %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @FAILED, align 4
  store i32 %38, i32* %4, align 4
  br label %123

39:                                               ; preds = %3
  %40 = load %struct.fnic*, %struct.fnic** %5, align 8
  %41 = getelementptr inbounds %struct.fnic, %struct.fnic* %40, i32 0, i32 1
  %42 = call i32 @atomic_inc(i32* %41)
  br label %43

43:                                               ; preds = %39
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.fnic*, %struct.fnic** %5, align 8
  %50 = getelementptr inbounds %struct.fnic, %struct.fnic* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %56 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %55)
  %57 = load %struct.fnic*, %struct.fnic** %5, align 8
  %58 = getelementptr inbounds %struct.fnic, %struct.fnic* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sle i64 %56, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %43
  %64 = load %struct.fnic*, %struct.fnic** %5, align 8
  %65 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %66 = call i32 @free_wq_copy_descs(%struct.fnic* %64, %struct.vnic_wq_copy* %65)
  br label %67

67:                                               ; preds = %63, %43
  %68 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %69 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @KERN_DEBUG, align 4
  %73 = load %struct.fnic*, %struct.fnic** %5, align 8
  %74 = getelementptr inbounds %struct.fnic, %struct.fnic* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %76, align 8
  %78 = call i32 @FNIC_SCSI_DBG(i32 %72, %struct.Scsi_Host* %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %112

81:                                               ; preds = %67
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @int_to_scsilun(i32 %86, %struct.scsi_lun* %10)
  %88 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @FNIC_TAG_DEV_RST, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @FCPIO_ITMF_LUN_RESET, align 4
  %97 = load i32, i32* @SCSI_NO_TAG, align 4
  %98 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %10, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fnic_io_req*, %struct.fnic_io_req** %7, align 8
  %101 = getelementptr inbounds %struct.fnic_io_req, %struct.fnic_io_req* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fnic*, %struct.fnic** %5, align 8
  %104 = getelementptr inbounds %struct.fnic, %struct.fnic* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fnic*, %struct.fnic** %5, align 8
  %108 = getelementptr inbounds %struct.fnic, %struct.fnic* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @fnic_queue_wq_copy_desc_itmf(%struct.vnic_wq_copy* %88, i32 %95, i32 0, i32 %96, i32 %97, i32 %99, i32 %102, i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %81, %71
  %113 = load %struct.fnic*, %struct.fnic** %5, align 8
  %114 = getelementptr inbounds %struct.fnic, %struct.fnic* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.fnic*, %struct.fnic** %5, align 8
  %120 = getelementptr inbounds %struct.fnic, %struct.fnic* %119, i32 0, i32 1
  %121 = call i32 @atomic_dec(i32* %120)
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %112, %32
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fnic_chk_state_flags_locked(%struct.fnic*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy*) #1

declare dso_local i32 @free_wq_copy_descs(%struct.fnic*, %struct.vnic_wq_copy*) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @fnic_queue_wq_copy_desc_itmf(%struct.vnic_wq_copy*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
