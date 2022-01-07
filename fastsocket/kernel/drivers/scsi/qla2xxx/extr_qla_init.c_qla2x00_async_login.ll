; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32 (i32, %struct.TYPE_19__*)*, i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_LOGIN_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"login\00", align 1
@qla2x00_async_iocb_timeout = common dso_local global i32 0, align 4
@qla2x00_async_login_sp_done = common dso_local global i32 0, align 4
@SRB_LOGIN_COND_PLOGI = common dso_local global i32 0, align 4
@QLA_LOGIO_LOGIN_RETRIED = common dso_local global i32 0, align 4
@SRB_LOGIN_RETRIED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Async-login - hdl=%x, loopid=%x portid=%02x%02x%02x retries=%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_async_login(%struct.scsi_qla_host* %0, %struct.TYPE_20__* %1, i32* %2) #0 {
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
  br label %105

19:                                               ; preds = %3
  %20 = load i32, i32* @SRB_LOGIN_CMD, align 4
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
  %36 = load i32, i32* @qla2x00_async_login_sp_done, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @SRB_LOGIN_COND_PLOGI, align 4
  %40 = load %struct.srb_iocb*, %struct.srb_iocb** %9, align 8
  %41 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @QLA_LOGIO_LOGIN_RETRIED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %19
  %53 = load i32, i32* @SRB_LOGIN_RETRIED, align 4
  %54 = load %struct.srb_iocb*, %struct.srb_iocb** %9, align 8
  %55 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %52, %19
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %62 = call i32 @qla2x00_start_sp(%struct.TYPE_19__* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @QLA_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %96

67:                                               ; preds = %60
  %68 = load i32, i32* @ql_dbg_disc, align 4
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ql_dbg(i32 %68, %struct.scsi_qla_host* %69, i32 8306, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75, i32 %80, i32 %85, i32 %90, i32 %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %107

96:                                               ; preds = %66
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i32 (i32, %struct.TYPE_19__*)*, i32 (i32, %struct.TYPE_19__*)** %98, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %104 = call i32 %99(i32 %102, %struct.TYPE_19__* %103)
  br label %105

105:                                              ; preds = %96, %18
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %67
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_19__* @qla2x00_get_sp(%struct.scsi_qla_host*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @qla2x00_get_async_timeout(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_19__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
