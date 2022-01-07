; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_tm_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_tm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.scsi_qla_host*, %struct.TYPE_18__, i32 }
%struct.scsi_qla_host = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32 (%struct.scsi_qla_host*, %struct.TYPE_19__*)*, i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i8*, i8* }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_TM_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tmf\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@qla2x00_async_tm_cmd_done = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_taskm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Async-tmf hdl=%x loop-id=%x portid=%02x%02x%02x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_async_tm_cmd(%struct.TYPE_20__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.scsi_qla_host*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.srb_iocb*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %15, align 8
  store %struct.scsi_qla_host* %16, %struct.scsi_qla_host** %10, align 8
  %17 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_19__* @qla2x00_get_sp(%struct.scsi_qla_host* %18, %struct.TYPE_20__* %19, i32 %20)
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %11, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %23 = icmp ne %struct.TYPE_19__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %101

25:                                               ; preds = %4
  %26 = load i32, i32* @SRB_TM_CMD, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %33 = call i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host* %32)
  %34 = add nsw i64 %33, 2
  %35 = call i32 @qla2x00_init_timer(%struct.TYPE_19__* %31, i64 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store %struct.srb_iocb* %38, %struct.srb_iocb** %12, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.srb_iocb*, %struct.srb_iocb** %12, align 8
  %41 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  store i8* %39, i8** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.srb_iocb*, %struct.srb_iocb** %12, align 8
  %46 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.srb_iocb*, %struct.srb_iocb** %12, align 8
  %51 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %55 = load %struct.srb_iocb*, %struct.srb_iocb** %12, align 8
  %56 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @qla2x00_async_tm_cmd_done, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %61 = call i32 @qla2x00_start_sp(%struct.TYPE_19__* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @QLA_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %25
  br label %92

66:                                               ; preds = %25
  %67 = load i32, i32* @ql_dbg_taskm, align 4
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ql_dbg(i32 %67, %struct.scsi_qla_host* %68, i32 32815, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74, i32 %79, i32 %84, i32 %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %103

92:                                               ; preds = %65
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load i32 (%struct.scsi_qla_host*, %struct.TYPE_19__*)*, i32 (%struct.scsi_qla_host*, %struct.TYPE_19__*)** %94, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %97, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %100 = call i32 %95(%struct.scsi_qla_host* %98, %struct.TYPE_19__* %99)
  br label %101

101:                                              ; preds = %92, %24
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %66
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_19__* @qla2x00_get_sp(%struct.scsi_qla_host*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_19__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
