; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_set_cam_result_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_set_cam_result_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_ccb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@HF_SENSE = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i64 0, align 8
@HS_COMPLETE = common dso_local global i32 0, align 4
@S_GOOD = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SYM_SNS_BBUF_LEN = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@HS_SEL_TIMEOUT = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@HS_UNEXPECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"COMMAND FAILED (%x %x %x).\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_set_cam_result_error(%struct.sym_hcb* %0, %struct.sym_ccb* %1, i32 %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.sym_ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %12 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %11, i32 0, i32 10
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  store %struct.scsi_cmnd* %13, %struct.scsi_cmnd** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @DID_OK, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %16 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %19 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HF_SENSE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %93

24:                                               ; preds = %3
  %25 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %26 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %29 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* @sym_verbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %35 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %41 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sym_print_xerr(%struct.scsi_cmnd* %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %33, %24
  %45 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %46 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HS_COMPLETE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %52 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @S_GOOD, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %58 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %56
  %62 = load i32, i32* @DID_OK, align 4
  %63 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %64 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sym_xerr_cam_status(i32 %62, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @DRIVER_SENSE, align 4
  store i32 %67, i32* %10, align 4
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %72 = call i32 @memset(i32 %70, i32 0, i32 %71)
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %77 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %80 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %81 = call i32 @min(i32 %79, i32 %80)
  %82 = call i32 @memcpy(i32 %75, i32 %78, i32 %81)
  br label %92

83:                                               ; preds = %56, %50, %44
  %84 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sym_reset_scsi_target(%struct.sym_hcb* %84, i32 %89)
  %91 = load i32, i32* @DID_ERROR, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %83, %61
  br label %141

93:                                               ; preds = %3
  %94 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %95 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @HS_COMPLETE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @DID_OK, align 4
  store i32 %100, i32* %8, align 4
  br label %140

101:                                              ; preds = %93
  %102 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %103 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @HS_SEL_TIMEOUT, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %108, i32* %8, align 4
  br label %139

109:                                              ; preds = %101
  %110 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %111 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @HS_UNEXPECTED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @DID_ERROR, align 4
  store i32 %116, i32* %8, align 4
  br label %138

117:                                              ; preds = %109
  %118 = load i64, i64* @sym_verbose, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %122 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %123 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %126 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %129 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sym_print_addr(%struct.scsi_cmnd* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %120, %117
  %133 = load i32, i32* @DID_ERROR, align 4
  %134 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %135 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @sym_xerr_cam_status(i32 %133, i32 %136)
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %132, %115
  br label %139

139:                                              ; preds = %138, %107
  br label %140

140:                                              ; preds = %139, %99
  br label %141

141:                                              ; preds = %140, %92
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %142, i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = shl i32 %145, 24
  %147 = load i32, i32* %8, align 4
  %148 = shl i32 %147, 16
  %149 = add nsw i32 %146, %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %149, %150
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %153 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  ret void
}

declare dso_local i32 @sym_print_xerr(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @sym_xerr_cam_status(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sym_reset_scsi_target(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_print_addr(%struct.scsi_cmnd*, i8*, i32, i32, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
