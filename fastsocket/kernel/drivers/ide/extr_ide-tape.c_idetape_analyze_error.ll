; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_analyze_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_analyze_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.ide_atapi_pc*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.request* }
%struct.request = type { i32, i32*, i32 }
%struct.ide_atapi_pc = type { i32, i64*, i64, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cmd: 0x%x, sense key = %x, asc = %x, ascq = %x\00", align 1
@PC_FLAG_DMA_ERROR = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i64 0, align 8
@WRITE_6 = common dso_local global i64 0, align 8
@PC_FLAG_ABORT = common dso_local global i32 0, align 4
@IDE_DRV_ERROR_FILEMARK = common dso_local global i8* null, align 8
@IDE_DRV_ERROR_EOD = common dso_local global i8* null, align 8
@IDETAPE_MAX_PC_RETRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @idetape_analyze_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idetape_analyze_error(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.ide_atapi_pc*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %11, align 8
  store %struct.ide_atapi_pc* %12, %struct.ide_atapi_pc** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.request*, %struct.request** %16, align 8
  store %struct.request* %17, %struct.request** %5, align 8
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @bio_data(i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 15
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 13
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @IDE_DBG_FUNC, align 4
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ide_debug_log(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %55 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PC_FLAG_DMA_ERROR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = call i32 @get_unaligned_be32(i32* %65)
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.request*, %struct.request** %5, align 8
  %69 = getelementptr inbounds %struct.request, %struct.request* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %60, %1
  %71 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %72 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @READ_6, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %80 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @WRITE_6, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %78, %70
  %87 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %88 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %86
  %94 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %95 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %93
  %101 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %102 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 5
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %114 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %113, i32 0, i32 3
  store i8* null, i8** %114, align 8
  %115 = load i32, i32* @PC_FLAG_ABORT, align 4
  %116 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %117 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %112, %107
  br label %121

121:                                              ; preds = %120, %100, %93, %86, %78
  %122 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %123 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @READ_6, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %121
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 128
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load i8*, i8** @IDE_DRV_ERROR_FILEMARK, align 8
  %137 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %138 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* @PC_FLAG_ABORT, align 4
  %140 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %141 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %135, %129, %121
  %145 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %146 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @WRITE_6, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %183

152:                                              ; preds = %144
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 64
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %173, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 13
  br i1 %162, label %163, label %182

163:                                              ; preds = %158
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %163
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %182

173:                                              ; preds = %168, %152
  %174 = load i8*, i8** @IDE_DRV_ERROR_EOD, align 8
  %175 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %176 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* @PC_FLAG_ABORT, align 4
  %178 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %179 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %173, %168, %163, %158
  br label %183

183:                                              ; preds = %182, %144
  %184 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %185 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @READ_6, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %199, label %191

191:                                              ; preds = %183
  %192 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %193 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %192, i32 0, i32 1
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @WRITE_6, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %234

199:                                              ; preds = %191, %183
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 8
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load i8*, i8** @IDE_DRV_ERROR_EOD, align 8
  %206 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %207 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* @PC_FLAG_ABORT, align 4
  %209 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %210 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %204, %199
  %214 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %215 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @PC_FLAG_ABORT, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %233, label %220

220:                                              ; preds = %213
  %221 = load %struct.request*, %struct.request** %5, align 8
  %222 = call i32 @blk_rq_bytes(%struct.request* %221)
  %223 = load %struct.request*, %struct.request** %5, align 8
  %224 = getelementptr inbounds %struct.request, %struct.request* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %222, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %220
  %229 = load i64, i64* @IDETAPE_MAX_PC_RETRIES, align 8
  %230 = add nsw i64 %229, 1
  %231 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %232 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %231, i32 0, i32 2
  store i64 %230, i64* %232, align 8
  br label %233

233:                                              ; preds = %228, %220, %213
  br label %234

234:                                              ; preds = %233, %191
  ret void
}

declare dso_local i32* @bio_data(i32) #1

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
