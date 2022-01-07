; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c___qla2xxx_eh_generic_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c___qla2xxx_eh_generic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.fc_port = type opaque
%struct.TYPE_10__ = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s RESET ISSUED nexus=%ld:%d:%d cmd=%p.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Wait for hba online failed for cmd=%p.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"do_reset failed for cmd=%p.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s RESET SUCCEEDED nexus:%ld:%d:%d cmd=%p.\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"%s RESET FAILED: %s nexus=%ld:%d:%d cmd=%p.\0A\00", align 1
@reset_errors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.scsi_cmnd*, i32 (%struct.fc_port*, i32, i32)*)* @__qla2xxx_eh_generic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qla2xxx_eh_generic_reset(i8* %0, i32 %1, %struct.scsi_cmnd* %2, i32 (%struct.fc_port*, i32, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32 (%struct.fc_port*, i32, i32)*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.fc_port*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %8, align 8
  store i32 (%struct.fc_port*, i32, i32)* %3, i32 (%struct.fc_port*, i32, i32)** %9, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.TYPE_10__* @shost_priv(i32 %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %10, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.fc_port*
  store %struct.fc_port* %24, %struct.fc_port** %11, align 8
  %25 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %26 = icmp ne %struct.fc_port* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @FAILED, align 4
  store i32 %28, i32* %5, align 4
  br label %148

29:                                               ; preds = %4
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %31 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %148

36:                                               ; preds = %29
  %37 = load i32, i32* @ql_log_info, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %54 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %37, %struct.TYPE_10__* %38, i32 32777, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %42, i32 %47, i32 %52, %struct.scsi_cmnd* %53)
  store i32 0, i32* %12, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = call i32 @qla2x00_wait_for_hba_online(%struct.TYPE_10__* %55)
  %57 = load i32, i32* @QLA_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %36
  %60 = load i32, i32* @ql_log_warn, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %63 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %60, %struct.TYPE_10__* %61, i32 32778, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %62)
  br label %123

64:                                               ; preds = %36
  store i32 2, i32* %12, align 4
  %65 = load i32 (%struct.fc_port*, i32, i32)*, i32 (%struct.fc_port*, i32, i32)** %9, align 8
  %66 = load %struct.fc_port*, %struct.fc_port** %11, align 8
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 %65(%struct.fc_port* %66, i32 %71, i32 %77)
  %79 = load i32, i32* @QLA_SUCCESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %64
  %82 = load i32, i32* @ql_log_warn, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %85 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %82, %struct.TYPE_10__* %83, i32 32780, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %84)
  br label %123

86:                                               ; preds = %64
  store i32 3, i32* %12, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_10__* %87, i32 %92, i32 %97, i32 %98)
  %100 = load i32, i32* @QLA_SUCCESS, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %123

103:                                              ; preds = %86
  %104 = load i32, i32* @ql_log_info, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %121 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %104, %struct.TYPE_10__* %105, i32 32782, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %106, i32 %109, i32 %114, i32 %119, %struct.scsi_cmnd* %120)
  %122 = load i32, i32* @SUCCESS, align 4
  store i32 %122, i32* %5, align 4
  br label %148

123:                                              ; preds = %102, %81, %59
  %124 = load i32, i32* @ql_log_info, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i32*, i32** @reset_errors, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %146 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %124, %struct.TYPE_10__* %125, i32 32783, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %126, i32 %131, i32 %134, i32 %139, i32 %144, %struct.scsi_cmnd* %145)
  %147 = load i32, i32* @FAILED, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %123, %103, %34, %27
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local %struct.TYPE_10__* @shost_priv(i32) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_wait_for_hba_online(%struct.TYPE_10__*) #1

declare dso_local i32 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
