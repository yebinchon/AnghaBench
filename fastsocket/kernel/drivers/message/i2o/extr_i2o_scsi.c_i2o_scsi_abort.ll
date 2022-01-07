; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i2o_device* }
%struct.i2o_device = type { %struct.TYPE_5__, %struct.i2o_controller* }
%struct.TYPE_5__ = type { i32 }
%struct.i2o_controller = type { i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8** }

@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Aborting command block.\0A\00", align 1
@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@FIVE_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_SCSI_ABORT = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@I2O_TIMEOUT_SCSI_SCB_ABORT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @i2o_scsi_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_scsi_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.i2o_device*, align 8
  %5 = alloca %struct.i2o_controller*, align 8
  %6 = alloca %struct.i2o_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %9 = load i32, i32* @FAILED, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @osm_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.i2o_device*, %struct.i2o_device** %14, align 8
  store %struct.i2o_device* %15, %struct.i2o_device** %4, align 8
  %16 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %17 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %16, i32 0, i32 1
  %18 = load %struct.i2o_controller*, %struct.i2o_controller** %17, align 8
  store %struct.i2o_controller* %18, %struct.i2o_controller** %5, align 8
  %19 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %20 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %24 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %25 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %23, i32 %24)
  store %struct.i2o_message* %25, %struct.i2o_message** %6, align 8
  %26 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %27 = call i64 @IS_ERR(%struct.i2o_message* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %30, i32* %2, align 4
  br label %71

31:                                               ; preds = %1
  %32 = load i32, i32* @FIVE_WORD_MSG_SIZE, align 4
  %33 = load i32, i32* @SGL_OFFSET_0, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %37 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %35, i8** %40, align 8
  %41 = load i32, i32* @I2O_CMD_SCSI_ABORT, align 4
  %42 = shl i32 %41, 24
  %43 = load i32, i32* @HOST_TID, align 4
  %44 = shl i32 %43, 12
  %45 = or i32 %42, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %50 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* %48, i8** %53, align 8
  %54 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = call i32 @i2o_cntxt_list_get_ptr(%struct.i2o_controller* %54, %struct.scsi_cmnd* %55)
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %59 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %57, i8** %61, align 8
  %62 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %63 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %64 = load i32, i32* @I2O_TIMEOUT_SCSI_SCB_ABORT, align 4
  %65 = call i32 @i2o_msg_post_wait(%struct.i2o_controller* %62, %struct.i2o_message* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %31
  %68 = load i32, i32* @SUCCESS, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %31
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %29
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @osm_warn(i8*) #1

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_cntxt_list_get_ptr(%struct.i2o_controller*, %struct.scsi_cmnd*) #1

declare dso_local i32 @i2o_msg_post_wait(%struct.i2o_controller*, %struct.i2o_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
