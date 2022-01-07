; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.sdebug_dev_info = type { i32* }

@SCSI_DEBUG_OPT_MEDIUM_ERR = common dso_local global i32 0, align 4
@scsi_debug_opts = common dso_local global i32 0, align 4
@OPT_MEDIUM_ERR_ADDR = common dso_local global i64 0, align 8
@MEDIUM_ERROR = common dso_local global i32 0, align 4
@UNRECOVERED_READ_ERR = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@scsi_debug_dix = common dso_local global i64 0, align 8
@ABORTED_COMMAND = common dso_local global i32 0, align 4
@illegal_condition_result = common dso_local global i32 0, align 4
@atomic_rw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i64, i32, %struct.sdebug_dev_info*, i32)* @resp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_read(%struct.scsi_cmnd* %0, i64 %1, i32 %2, %struct.sdebug_dev_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdebug_dev_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sdebug_dev_info* %3, %struct.sdebug_dev_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @check_device_access_params(%struct.sdebug_dev_info* %15, i64 %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %122

23:                                               ; preds = %5
  %24 = load i32, i32* @SCSI_DEBUG_OPT_MEDIUM_ERR, align 4
  %25 = load i32, i32* @scsi_debug_opts, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %89

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @OPT_MEDIUM_ERR_ADDR, align 8
  %31 = icmp ule i64 %29, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = load i64, i64* @OPT_MEDIUM_ERR_ADDR, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %32
  %40 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %41 = load i32, i32* @MEDIUM_ERROR, align 4
  %42 = load i32, i32* @UNRECOVERED_READ_ERR, align 4
  %43 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %45 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 127
  %50 = icmp eq i32 112, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %39
  %52 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %53 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 128
  store i32 %57, i32* %55, align 4
  %58 = load i64, i64* @OPT_MEDIUM_ERR_ADDR, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = ashr i32 %60, 24
  %62 = and i32 %61, 255
  %63 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %64 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = ashr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %71 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %13, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %78 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = and i32 %81, 255
  %83 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %84 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %51, %39
  %88 = load i32, i32* @check_condition_result, align 4
  store i32 %88, i32* %6, align 4
  br label %122

89:                                               ; preds = %32, %28, %23
  %90 = load i64, i64* @scsi_debug_dix, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %94 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @prot_verify_read(%struct.scsi_cmnd* %97, i64 %98, i32 %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %106 = load i32, i32* @ABORTED_COMMAND, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @mk_sense_buffer(%struct.sdebug_dev_info* %105, i32 %106, i32 16, i32 %107)
  %109 = load i32, i32* @illegal_condition_result, align 4
  store i32 %109, i32* %6, align 4
  br label %122

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %92, %89
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @read_lock_irqsave(i32* @atomic_rw, i64 %112)
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %115 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @do_device_access(%struct.scsi_cmnd* %114, %struct.sdebug_dev_info* %115, i64 %116, i32 %117, i32 0)
  store i32 %118, i32* %13, align 4
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @read_unlock_irqrestore(i32* @atomic_rw, i64 %119)
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %111, %104, %87, %21
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @check_device_access_params(%struct.sdebug_dev_info*, i64, i32) #1

declare dso_local i32 @mk_sense_buffer(%struct.sdebug_dev_info*, i32, i32, i32) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @prot_verify_read(%struct.scsi_cmnd*, i64, i32, i32) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @do_device_access(%struct.scsi_cmnd*, %struct.sdebug_dev_info*, i64, i32, i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
