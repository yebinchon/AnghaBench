; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_bus_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.fc_port = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BUS RESET ISSUED nexus=%ld:%d:%d.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Wait for hba online failed board disabled.\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@WAIT_HOST = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Wait for pending commands failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"BUS RESET %s nexus=%ld:%d:%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @qla2xxx_eh_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_eh_bus_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.fc_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_9__* @shost_priv(i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.fc_port*
  store %struct.fc_port* %20, %struct.fc_port** %5, align 8
  %21 = load i32, i32* @FAILED, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %33 = icmp ne %struct.fc_port* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %100

36:                                               ; preds = %1
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %100

43:                                               ; preds = %36
  %44 = load i32, i32* @FAILED, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @ql_log_info, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %45, %struct.TYPE_9__* %46, i32 32786, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = call i64 @qla2x00_wait_for_hba_online(%struct.TYPE_9__* %53)
  %55 = load i64, i64* @QLA_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load i32, i32* @ql_log_fatal, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %58, %struct.TYPE_9__* %59, i32 32787, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %85

61:                                               ; preds = %43
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = call i64 @qla2x00_loop_reset(%struct.TYPE_9__* %62)
  %64 = load i64, i64* @QLA_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @SUCCESS, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @FAILED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %85

73:                                               ; preds = %68
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = load i32, i32* @WAIT_HOST, align 4
  %76 = call i64 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_9__* %74, i32 0, i32 0, i32 %75)
  %77 = load i64, i64* @QLA_SUCCESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i32, i32* @ql_log_warn, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %80, %struct.TYPE_9__* %81, i32 32788, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @FAILED, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %73
  br label %85

85:                                               ; preds = %84, %72, %57
  %86 = load i32, i32* @ql_log_warn, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @FAILED, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %86, %struct.TYPE_9__* %87, i32 32811, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %92, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %85, %41, %34
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_9__* @shost_priv(i32) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i64 @qla2x00_wait_for_hba_online(%struct.TYPE_9__*) #1

declare dso_local i64 @qla2x00_loop_reset(%struct.TYPE_9__*) #1

declare dso_local i64 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
