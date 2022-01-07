; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_start_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_queue = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_IMMED_OFFSET = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_POWER_COND_MOD_OFFSET = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_POWER_COND_OFFSET = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_NO_FLUSH_OFFSET = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_START_OFFSET = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_IMMED_MASK = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_POWER_COND_MOD_MASK = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_POWER_COND_MASK = common dso_local global i32 0, align 4
@NIBBLE_SHIFT = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_NO_FLUSH_MASK = common dso_local global i32 0, align 4
@START_STOP_UNIT_CDB_START_MASK = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@nvme_cmd_flush = common dso_local global i32 0, align 4
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*)* @nvme_trans_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_start_stop(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_queue*, align 8
  %10 = alloca %struct.nvme_command, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @START_STOP_UNIT_CDB_IMMED_OFFSET, align 4
  %19 = call i32 @GET_U8_FROM_CDB(i32* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @START_STOP_UNIT_CDB_POWER_COND_MOD_OFFSET, align 4
  %22 = call i32 @GET_U8_FROM_CDB(i32* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @START_STOP_UNIT_CDB_POWER_COND_OFFSET, align 4
  %25 = call i32 @GET_U8_FROM_CDB(i32* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @START_STOP_UNIT_CDB_NO_FLUSH_OFFSET, align 4
  %28 = call i32 @GET_U8_FROM_CDB(i32* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @START_STOP_UNIT_CDB_START_OFFSET, align 4
  %31 = call i32 @GET_U8_FROM_CDB(i32* %29, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* @START_STOP_UNIT_CDB_IMMED_MASK, align 4
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @START_STOP_UNIT_CDB_POWER_COND_MOD_MASK, align 4
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @START_STOP_UNIT_CDB_POWER_COND_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @NIBBLE_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @START_STOP_UNIT_CDB_NO_FLUSH_MASK, align 4
  %44 = load i32, i32* %14, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @START_STOP_UNIT_CDB_START_MASK, align 4
  %47 = load i32, i32* %15, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %3
  %52 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %53 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %54 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %55 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %56 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %57 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %100

58:                                               ; preds = %3
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %58
  %62 = call i32 @memset(%struct.nvme_command* %10, i32 0, i32 8)
  %63 = load i32, i32* @nvme_cmd_flush, align 4
  %64 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %67 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cpu_to_le32(i32 %68)
  %70 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %73 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.nvme_queue* @get_nvmeq(i32 %74)
  store %struct.nvme_queue* %75, %struct.nvme_queue** %9, align 8
  %76 = load %struct.nvme_queue*, %struct.nvme_queue** %9, align 8
  %77 = call i32 @put_nvmeq(%struct.nvme_queue* %76)
  %78 = load %struct.nvme_queue*, %struct.nvme_queue** %9, align 8
  %79 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %80 = call i32 @nvme_submit_sync_cmd(%struct.nvme_queue* %78, %struct.nvme_command* %10, i32* null, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %61
  br label %101

87:                                               ; preds = %61
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %7, align 4
  br label %101

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %58
  %94 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %95 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @nvme_trans_power_state(%struct.nvme_ns* %94, %struct.sg_io_hdr* %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %93, %51
  br label %101

101:                                              ; preds = %100, %90, %86
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @GET_U8_FROM_CDB(i32*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.nvme_queue* @get_nvmeq(i32) #1

declare dso_local i32 @put_nvmeq(%struct.nvme_queue*) #1

declare dso_local i32 @nvme_submit_sync_cmd(%struct.nvme_queue*, %struct.nvme_command*, i32*, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @nvme_trans_power_state(%struct.nvme_ns*, %struct.sg_io_hdr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
