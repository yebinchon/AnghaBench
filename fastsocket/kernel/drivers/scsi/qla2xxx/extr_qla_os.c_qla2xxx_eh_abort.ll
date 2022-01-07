; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { i32 (%struct.qla_hw_data*, %struct.TYPE_13__*, i32)* }

@SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_taskm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Aborting from RISC nexus=%ld:%d:%d sp=%p cmd=%p\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Abort command mbx failed cmd=%p.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Abort command mbx success cmd=%p.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Abort handler timed out cmd=%p.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Abort command issued nexus=%ld:%d:%d --  %d %x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @qla2xxx_eh_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_eh_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_14__* @shost_priv(i32 %16)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  store %struct.qla_hw_data* %20, %struct.qla_hw_data** %11, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %22 = call i64 @CMD_SP(%struct.scsi_cmnd* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @SUCCESS, align 4
  store i32 %25, i32* %2, align 4
  br label %151

26:                                               ; preds = %1
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %151

33:                                               ; preds = %26
  %34 = load i32, i32* @SUCCESS, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 0
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = call i64 @CMD_SP(%struct.scsi_cmnd* %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %5, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %33
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 0
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* @SUCCESS, align 4
  store i32 %59, i32* %2, align 4
  br label %151

60:                                               ; preds = %33
  %61 = load i32, i32* @ql_dbg_taskm, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to %struct.scsi_cmnd*
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %72 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, %struct.scsi_cmnd*, ...) @ql_dbg(i32 %61, %struct.TYPE_14__* %62, i32 32770, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %67, i32 %68, i32 %69, %struct.TYPE_13__* %70, %struct.scsi_cmnd* %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = call i32 @sp_get(%struct.TYPE_13__* %73)
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 0
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = call i64 %83(%struct.TYPE_13__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %60
  %88 = load i32, i32* @FAILED, align 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @ql_dbg_taskm, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %92 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, %struct.scsi_cmnd*, ...) @ql_dbg(i32 %89, %struct.TYPE_14__* %90, i32 32771, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %91)
  br label %98

93:                                               ; preds = %60
  %94 = load i32, i32* @ql_dbg_taskm, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %97 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, %struct.scsi_cmnd*, ...) @ql_dbg(i32 %94, %struct.TYPE_14__* %95, i32 32772, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %96)
  store i32 1, i32* %10, align 4
  br label %98

98:                                               ; preds = %93, %87
  %99 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %100 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %99, i32 0, i32 0
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32 (%struct.qla_hw_data*, %struct.TYPE_13__*, i32)*, i32 (%struct.qla_hw_data*, %struct.TYPE_13__*, i32)** %104, align 8
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = call i32 %105(%struct.qla_hw_data* %106, %struct.TYPE_13__* %107, i32 0)
  %109 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %110 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %109, i32 0, i32 0
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @FAILED, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %98
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %118 = call i64 @CMD_SP(%struct.scsi_cmnd* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @SUCCESS, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %116, %98
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %127 = call i64 @qla2x00_eh_wait_on_command(%struct.scsi_cmnd* %126)
  %128 = load i64, i64* @QLA_SUCCESS, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i32, i32* @ql_log_warn, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %134 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, %struct.scsi_cmnd*, ...) @ql_log(i32 %131, %struct.TYPE_14__* %132, i32 32774, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.scsi_cmnd* %133)
  %135 = load i32, i32* @FAILED, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %130, %125
  br label %137

137:                                              ; preds = %136, %122
  %138 = load i32, i32* @ql_log_info, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to %struct.scsi_cmnd*
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, %struct.scsi_cmnd*, ...) @ql_log(i32 %138, %struct.TYPE_14__* %139, i32 32796, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), %struct.scsi_cmnd* %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %137, %54, %31, %24
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_14__* @shost_priv(i32) #1

declare dso_local i64 @CMD_SP(%struct.scsi_cmnd*) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_14__*, i32, i8*, %struct.scsi_cmnd*, ...) #1

declare dso_local i32 @sp_get(%struct.TYPE_13__*) #1

declare dso_local i64 @qla2x00_eh_wait_on_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_14__*, i32, i8*, %struct.scsi_cmnd*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
