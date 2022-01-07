; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_async_tm_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_async_tm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32* }
%struct.srb_iocb = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i8*, i32 (i32*, %struct.TYPE_15__*)*, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.srb_iocb }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_TM_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tmf\00", align 1
@qlafx00_tmf_sp_done = common dso_local global i32 0, align 4
@qlafx00_tmf_iocb_timeout = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Task management command issued target_id=%x\0A\00", align 1
@CS_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i8*, i8*)* @qlafx00_async_tm_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlafx00_async_tm_cmd(%struct.TYPE_16__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.srb_iocb*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_15__* @qla2x00_get_sp(i32* %17, %struct.TYPE_16__* %18, i32 %19)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %11, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %101

24:                                               ; preds = %4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store %struct.srb_iocb* %27, %struct.srb_iocb** %10, align 8
  %28 = load i32, i32* @SRB_TM_CMD, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @qla2x00_get_async_timeout(i32* %34)
  %36 = call i32 @qla2x00_init_timer(%struct.TYPE_15__* %33, i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %39 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  store i8* %37, i8** %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %44 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  store i8* %42, i8** %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %49 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  store i8* %47, i8** %51, align 8
  %52 = load i32, i32* @qlafx00_tmf_sp_done, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @qlafx00_tmf_iocb_timeout, align 4
  %56 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %57 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %59 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = call i32 @init_completion(i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %64 = call i32 @qla2x00_start_sp(%struct.TYPE_15__* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @QLA_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %24
  br label %94

69:                                               ; preds = %24
  %70 = load i32, i32* @ql_dbg_async, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ql_dbg(i32 %70, i32* %71, i32 20603, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %77 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = call i32 @wait_for_completion(i32* %79)
  %81 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %82 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CS_COMPLETE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %69
  %89 = load i32, i32* @QLA_SUCCESS, align 4
  br label %92

90:                                               ; preds = %69
  %91 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %92, %68
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32 (i32*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_15__*)** %96, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %100 = call i32 %97(i32* %98, %struct.TYPE_15__* %99)
  br label %101

101:                                              ; preds = %94, %23
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_15__* @qla2x00_get_sp(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @qla2x00_get_async_timeout(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_15__*) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
