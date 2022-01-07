; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_modesel_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_modesel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MODE_SELECT_10_MPH_SIZE = common dso_local global i64 0, align 8
@MODE_SELECT_6_MPH_SIZE = common dso_local global i64 0, align 8
@MODE_SELECT_PAGE_CODE_MASK = common dso_local global i32 0, align 4
@MODE_PAGE_CACHING = common dso_local global i32 0, align 4
@MODE_PAGE_CONTROL = common dso_local global i32 0, align 4
@MODE_PAGE_POWER_CONDITION = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i64, i32, i32, i32)* @nvme_trans_modesel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_modesel_data(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nvme_ns*, align 8
  %9 = alloca %struct.sg_io_hdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %8, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i64 %24, i32 %25)
  store i32* %26, i32** %16, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %15, align 4
  br label %146

32:                                               ; preds = %7
  %33 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %9, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @nvme_trans_copy_from_user(%struct.sg_io_hdr* %33, i32* %34, i64 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %143

41:                                               ; preds = %32
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @nvme_trans_modesel_get_bd_len(i32* %42, i32 %43, i64* %17, i32* %18)
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* @MODE_SELECT_10_MPH_SIZE, align 8
  br label %51

49:                                               ; preds = %41
  %50 = load i64, i64* @MODE_SELECT_6_MPH_SIZE, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  store i64 %52, i64* %19, align 8
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* %17, align 8
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @nvme_trans_modesel_save_bd(%struct.nvme_ns* %56, i32* %57, i64 %58, i64 %59, i32 %60)
  %62 = load i64, i64* %17, align 8
  %63 = load i64, i64* %19, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %19, align 8
  br label %65

65:                                               ; preds = %55, %51
  %66 = load i64, i64* %19, align 8
  store i64 %66, i64* %20, align 8
  br label %67

67:                                               ; preds = %103, %65
  %68 = load i32*, i32** %16, align 8
  %69 = load i64, i64* %19, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MODE_SELECT_PAGE_CODE_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %21, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = load i64, i64* %19, align 8
  %76 = add nsw i64 %75, 1
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %22, align 8
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* @MODE_PAGE_CACHING, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %67
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* @MODE_PAGE_CONTROL, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* @MODE_PAGE_POWER_CONDITION, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %9, align 8
  %94 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %95 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %96 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %97 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %98 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %15, align 4
  br label %143

99:                                               ; preds = %88, %84, %67
  %100 = load i64, i64* %22, align 8
  %101 = load i64, i64* %19, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %19, align 8
  br label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %67, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %20, align 8
  store i64 %108, i64* %19, align 8
  br label %109

109:                                              ; preds = %138, %107
  %110 = load i32*, i32** %16, align 8
  %111 = load i64, i64* %19, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MODE_SELECT_PAGE_CODE_MASK, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %21, align 4
  %116 = load i32*, i32** %16, align 8
  %117 = load i64, i64* %19, align 8
  %118 = add nsw i64 %117, 1
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %22, align 8
  %123 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %124 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %9, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = load i64, i64* %19, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %21, align 4
  %129 = call i32 @nvme_trans_modesel_get_mp(%struct.nvme_ns* %123, %struct.sg_io_hdr* %124, i32* %127, i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %109
  br label %142

134:                                              ; preds = %109
  %135 = load i64, i64* %22, align 8
  %136 = load i64, i64* %19, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %19, align 8
  br label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %11, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %109, label %142

142:                                              ; preds = %138, %133
  br label %143

143:                                              ; preds = %142, %92, %40
  %144 = load i32*, i32** %16, align 8
  %145 = call i32 @kfree(i32* %144)
  br label %146

146:                                              ; preds = %143, %29
  %147 = load i32, i32* %15, align 4
  ret i32 %147
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @nvme_trans_copy_from_user(%struct.sg_io_hdr*, i32*, i64) #1

declare dso_local i32 @nvme_trans_modesel_get_bd_len(i32*, i32, i64*, i32*) #1

declare dso_local i32 @nvme_trans_modesel_save_bd(%struct.nvme_ns*, i32*, i64, i64, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_modesel_get_mp(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
