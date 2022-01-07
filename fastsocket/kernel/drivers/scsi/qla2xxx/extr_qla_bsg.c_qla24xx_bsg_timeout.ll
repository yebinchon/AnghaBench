; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_bsg_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_bsg_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_15__*, %struct.req_que** }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.fc_bsg_job* }
%struct.req_que = type { i32, %struct.TYPE_19__** }

@SRB_CT_CMD = common dso_local global i64 0, align 8
@SRB_ELS_CMD_HST = common dso_local global i64 0, align 8
@SRB_FXIOCB_BCMD = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mbx abort_command failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mbx abort_command success.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"SRB not found to abort.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@FC_BSG_HST_CT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_bsg_timeout(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.req_que*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %11 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %12 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_20__* @shost_priv(i32 %13)
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %4, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  store %struct.qla_hw_data* %17, %struct.qla_hw_data** %5, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %131, %1
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %134

28:                                               ; preds = %22
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 3
  %31 = load %struct.req_que**, %struct.req_que*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.req_que*, %struct.req_que** %31, i64 %33
  %35 = load %struct.req_que*, %struct.req_que** %34, align 8
  store %struct.req_que* %35, %struct.req_que** %10, align 8
  %36 = load %struct.req_que*, %struct.req_que** %10, align 8
  %37 = icmp ne %struct.req_que* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %131

39:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %127, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.req_que*, %struct.req_que** %10, align 8
  %43 = getelementptr inbounds %struct.req_que, %struct.req_que* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %130

46:                                               ; preds = %40
  %47 = load %struct.req_que*, %struct.req_que** %10, align 8
  %48 = getelementptr inbounds %struct.req_que, %struct.req_que* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %49, i64 %51
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %6, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = icmp ne %struct.TYPE_19__* %54, null
  br i1 %55, label %56, label %126

56:                                               ; preds = %46
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SRB_CT_CMD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SRB_ELS_CMD_HST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SRB_FXIOCB_BCMD, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %125

74:                                               ; preds = %68, %62, %56
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %77, align 8
  %79 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %80 = icmp eq %struct.fc_bsg_job* %78, %79
  br i1 %80, label %81, label %125

81:                                               ; preds = %74
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 1
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %87 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %86, i32 0, i32 2
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %92 = call i64 %90(%struct.TYPE_19__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %81
  %95 = load i32, i32* @ql_log_warn, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = call i32 @ql_log(i32 %95, %struct.TYPE_20__* %96, i32 28809, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  %100 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %101 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %100, i32 0, i32 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %104, i32 0, i32 2
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i32 %99, i32* %107, align 4
  br label %120

108:                                              ; preds = %81
  %109 = load i32, i32* @ql_dbg_user, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = call i32 @ql_dbg(i32 %109, %struct.TYPE_20__* %110, i32 28810, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %113 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  %116 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %117 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %116, i32 0, i32 2
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %108, %94
  %121 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %122 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %121, i32 0, i32 1
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @spin_lock_irqsave(i32* %122, i64 %123)
  br label %152

125:                                              ; preds = %74, %68
  br label %126

126:                                              ; preds = %125, %46
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %40

130:                                              ; preds = %40
  br label %131

131:                                              ; preds = %130, %38
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %22

134:                                              ; preds = %22
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %136 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %135, i32 0, i32 1
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load i32, i32* @ql_log_info, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = call i32 @ql_log(i32 %139, %struct.TYPE_20__* %140, i32 28811, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* @ENXIO, align 4
  %143 = sub nsw i32 0, %142
  %144 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %145 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %144, i32 0, i32 1
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  store i32 %143, i32* %147, align 4
  %148 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %149 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %148, i32 0, i32 2
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  store i32 %143, i32* %151, align 4
  store i32 0, i32* %2, align 4
  br label %173

152:                                              ; preds = %120
  %153 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %154 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %153, i32 0, i32 1
  %155 = load i64, i64* %9, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  %157 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %158 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %157, i32 0, i32 0
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @FC_BSG_HST_CT, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %152
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @kfree(i32 %167)
  br label %169

169:                                              ; preds = %164, %152
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %172 = call i32 @qla2x00_rel_sp(%struct.TYPE_20__* %170, %struct.TYPE_19__* %171)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %169, %134
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.TYPE_20__* @shost_priv(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @qla2x00_rel_sp(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
