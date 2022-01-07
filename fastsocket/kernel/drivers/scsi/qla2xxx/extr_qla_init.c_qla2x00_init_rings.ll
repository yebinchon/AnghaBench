; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i64, i32, i64, i64, %struct.TYPE_13__, %struct.TYPE_12__*, i32, %struct.rsp_que**, %struct.req_que**, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { {}*, {}* }
%struct.rsp_que = type { i32 }
%struct.req_que = type { i32, i32, i32, i32, i64, i32, i32, i32** }
%struct.mid_init_cb_24xx = type { %struct.TYPE_14__, i32, i8* }
%struct.TYPE_14__ = type { i8* }

@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Issue init firmware.\0A\00", align 1
@LOOP = common dso_local global i64 0, align 8
@MIN_MULTI_ID_FABRIC = common dso_local global i64 0, align 8
@BIT_1 = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Init Firmware **** FAILED ****.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Init Firmware -- success.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_init_rings(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.req_que*, align 8
  %9 = alloca %struct.rsp_que*, align 8
  %10 = alloca %struct.mid_init_cb_24xx*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i64 0, i64* %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %7, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 11
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mid_init_cb_24xx*
  store %struct.mid_init_cb_24xx* %17, %struct.mid_init_cb_24xx** %10, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %71, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %22
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 10
  %31 = load %struct.req_que**, %struct.req_que*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.req_que*, %struct.req_que** %31, i64 %33
  %35 = load %struct.req_que*, %struct.req_que** %34, align 8
  store %struct.req_que* %35, %struct.req_que** %8, align 8
  %36 = load %struct.req_que*, %struct.req_que** %8, align 8
  %37 = icmp ne %struct.req_que* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %71

39:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.req_que*, %struct.req_que** %8, align 8
  %43 = getelementptr inbounds %struct.req_que, %struct.req_que* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.req_que*, %struct.req_que** %8, align 8
  %48 = getelementptr inbounds %struct.req_que, %struct.req_que* %47, i32 0, i32 7
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.req_que*, %struct.req_que** %8, align 8
  %58 = getelementptr inbounds %struct.req_que, %struct.req_que* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.req_que*, %struct.req_que** %8, align 8
  %60 = getelementptr inbounds %struct.req_que, %struct.req_que* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.req_que*, %struct.req_que** %8, align 8
  %63 = getelementptr inbounds %struct.req_que, %struct.req_que* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.req_que*, %struct.req_que** %8, align 8
  %65 = getelementptr inbounds %struct.req_que, %struct.req_que* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.req_que*, %struct.req_que** %8, align 8
  %67 = getelementptr inbounds %struct.req_que, %struct.req_que* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.req_que*, %struct.req_que** %8, align 8
  %70 = getelementptr inbounds %struct.req_que, %struct.req_que* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %56, %38
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %22

74:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %103, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 9
  %84 = load %struct.rsp_que**, %struct.rsp_que*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %84, i64 %86
  %88 = load %struct.rsp_que*, %struct.rsp_que** %87, align 8
  store %struct.rsp_que* %88, %struct.rsp_que** %9, align 8
  %89 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %90 = icmp ne %struct.rsp_que* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %81
  br label %103

92:                                               ; preds = %81
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %94 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %98 = call i32 @qlafx00_init_response_q_entries(%struct.rsp_que* %97)
  br label %102

99:                                               ; preds = %92
  %100 = load %struct.rsp_que*, %struct.rsp_que** %9, align 8
  %101 = call i32 @qla2x00_init_response_q_entries(%struct.rsp_que* %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102, %91
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %75

106:                                              ; preds = %75
  %107 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %108 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %107, i32 0, i32 7
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = bitcast {}** %110 to i32 (%struct.TYPE_15__*)**
  %112 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %114 = call i32 %112(%struct.TYPE_15__* %113)
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 8
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load i32, i32* @ql_dbg_init, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %121 = call i32 @ql_dbg(i32 %119, %struct.TYPE_15__* %120, i32 209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %123 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %106
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %127 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %128 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @qlafx00_init_firmware(%struct.TYPE_15__* %126, i32 %129)
  store i32 %130, i32* %3, align 4
  br label %189

131:                                              ; preds = %106
  %132 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %133 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %132, i32 0, i32 7
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = bitcast {}** %135 to i32 (%struct.TYPE_15__*)**
  %137 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %139 = call i32 %137(%struct.TYPE_15__* %138)
  %140 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %141 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %131
  %146 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %147 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @LOOP, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %153 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = load i64, i64* @MIN_MULTI_ID_FABRIC, align 8
  %157 = sub nsw i64 %156, 1
  %158 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %159 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %155, %151, %145
  %161 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %162 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = call i8* @cpu_to_le16(i64 %163)
  %165 = load %struct.mid_init_cb_24xx*, %struct.mid_init_cb_24xx** %10, align 8
  %166 = getelementptr inbounds %struct.mid_init_cb_24xx, %struct.mid_init_cb_24xx* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %160, %131
  %168 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %169 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %167
  %172 = load i32, i32* @BIT_1, align 4
  %173 = call i32 @__constant_cpu_to_le16(i32 %172)
  %174 = load %struct.mid_init_cb_24xx*, %struct.mid_init_cb_24xx** %10, align 8
  %175 = getelementptr inbounds %struct.mid_init_cb_24xx, %struct.mid_init_cb_24xx* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %177 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = call i8* @cpu_to_le16(i64 %178)
  %180 = load %struct.mid_init_cb_24xx*, %struct.mid_init_cb_24xx** %10, align 8
  %181 = getelementptr inbounds %struct.mid_init_cb_24xx, %struct.mid_init_cb_24xx* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  store i8* %179, i8** %182, align 8
  br label %183

183:                                              ; preds = %171, %167
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %185 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %186 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @qla2x00_init_firmware(%struct.TYPE_15__* %184, i32 %187)
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %183, %125
  %190 = load i32, i32* %3, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* @ql_log_fatal, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %195 = call i32 @ql_log(i32 %193, %struct.TYPE_15__* %194, i32 210, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %200

196:                                              ; preds = %189
  %197 = load i32, i32* @ql_dbg_init, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %199 = call i32 @ql_dbg(i32 %197, %struct.TYPE_15__* %198, i32 211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %200

200:                                              ; preds = %196, %192
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qlafx00_init_response_q_entries(%struct.rsp_que*) #1

declare dso_local i32 @qla2x00_init_response_q_entries(%struct.rsp_que*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @qlafx00_init_firmware(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @__constant_cpu_to_le16(i32) #1

declare dso_local i32 @qla2x00_init_firmware(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_15__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
