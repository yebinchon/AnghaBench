; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_scsi_translate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_scsi_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32, i32* }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_ILLEGAL_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*)* @nvme_scsi_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_scsi_translate(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  %11 = load i32, i32* @BLK_MAX_CDB, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %121

22:                                               ; preds = %2
  %23 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @copy_from_user(i32* %14, i32* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %121

34:                                               ; preds = %22
  %35 = getelementptr inbounds i32, i32* %14, i64 0
  %36 = load i32, i32* %35, align 16
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %111 [
    i32 143, label %38
    i32 146, label %38
    i32 145, label %38
    i32 144, label %38
    i32 129, label %42
    i32 132, label %42
    i32 131, label %42
    i32 130, label %42
    i32 152, label %46
    i32 151, label %50
    i32 150, label %54
    i32 149, label %54
    i32 148, label %58
    i32 147, label %58
    i32 142, label %62
    i32 137, label %66
    i32 141, label %75
    i32 140, label %79
    i32 139, label %83
    i32 138, label %83
    i32 136, label %87
    i32 135, label %91
    i32 153, label %95
    i32 134, label %99
    i32 128, label %103
    i32 133, label %107
  ]

38:                                               ; preds = %34, %34, %34, %34
  %39 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %40 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %41 = call i32 @nvme_trans_io(%struct.nvme_ns* %39, %struct.sg_io_hdr* %40, i32 0, i32* %14)
  store i32 %41, i32* %8, align 4
  br label %119

42:                                               ; preds = %34, %34, %34, %34
  %43 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %44 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %45 = call i32 @nvme_trans_io(%struct.nvme_ns* %43, %struct.sg_io_hdr* %44, i32 1, i32* %14)
  store i32 %45, i32* %8, align 4
  br label %119

46:                                               ; preds = %34
  %47 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %48 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %49 = call i32 @nvme_trans_inquiry(%struct.nvme_ns* %47, %struct.sg_io_hdr* %48, i32* %14)
  store i32 %49, i32* %8, align 4
  br label %119

50:                                               ; preds = %34
  %51 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %52 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %53 = call i32 @nvme_trans_log_sense(%struct.nvme_ns* %51, %struct.sg_io_hdr* %52, i32* %14)
  store i32 %53, i32* %8, align 4
  br label %119

54:                                               ; preds = %34, %34
  %55 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %56 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %57 = call i32 @nvme_trans_mode_select(%struct.nvme_ns* %55, %struct.sg_io_hdr* %56, i32* %14)
  store i32 %57, i32* %8, align 4
  br label %119

58:                                               ; preds = %34, %34
  %59 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %60 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %61 = call i32 @nvme_trans_mode_sense(%struct.nvme_ns* %59, %struct.sg_io_hdr* %60, i32* %14)
  store i32 %61, i32* %8, align 4
  br label %119

62:                                               ; preds = %34
  %63 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %64 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %65 = call i32 @nvme_trans_read_capacity(%struct.nvme_ns* %63, %struct.sg_io_hdr* %64, i32* %14)
  store i32 %65, i32* %8, align 4
  br label %119

66:                                               ; preds = %34
  %67 = call i32 @IS_READ_CAP_16(i32* %14)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %71 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %72 = call i32 @nvme_trans_read_capacity(%struct.nvme_ns* %70, %struct.sg_io_hdr* %71, i32* %14)
  store i32 %72, i32* %8, align 4
  br label %74

73:                                               ; preds = %66
  br label %112

74:                                               ; preds = %69
  br label %119

75:                                               ; preds = %34
  %76 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %77 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %78 = call i32 @nvme_trans_report_luns(%struct.nvme_ns* %76, %struct.sg_io_hdr* %77, i32* %14)
  store i32 %78, i32* %8, align 4
  br label %119

79:                                               ; preds = %34
  %80 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %81 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %82 = call i32 @nvme_trans_request_sense(%struct.nvme_ns* %80, %struct.sg_io_hdr* %81, i32* %14)
  store i32 %82, i32* %8, align 4
  br label %119

83:                                               ; preds = %34, %34
  %84 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %85 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %86 = call i32 @nvme_trans_security_protocol(%struct.nvme_ns* %84, %struct.sg_io_hdr* %85, i32* %14)
  store i32 %86, i32* %8, align 4
  br label %119

87:                                               ; preds = %34
  %88 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %89 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %90 = call i32 @nvme_trans_start_stop(%struct.nvme_ns* %88, %struct.sg_io_hdr* %89, i32* %14)
  store i32 %90, i32* %8, align 4
  br label %119

91:                                               ; preds = %34
  %92 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %93 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %94 = call i32 @nvme_trans_synchronize_cache(%struct.nvme_ns* %92, %struct.sg_io_hdr* %93, i32* %14)
  store i32 %94, i32* %8, align 4
  br label %119

95:                                               ; preds = %34
  %96 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %97 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %98 = call i32 @nvme_trans_format_unit(%struct.nvme_ns* %96, %struct.sg_io_hdr* %97, i32* %14)
  store i32 %98, i32* %8, align 4
  br label %119

99:                                               ; preds = %34
  %100 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %101 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %102 = call i32 @nvme_trans_test_unit_ready(%struct.nvme_ns* %100, %struct.sg_io_hdr* %101, i32* %14)
  store i32 %102, i32* %8, align 4
  br label %119

103:                                              ; preds = %34
  %104 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %105 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %106 = call i32 @nvme_trans_write_buffer(%struct.nvme_ns* %104, %struct.sg_io_hdr* %105, i32* %14)
  store i32 %106, i32* %8, align 4
  br label %119

107:                                              ; preds = %34
  %108 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %109 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %110 = call i32 @nvme_trans_unmap(%struct.nvme_ns* %108, %struct.sg_io_hdr* %109, i32* %14)
  store i32 %110, i32* %8, align 4
  br label %119

111:                                              ; preds = %34
  br label %112

112:                                              ; preds = %111, %73
  %113 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %114 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %115 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %116 = load i32, i32* @SCSI_ASC_ILLEGAL_COMMAND, align 4
  %117 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %118 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %112, %107, %103, %99, %95, %91, %87, %83, %79, %75, %74, %62, %58, %54, %50, %46, %42, %38
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %121

121:                                              ; preds = %119, %31, %19
  %122 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @copy_from_user(i32*, i32*, i32) #2

declare dso_local i32 @nvme_trans_io(%struct.nvme_ns*, %struct.sg_io_hdr*, i32, i32*) #2

declare dso_local i32 @nvme_trans_inquiry(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_log_sense(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_mode_select(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_mode_sense(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_read_capacity(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @IS_READ_CAP_16(i32*) #2

declare dso_local i32 @nvme_trans_report_luns(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_request_sense(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_security_protocol(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_start_stop(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_synchronize_cache(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_format_unit(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_test_unit_ready(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_write_buffer(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_unmap(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*) #2

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
