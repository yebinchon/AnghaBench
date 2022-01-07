; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_test_unit_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_test_unit_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@NVME_CSTS_RDY = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i32 0, align 4
@SCSI_ASC_LUN_NOT_READY = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@NO_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*)* @nvme_trans_test_unit_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_test_unit_ready(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvme_dev*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %10, i32 0, i32 0
  %12 = load %struct.nvme_dev*, %struct.nvme_dev** %11, align 8
  store %struct.nvme_dev* %12, %struct.nvme_dev** %8, align 8
  %13 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %14 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @readl(i32* %16)
  %18 = load i32, i32* @NVME_CSTS_RDY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %23 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %24 = load i32, i32* @NOT_READY, align 4
  %25 = load i32, i32* @SCSI_ASC_LUN_NOT_READY, align 4
  %26 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %27 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %30 = load i32, i32* @SAM_STAT_GOOD, align 4
  %31 = load i32, i32* @NO_SENSE, align 4
  %32 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %29, i32 %30, i32 %31, i32 0, i32 0)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
