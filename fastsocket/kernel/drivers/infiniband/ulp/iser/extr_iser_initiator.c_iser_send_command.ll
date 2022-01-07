; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_iser_conn* }
%struct.iscsi_iser_conn = type { i32 }
%struct.iscsi_task = type { i32, %struct.TYPE_2__, i64, %struct.scsi_cmnd*, i64, %struct.iscsi_iser_task* }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_cmnd = type { i32 }
%struct.iscsi_iser_task = type { i32, %struct.iser_data_buf*, %struct.iser_tx_desc }
%struct.iser_data_buf = type { i32, i64, i32 }
%struct.iser_tx_desc = type { i32 }
%struct.iscsi_cmd = type { i32, i32 }

@ISCSI_TX_SCSI_COMMAND = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_READ = common dso_local global i32 0, align 4
@ISER_DIR_IN = common dso_local global i64 0, align 8
@ISER_DIR_OUT = common dso_local global i64 0, align 8
@ISCSI_FLAG_CMD_WRITE = common dso_local global i32 0, align 4
@ISER_TASK_STATUS_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"conn %p failed task->itt %d err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_send_command(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_iser_conn*, align 8
  %7 = alloca %struct.iscsi_iser_task*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iser_data_buf*, align 8
  %11 = alloca %struct.iscsi_cmd*, align 8
  %12 = alloca %struct.scsi_cmnd*, align 8
  %13 = alloca %struct.iser_tx_desc*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %15, align 8
  store %struct.iscsi_iser_conn* %16, %struct.iscsi_iser_conn** %6, align 8
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %17, i32 0, i32 5
  %19 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %18, align 8
  store %struct.iscsi_iser_task* %19, %struct.iscsi_iser_task** %7, align 8
  %20 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.iscsi_cmd*
  store %struct.iscsi_cmd* %23, %struct.iscsi_cmd** %11, align 8
  %24 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %24, i32 0, i32 3
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  store %struct.scsi_cmnd* %26, %struct.scsi_cmnd** %12, align 8
  %27 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %27, i32 0, i32 2
  store %struct.iser_tx_desc* %28, %struct.iser_tx_desc** %13, align 8
  %29 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %11, align 8
  %30 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohl(i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* @ISCSI_TX_SCSI_COMMAND, align 4
  %34 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %13, align 8
  %35 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %37 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %13, align 8
  %40 = call i32 @iser_create_send_desc(i32 %38, %struct.iser_tx_desc* %39)
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %11, align 8
  %42 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ISCSI_FLAG_CMD_READ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %49 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %48, i32 0, i32 1
  %50 = load %struct.iser_data_buf*, %struct.iser_data_buf** %49, align 8
  %51 = load i64, i64* @ISER_DIR_IN, align 8
  %52 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %50, i64 %51
  store %struct.iser_data_buf* %52, %struct.iser_data_buf** %10, align 8
  br label %59

53:                                               ; preds = %2
  %54 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %55 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %54, i32 0, i32 1
  %56 = load %struct.iser_data_buf*, %struct.iser_data_buf** %55, align 8
  %57 = load i64, i64* @ISER_DIR_OUT, align 8
  %58 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %56, i64 %57
  store %struct.iser_data_buf* %58, %struct.iser_data_buf** %10, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %61 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %65 = call i32 @scsi_sglist(%struct.scsi_cmnd* %64)
  %66 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %67 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %69 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %68)
  %70 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %71 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %63, %59
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %74 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %73)
  %75 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %76 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %11, align 8
  %78 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ISCSI_FLAG_CMD_READ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @iser_prepare_read_cmd(%struct.iscsi_task* %84, i64 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %130

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %72
  %92 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %11, align 8
  %93 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ISCSI_FLAG_CMD_WRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %91
  %99 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %100 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %101 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %104 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %107 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %105, %109
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @iser_prepare_write_cmd(%struct.iscsi_task* %99, i64 %102, i64 %110, i64 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %130

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %91
  %118 = load i32, i32* @ISER_TASK_STATUS_STARTED, align 4
  %119 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %120 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %122 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %13, align 8
  %125 = call i32 @iser_post_send(i32 %123, %struct.iser_tx_desc* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %138

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129, %115, %89
  %131 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %132 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %133 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @iser_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.iscsi_conn* %131, i32 %134, i32 %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %130, %128
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @iser_create_send_desc(i32, %struct.iser_tx_desc*) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @iser_prepare_read_cmd(%struct.iscsi_task*, i64) #1

declare dso_local i32 @iser_prepare_write_cmd(%struct.iscsi_task*, i64, i64, i64) #1

declare dso_local i32 @iser_post_send(i32, %struct.iser_tx_desc*) #1

declare dso_local i32 @iser_err(i8*, %struct.iscsi_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
