; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_bidir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_bidir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.scsi_qla_host = type { i64, %struct.TYPE_7__, i32, %struct.req_que*, %struct.qla_hw_data* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.req_que = type { i64, i64, i64, i64, i64, %struct.TYPE_8__**, i32, i64, i32 }
%struct.qla_hw_data = type { i32, %struct.rsp_que** }
%struct.rsp_que = type { i64 }
%struct.cmd_bidir = type { i64, i32*, i32, i32 }

@EXT_STATUS_OK = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@MK_SYNC_ALL = common dso_local global i32 0, align 4
@EXT_STATUS_MAILBOX = common dso_local global i32 0, align 4
@EXT_STATUS_BUSY = common dso_local global i32 0, align 4
@REQUEST_ENTRY_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_start_bidir(%struct.TYPE_8__* %0, %struct.scsi_qla_host* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.cmd_bidir*, align 8
  %16 = alloca %struct.rsp_que*, align 8
  %17 = alloca %struct.req_que*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.scsi_qla_host* %1, %struct.scsi_qla_host** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 4
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %8, align 8
  store %struct.cmd_bidir* null, %struct.cmd_bidir** %15, align 8
  %22 = load i32, i32* @EXT_STATUS_OK, align 4
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %23, i32* %18, align 4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 1
  %26 = load %struct.rsp_que**, %struct.rsp_que*** %25, align 8
  %27 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %26, i64 0
  %28 = load %struct.rsp_que*, %struct.rsp_que** %27, align 8
  store %struct.rsp_que* %28, %struct.rsp_que** %16, align 8
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %29, i32 0, i32 3
  %31 = load %struct.req_que*, %struct.req_que** %30, align 8
  store %struct.req_que* %31, %struct.req_que** %17, align 8
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %3
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %38 = load %struct.req_que*, %struct.req_que** %17, align 8
  %39 = load %struct.rsp_que*, %struct.rsp_que** %16, align 8
  %40 = load i32, i32* @MK_SYNC_ALL, align 4
  %41 = call i32 @qla2x00_marker(%struct.scsi_qla_host* %37, %struct.req_que* %38, %struct.rsp_que* %39, i32 0, i32 0, i32 %40)
  %42 = load i32, i32* @QLA_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @EXT_STATUS_MAILBOX, align 4
  store i32 %45, i32* %4, align 4
  br label %232

46:                                               ; preds = %36
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %48 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %3
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.req_que*, %struct.req_que** %17, align 8
  %55 = getelementptr inbounds %struct.req_que, %struct.req_que* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  store i64 1, i64* %11, align 8
  br label %57

57:                                               ; preds = %82, %49
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.req_que*, %struct.req_que** %17, align 8
  %60 = getelementptr inbounds %struct.req_que, %struct.req_que* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.req_que*, %struct.req_que** %17, align 8
  %68 = getelementptr inbounds %struct.req_que, %struct.req_que* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i64 1, i64* %10, align 8
  br label %72

72:                                               ; preds = %71, %63
  %73 = load %struct.req_que*, %struct.req_que** %17, align 8
  %74 = getelementptr inbounds %struct.req_que, %struct.req_que* %73, i32 0, i32 5
  %75 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %75, i64 %76
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %85

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %57

85:                                               ; preds = %80, %57
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.req_que*, %struct.req_que** %17, align 8
  %88 = getelementptr inbounds %struct.req_que, %struct.req_que* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @EXT_STATUS_BUSY, align 4
  store i32 %92, i32* %18, align 4
  br label %226

93:                                               ; preds = %85
  %94 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @qla24xx_calc_iocbs(%struct.scsi_qla_host* %94, i64 %95)
  store i64 %96, i64* %12, align 8
  %97 = load %struct.req_que*, %struct.req_que** %17, align 8
  %98 = getelementptr inbounds %struct.req_que, %struct.req_que* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add nsw i64 %100, 2
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %93
  %104 = load %struct.req_que*, %struct.req_que** %17, align 8
  %105 = getelementptr inbounds %struct.req_que, %struct.req_que* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @RD_REG_DWORD_RELAXED(i32 %106)
  store i64 %107, i64* %13, align 8
  %108 = load %struct.req_que*, %struct.req_que** %17, align 8
  %109 = getelementptr inbounds %struct.req_que, %struct.req_que* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %103
  %114 = load i64, i64* %13, align 8
  %115 = load %struct.req_que*, %struct.req_que** %17, align 8
  %116 = getelementptr inbounds %struct.req_que, %struct.req_que* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  %119 = load %struct.req_que*, %struct.req_que** %17, align 8
  %120 = getelementptr inbounds %struct.req_que, %struct.req_que* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  br label %133

121:                                              ; preds = %103
  %122 = load %struct.req_que*, %struct.req_que** %17, align 8
  %123 = getelementptr inbounds %struct.req_que, %struct.req_que* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.req_que*, %struct.req_que** %17, align 8
  %126 = getelementptr inbounds %struct.req_que, %struct.req_que* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %13, align 8
  %129 = sub nsw i64 %127, %128
  %130 = sub nsw i64 %124, %129
  %131 = load %struct.req_que*, %struct.req_que** %17, align 8
  %132 = getelementptr inbounds %struct.req_que, %struct.req_que* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %121, %113
  br label %134

134:                                              ; preds = %133, %93
  %135 = load %struct.req_que*, %struct.req_que** %17, align 8
  %136 = getelementptr inbounds %struct.req_que, %struct.req_que* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = add nsw i64 %138, 2
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @EXT_STATUS_BUSY, align 4
  store i32 %142, i32* %18, align 4
  br label %226

143:                                              ; preds = %134
  %144 = load %struct.req_que*, %struct.req_que** %17, align 8
  %145 = getelementptr inbounds %struct.req_que, %struct.req_que* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to %struct.cmd_bidir*
  store %struct.cmd_bidir* %147, %struct.cmd_bidir** %15, align 8
  %148 = load %struct.req_que*, %struct.req_que** %17, align 8
  %149 = getelementptr inbounds %struct.req_que, %struct.req_que* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = call i32 @MAKE_HANDLE(i32 %150, i64 %151)
  %153 = load %struct.cmd_bidir*, %struct.cmd_bidir** %15, align 8
  %154 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.cmd_bidir*, %struct.cmd_bidir** %15, align 8
  %156 = bitcast %struct.cmd_bidir* %155 to i64*
  %157 = getelementptr inbounds i64, i64* %156, i64 2
  store i64* %157, i64** %14, align 8
  %158 = load i64*, i64** %14, align 8
  %159 = load i64, i64* @REQUEST_ENTRY_SIZE, align 8
  %160 = sub nsw i64 %159, 8
  %161 = call i32 @memset(i64* %158, i32 0, i64 %160)
  %162 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %163 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @cpu_to_le16(i32 %164)
  %166 = load %struct.cmd_bidir*, %struct.cmd_bidir** %15, align 8
  %167 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %169 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.cmd_bidir*, %struct.cmd_bidir** %15, align 8
  %174 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %172, i32* %176, align 4
  %177 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %178 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.cmd_bidir*, %struct.cmd_bidir** %15, align 8
  %183 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  store i32 %181, i32* %185, align 4
  %186 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %187 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.cmd_bidir*, %struct.cmd_bidir** %15, align 8
  %192 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  store i32 %190, i32* %194, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %197 = load %struct.cmd_bidir*, %struct.cmd_bidir** %15, align 8
  %198 = load i64, i64* %7, align 8
  %199 = call i32 @qla25xx_build_bidir_iocb(%struct.TYPE_8__* %195, %struct.scsi_qla_host* %196, %struct.cmd_bidir* %197, i64 %198)
  %200 = load %struct.rsp_que*, %struct.rsp_que** %16, align 8
  %201 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.cmd_bidir*, %struct.cmd_bidir** %15, align 8
  %204 = getelementptr inbounds %struct.cmd_bidir, %struct.cmd_bidir* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  %205 = load i64, i64* %10, align 8
  %206 = load %struct.req_que*, %struct.req_que** %17, align 8
  %207 = getelementptr inbounds %struct.req_que, %struct.req_que* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = load %struct.req_que*, %struct.req_que** %17, align 8
  %210 = getelementptr inbounds %struct.req_que, %struct.req_que* %209, i32 0, i32 5
  %211 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %210, align 8
  %212 = load i64, i64* %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %211, i64 %212
  store %struct.TYPE_8__* %208, %struct.TYPE_8__** %213, align 8
  %214 = load i64, i64* %10, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  %217 = load i64, i64* %12, align 8
  %218 = load %struct.req_que*, %struct.req_que** %17, align 8
  %219 = getelementptr inbounds %struct.req_que, %struct.req_que* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %220, %217
  store i64 %221, i64* %219, align 8
  %222 = call i32 (...) @wmb()
  %223 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %224 = load %struct.req_que*, %struct.req_que** %17, align 8
  %225 = call i32 @qla2x00_start_iocbs(%struct.scsi_qla_host* %223, %struct.req_que* %224)
  br label %226

226:                                              ; preds = %143, %141, %91
  %227 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %228 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %227, i32 0, i32 0
  %229 = load i64, i64* %9, align 8
  %230 = call i32 @spin_unlock_irqrestore(i32* %228, i64 %229)
  %231 = load i32, i32* %18, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %226, %44
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @qla2x00_marker(%struct.scsi_qla_host*, %struct.req_que*, %struct.rsp_que*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qla24xx_calc_iocbs(%struct.scsi_qla_host*, i64) #1

declare dso_local i64 @RD_REG_DWORD_RELAXED(i32) #1

declare dso_local i32 @MAKE_HANDLE(i32, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qla25xx_build_bidir_iocb(%struct.TYPE_8__*, %struct.scsi_qla_host*, %struct.cmd_bidir*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qla2x00_start_iocbs(%struct.scsi_qla_host*, %struct.req_que*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
