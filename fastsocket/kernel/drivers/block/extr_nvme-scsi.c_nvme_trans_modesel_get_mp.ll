; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_modesel_get_mp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_modesel_get_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.nvme_dev* }
%struct.nvme_dev = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@CACHING_MODE_PAGE_WCE_MASK = common dso_local global i32 0, align 4
@NVME_FEAT_VOLATILE_WC = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@SNTI_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)* @nvme_trans_modesel_get_mp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_modesel_get_mp(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.sg_io_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvme_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %15 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %14, i32 0, i32 0
  %16 = load %struct.nvme_dev*, %struct.nvme_dev** %15, align 8
  store %struct.nvme_dev* %16, %struct.nvme_dev** %11, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %69 [
    i32 130, label %18
    i32 129, label %43
    i32 128, label %44
  ]

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CACHING_MODE_PAGE_WCE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %12, align 4
  %27 = load %struct.nvme_dev*, %struct.nvme_dev** %11, align 8
  %28 = load i32, i32* @NVME_FEAT_VOLATILE_WC, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @nvme_set_features(%struct.nvme_dev* %27, i32 %28, i32 %29, i32 0, i32* null)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %81

37:                                               ; preds = %18
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %9, align 4
  br label %81

42:                                               ; preds = %37
  br label %81

43:                                               ; preds = %4
  br label %81

44:                                               ; preds = %4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50, %44
  %57 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %58 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %59 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %60 = load i32, i32* @SCSI_ASC_INVALID_PARAMETER, align 4
  %61 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %62 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @SNTI_INTERNAL_ERROR, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %56
  br label %81

68:                                               ; preds = %50
  br label %81

69:                                               ; preds = %4
  %70 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %71 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %72 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %73 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %74 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %75 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %70, i32 %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* @SNTI_INTERNAL_ERROR, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %69
  br label %81

81:                                               ; preds = %80, %68, %67, %43, %42, %40, %36
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @nvme_set_features(%struct.nvme_dev*, i32, i32, i32, i32*) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
