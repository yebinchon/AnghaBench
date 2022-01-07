; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_async_abt_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_async_abt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32 (i32*, %struct.TYPE_15__*)*, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i32* }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_ABT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@FXDISC_TIMEOUT = common dso_local global i32 0, align 4
@qlafx00_abort_sp_done = common dso_local global i32 0, align 4
@qlafx00_abort_iocb_timeout = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Abort command issued - hdl=%x, target_id=%x\0A\00", align 1
@CS_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @qlafx00_async_abt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlafx00_async_abt_cmd(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.srb_iocb*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 6
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %4, align 8
  %16 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_15__* @qla2x00_get_sp(i32* %17, %struct.TYPE_16__* %18, i32 %19)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %6, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %95

24:                                               ; preds = %1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store %struct.srb_iocb* %27, %struct.srb_iocb** %5, align 8
  %28 = load i32, i32* @SRB_ABT_CMD, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = load i32, i32* @FXDISC_TIMEOUT, align 4
  %35 = call i32 @qla2x00_init_timer(%struct.TYPE_15__* %33, i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %40 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @qlafx00_abort_sp_done, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @qlafx00_abort_iocb_timeout, align 4
  %47 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %48 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %50 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = call i32 @init_completion(i32* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = call i32 @qla2x00_start_sp(%struct.TYPE_15__* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @QLA_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %24
  br label %88

60:                                               ; preds = %24
  %61 = load i32, i32* @ql_dbg_async, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ql_dbg(i32 %61, i32* %62, i32 20604, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %71 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = call i32 @wait_for_completion(i32* %73)
  %75 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %76 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CS_COMPLETE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %60
  %83 = load i32, i32* @QLA_SUCCESS, align 4
  br label %86

84:                                               ; preds = %60
  %85 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %59
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32 (i32*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_15__*)** %90, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = call i32 %91(i32* %92, %struct.TYPE_15__* %93)
  br label %95

95:                                               ; preds = %88, %23
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_15__* @qla2x00_get_sp(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_15__*) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
