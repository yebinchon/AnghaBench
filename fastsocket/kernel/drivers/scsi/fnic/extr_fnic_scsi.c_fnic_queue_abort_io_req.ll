; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_queue_abort_io_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_queue_abort_io_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i64*, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.vnic_wq_copy* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32* }
%struct.vnic_wq_copy = type { i32 }
%struct.fnic_io_req = type { i32 }

@FNIC_FLAGS_IO_BLOCKED = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fnic_queue_abort_io_req: failure: no descriptors\0A\00", align 1
@FNIC_TAG_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, i32, i32, i32*, %struct.fnic_io_req*)* @fnic_queue_abort_io_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_queue_abort_io_req(%struct.fnic* %0, i32 %1, i32 %2, i32* %3, %struct.fnic_io_req* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fnic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fnic_io_req*, align 8
  %12 = alloca %struct.vnic_wq_copy*, align 8
  %13 = alloca %struct.Scsi_Host*, align 8
  %14 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.fnic_io_req* %4, %struct.fnic_io_req** %11, align 8
  %15 = load %struct.fnic*, %struct.fnic** %7, align 8
  %16 = getelementptr inbounds %struct.fnic, %struct.fnic* %15, i32 0, i32 5
  %17 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %16, align 8
  %18 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %17, i64 0
  store %struct.vnic_wq_copy* %18, %struct.vnic_wq_copy** %12, align 8
  %19 = load %struct.fnic*, %struct.fnic** %7, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %22, align 8
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %13, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.fnic*, %struct.fnic** %7, align 8
  %30 = load i32, i32* @FNIC_FLAGS_IO_BLOCKED, align 4
  %31 = call i32 @fnic_chk_state_flags_locked(%struct.fnic* %29, i32 %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  store i32 1, i32* %6, align 4
  br label %118

40:                                               ; preds = %5
  %41 = load %struct.fnic*, %struct.fnic** %7, align 8
  %42 = getelementptr inbounds %struct.fnic, %struct.fnic* %41, i32 0, i32 1
  %43 = call i32 @atomic_inc(i32* %42)
  br label %44

44:                                               ; preds = %40
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.fnic*, %struct.fnic** %7, align 8
  %51 = getelementptr inbounds %struct.fnic, %struct.fnic* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %12, align 8
  %57 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %56)
  %58 = load %struct.fnic*, %struct.fnic** %7, align 8
  %59 = getelementptr inbounds %struct.fnic, %struct.fnic* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %57, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %44
  %65 = load %struct.fnic*, %struct.fnic** %7, align 8
  %66 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %12, align 8
  %67 = call i32 @free_wq_copy_descs(%struct.fnic* %65, %struct.vnic_wq_copy* %66)
  br label %68

68:                                               ; preds = %64, %44
  %69 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %12, align 8
  %70 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %68
  %73 = load %struct.fnic*, %struct.fnic** %7, align 8
  %74 = getelementptr inbounds %struct.fnic, %struct.fnic* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.fnic*, %struct.fnic** %7, align 8
  %80 = getelementptr inbounds %struct.fnic, %struct.fnic* %79, i32 0, i32 1
  %81 = call i32 @atomic_dec(i32* %80)
  %82 = load i32, i32* @KERN_DEBUG, align 4
  %83 = load %struct.fnic*, %struct.fnic** %7, align 8
  %84 = getelementptr inbounds %struct.fnic, %struct.fnic* %83, i32 0, i32 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %86, align 8
  %88 = call i32 @FNIC_SCSI_DBG(i32 %82, %struct.Scsi_Host* %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %118

89:                                               ; preds = %68
  %90 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %12, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @FNIC_TAG_ABORT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load %struct.fnic_io_req*, %struct.fnic_io_req** %11, align 8
  %98 = getelementptr inbounds %struct.fnic_io_req, %struct.fnic_io_req* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fnic*, %struct.fnic** %7, align 8
  %101 = getelementptr inbounds %struct.fnic, %struct.fnic* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.fnic*, %struct.fnic** %7, align 8
  %105 = getelementptr inbounds %struct.fnic, %struct.fnic* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @fnic_queue_wq_copy_desc_itmf(%struct.vnic_wq_copy* %90, i32 %93, i32 0, i32 %94, i32 %95, i32* %96, i32 %99, i32 %103, i32 %107)
  %109 = load %struct.fnic*, %struct.fnic** %7, align 8
  %110 = getelementptr inbounds %struct.fnic, %struct.fnic* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i64, i64* %14, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load %struct.fnic*, %struct.fnic** %7, align 8
  %116 = getelementptr inbounds %struct.fnic, %struct.fnic* %115, i32 0, i32 1
  %117 = call i32 @atomic_dec(i32* %116)
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %89, %72, %34
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fnic_chk_state_flags_locked(%struct.fnic*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy*) #1

declare dso_local i32 @free_wq_copy_descs(%struct.fnic*, %struct.vnic_wq_copy*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @fnic_queue_wq_copy_desc_itmf(%struct.vnic_wq_copy*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
