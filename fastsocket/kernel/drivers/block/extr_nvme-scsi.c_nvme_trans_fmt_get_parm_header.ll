; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fmt_get_parm_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fmt_get_parm_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FORMAT_UNIT_IMMED_OFFSET = common dso_local global i64 0, align 8
@FORMAT_UNIT_IMMED_MASK = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@FORMAT_UNIT_LONG_PARM_LIST_LEN = common dso_local global i32 0, align 4
@FORMAT_UNIT_PROT_INT_OFFSET = common dso_local global i64 0, align 8
@FORMAT_UNIT_PROT_FIELD_USAGE_OFFSET = common dso_local global i64 0, align 8
@FORMAT_UNIT_PROT_FIELD_USAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sg_io_hdr*, i32, i32, i32*)* @nvme_trans_fmt_get_parm_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_fmt_get_parm_header(%struct.sg_io_hdr* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sg_io_hdr* %0, %struct.sg_io_hdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %95

22:                                               ; preds = %4
  %23 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @nvme_trans_copy_from_user(%struct.sg_io_hdr* %23, i32* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %92

31:                                               ; preds = %22
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* @FORMAT_UNIT_IMMED_OFFSET, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FORMAT_UNIT_IMMED_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %41 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %42 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %43 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %44 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %45 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %40, i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %92

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @FORMAT_UNIT_LONG_PARM_LIST_LEN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* @FORMAT_UNIT_PROT_INT_OFFSET, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %59 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %60 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %61 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %62 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %63 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %9, align 4
  br label %92

64:                                               ; preds = %50, %46
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* @FORMAT_UNIT_PROT_FIELD_USAGE_OFFSET, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FORMAT_UNIT_PROT_FIELD_USAGE_MASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = shl i32 %71, 2
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  switch i32 %75, label %84 [
    i32 0, label %76
    i32 2, label %78
    i32 3, label %80
    i32 7, label %82
  ]

76:                                               ; preds = %64
  %77 = load i32*, i32** %8, align 8
  store i32 0, i32* %77, align 4
  br label %91

78:                                               ; preds = %64
  %79 = load i32*, i32** %8, align 8
  store i32 1, i32* %79, align 4
  br label %91

80:                                               ; preds = %64
  %81 = load i32*, i32** %8, align 8
  store i32 2, i32* %81, align 4
  br label %91

82:                                               ; preds = %64
  %83 = load i32*, i32** %8, align 8
  store i32 3, i32* %83, align 4
  br label %91

84:                                               ; preds = %64
  %85 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %86 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %87 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %88 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %89 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %90 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %84, %82, %80, %78, %76
  br label %92

92:                                               ; preds = %91, %57, %39, %30
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @kfree(i32* %93)
  br label %95

95:                                               ; preds = %92, %19
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @nvme_trans_copy_from_user(%struct.sg_io_hdr*, i32*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
