; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_mode_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@MODE_SENSE = common dso_local global i64 0, align 8
@MODE_SENSE6_ALLOC_LEN_OFFSET = common dso_local global i32 0, align 4
@MODE_SENSE10_ALLOC_LEN_OFFSET = common dso_local global i32 0, align 4
@MODE_SENSE_PAGE_CONTROL_OFFSET = common dso_local global i32 0, align 4
@MODE_SENSE_PAGE_CONTROL_MASK = common dso_local global i32 0, align 4
@MODE_SENSE_PC_CURRENT_VALUES = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@MODE_SENSE_PAGE_CODE_OFFSET = common dso_local global i32 0, align 4
@MODE_SENSE_PAGE_CODE_MASK = common dso_local global i32 0, align 4
@nvme_trans_fill_caching_page = common dso_local global i32 0, align 4
@MODE_PAGE_CACHING_LEN = common dso_local global i32 0, align 4
@nvme_trans_fill_control_page = common dso_local global i32 0, align 4
@MODE_PAGE_CONTROL_LEN = common dso_local global i32 0, align 4
@nvme_trans_fill_pow_cnd_page = common dso_local global i32 0, align 4
@MODE_PAGE_POW_CND_LEN = common dso_local global i32 0, align 4
@nvme_trans_fill_inf_exc_page = common dso_local global i32 0, align 4
@MODE_PAGE_INF_EXC_LEN = common dso_local global i32 0, align 4
@nvme_trans_fill_all_pages = common dso_local global i32 0, align 4
@MODE_PAGE_ALL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*)* @nvme_trans_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_mode_sense(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @GET_OPCODE(i32* %13)
  %15 = load i64, i64* @MODE_SENSE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @MODE_SENSE6_ALLOC_LEN_OFFSET, align 4
  %20 = call i32 @GET_U8_FROM_CDB(i32* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @MODE_SENSE10_ALLOC_LEN_OFFSET, align 4
  %24 = call i32 @GET_U16_FROM_CDB(i32* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @MODE_SENSE_PAGE_CONTROL_OFFSET, align 4
  %28 = call i32 @GET_U8_FROM_CDB(i32* %26, i32 %27)
  %29 = load i32, i32* @MODE_SENSE_PAGE_CONTROL_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MODE_SENSE_PC_CURRENT_VALUES, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %36 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %37 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %38 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %39 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %40 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %96

41:                                               ; preds = %25
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @MODE_SENSE_PAGE_CODE_OFFSET, align 4
  %44 = call i32 @GET_U8_FROM_CDB(i32* %42, i32 %43)
  %45 = load i32, i32* @MODE_SENSE_PAGE_CODE_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %88 [
    i32 132, label %48
    i32 131, label %56
    i32 129, label %64
    i32 130, label %72
    i32 128, label %80
  ]

48:                                               ; preds = %41
  %49 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %50 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MODE_PAGE_CACHING_LEN, align 4
  %55 = call i32 @nvme_trans_mode_page_create(%struct.nvme_ns* %49, %struct.sg_io_hdr* %50, i32* %51, i32 %52, i32 %53, i32* @nvme_trans_fill_caching_page, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %95

56:                                               ; preds = %41
  %57 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %58 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @MODE_PAGE_CONTROL_LEN, align 4
  %63 = call i32 @nvme_trans_mode_page_create(%struct.nvme_ns* %57, %struct.sg_io_hdr* %58, i32* %59, i32 %60, i32 %61, i32* @nvme_trans_fill_control_page, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %95

64:                                               ; preds = %41
  %65 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %66 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @MODE_PAGE_POW_CND_LEN, align 4
  %71 = call i32 @nvme_trans_mode_page_create(%struct.nvme_ns* %65, %struct.sg_io_hdr* %66, i32* %67, i32 %68, i32 %69, i32* @nvme_trans_fill_pow_cnd_page, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %95

72:                                               ; preds = %41
  %73 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %74 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @MODE_PAGE_INF_EXC_LEN, align 4
  %79 = call i32 @nvme_trans_mode_page_create(%struct.nvme_ns* %73, %struct.sg_io_hdr* %74, i32* %75, i32 %76, i32 %77, i32* @nvme_trans_fill_inf_exc_page, i32 %78)
  store i32 %79, i32* %7, align 4
  br label %95

80:                                               ; preds = %41
  %81 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %82 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @MODE_PAGE_ALL_LEN, align 4
  %87 = call i32 @nvme_trans_mode_page_create(%struct.nvme_ns* %81, %struct.sg_io_hdr* %82, i32* %83, i32 %84, i32 %85, i32* @nvme_trans_fill_all_pages, i32 %86)
  store i32 %87, i32* %7, align 4
  br label %95

88:                                               ; preds = %41
  %89 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %90 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %91 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %92 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %93 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %94 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %89, i32 %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %88, %80, %72, %64, %56, %48
  br label %96

96:                                               ; preds = %95, %34
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i64 @GET_OPCODE(i32*) #1

declare dso_local i32 @GET_U8_FROM_CDB(i32*, i32) #1

declare dso_local i32 @GET_U16_FROM_CDB(i32*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_mode_page_create(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
