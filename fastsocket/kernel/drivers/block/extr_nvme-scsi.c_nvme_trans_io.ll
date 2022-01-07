; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32, i32, i64 }
%struct.nvme_trans_io_cdb = type { i32 }
%struct.sg_iovec = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@SNTI_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32, i32*)* @nvme_trans_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_io(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.sg_io_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvme_trans_io_cdb, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sg_iovec, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %6, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %35 [
    i32 128, label %23
    i32 132, label %23
    i32 131, label %26
    i32 135, label %26
    i32 130, label %29
    i32 134, label %29
    i32 129, label %32
    i32 133, label %32
  ]

23:                                               ; preds = %4, %4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @nvme_trans_get_io_cdb6(i32* %24, %struct.nvme_trans_io_cdb* %11)
  br label %37

26:                                               ; preds = %4, %4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @nvme_trans_get_io_cdb10(i32* %27, %struct.nvme_trans_io_cdb* %11)
  br label %37

29:                                               ; preds = %4, %4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @nvme_trans_get_io_cdb12(i32* %30, %struct.nvme_trans_io_cdb* %11)
  br label %37

32:                                               ; preds = %4, %4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @nvme_trans_get_io_cdb16(i32* %33, %struct.nvme_trans_io_cdb* %11)
  br label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @SNTI_INTERNAL_ERROR, align 4
  store i32 %36, i32* %10, align 4
  br label %124

37:                                               ; preds = %32, %29, %26, %23
  %38 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %37
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %84, %42
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %46 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %43
  %50 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %51 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = add i64 %52, %55
  %57 = call i64 @copy_from_user(%struct.sg_iovec* %15, i64 %56, i32 4)
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %17, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %126

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %15, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %14, align 4
  %68 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %15, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %71 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = srem i32 %69, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %63
  %77 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %78 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %79 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %80 = load i32, i32* @SCSI_ASC_INVALID_PARAMETER, align 4
  %81 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %82 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %124

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %43

87:                                               ; preds = %43
  br label %92

88:                                               ; preds = %37
  %89 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %90 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %88, %87
  %93 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %94 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @min(i32 %95, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = getelementptr inbounds %struct.nvme_trans_io_cdb, %struct.nvme_trans_io_cdb* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %102 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %100, %103
  %105 = icmp ne i32 %98, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %10, align 4
  br label %124

109:                                              ; preds = %92
  %110 = getelementptr inbounds %struct.nvme_trans_io_cdb, %struct.nvme_trans_io_cdb* %11, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %124

114:                                              ; preds = %109
  %115 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %116 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @nvme_trans_do_nvme_io(%struct.nvme_ns* %115, %struct.sg_io_hdr* %116, %struct.nvme_trans_io_cdb* %11, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %124

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %122, %113, %106, %76, %35
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %60
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @nvme_trans_get_io_cdb6(i32*, %struct.nvme_trans_io_cdb*) #1

declare dso_local i32 @nvme_trans_get_io_cdb10(i32*, %struct.nvme_trans_io_cdb*) #1

declare dso_local i32 @nvme_trans_get_io_cdb12(i32*, %struct.nvme_trans_io_cdb*) #1

declare dso_local i32 @nvme_trans_get_io_cdb16(i32*, %struct.nvme_trans_io_cdb*) #1

declare dso_local i64 @copy_from_user(%struct.sg_iovec*, i64, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_trans_do_nvme_io(%struct.nvme_ns*, %struct.sg_io_hdr*, %struct.nvme_trans_io_cdb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
