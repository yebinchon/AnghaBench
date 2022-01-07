; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_adisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32 (i32, %struct.TYPE_19__*)*, i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_ADISC_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"adisc\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@qla2x00_async_adisc_sp_done = common dso_local global i32 0, align 4
@QLA_LOGIO_LOGIN_RETRIED = common dso_local global i32 0, align 4
@SRB_LOGIN_RETRIED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Async-adisc - hdl=%x loopid=%x portid=%02x%02x%02x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_async_adisc(%struct.scsi_qla_host* %0, %struct.TYPE_20__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.srb_iocb*, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.TYPE_19__* @qla2x00_get_sp(%struct.scsi_qla_host* %12, %struct.TYPE_20__* %13, i32 %14)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %8, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %17 = icmp ne %struct.TYPE_19__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %95

19:                                               ; preds = %3
  %20 = load i32, i32* @SRB_ADISC_CMD, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %27 = call i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host* %26)
  %28 = add nsw i64 %27, 2
  %29 = call i32 @qla2x00_init_timer(%struct.TYPE_19__* %25, i64 %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store %struct.srb_iocb* %32, %struct.srb_iocb** %9, align 8
  %33 = load i32, i32* @qla2x00_async_iocb_timeout, align 4
  %34 = load %struct.srb_iocb*, %struct.srb_iocb** %9, align 8
  %35 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @qla2x00_async_adisc_sp_done, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @QLA_LOGIO_LOGIN_RETRIED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %19
  %46 = load i32, i32* @SRB_LOGIN_RETRIED, align 4
  %47 = load %struct.srb_iocb*, %struct.srb_iocb** %9, align 8
  %48 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %45, %19
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = call i32 @qla2x00_start_sp(%struct.TYPE_19__* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @QLA_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %86

60:                                               ; preds = %53
  %61 = load i32, i32* @ql_dbg_disc, align 4
  %62 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ql_dbg(i32 %61, %struct.scsi_qla_host* %62, i32 8303, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %73, i32 %78, i32 %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %97

86:                                               ; preds = %59
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32 (i32, %struct.TYPE_19__*)*, i32 (i32, %struct.TYPE_19__*)** %88, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %94 = call i32 %89(i32 %92, %struct.TYPE_19__* %93)
  br label %95

95:                                               ; preds = %86, %18
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %60
  %98 = load i32, i32* %4, align 4
  ret i32 %98
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
