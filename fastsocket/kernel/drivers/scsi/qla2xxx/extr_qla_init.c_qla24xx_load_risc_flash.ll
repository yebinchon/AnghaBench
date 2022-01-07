; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_load_risc_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_load_risc_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.req_que** }
%struct.req_que = type { i32, i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"FW: Loading firmware from flash (%x).\0A\00", align 1
@FA_RISC_CODE_SEGMENTS = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Unable to verify the integrity of flash firmware image.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Firmware data: %08x %08x %08x %08x.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"Loading risc segment@ risc addr %x number of dwords 0x%x offset 0x%x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to load segment %d of firmware.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @qla24xx_load_risc_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_load_risc_flash(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qla_hw_data*, align 8
  %17 = alloca %struct.req_que*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %16, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 1
  %24 = load %struct.req_que**, %struct.req_que*** %23, align 8
  %25 = getelementptr inbounds %struct.req_que*, %struct.req_que** %24, i64 0
  %26 = load %struct.req_que*, %struct.req_que** %25, align 8
  store %struct.req_que* %26, %struct.req_que** %17, align 8
  %27 = load i32, i32* @ql_dbg_init, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %27, %struct.TYPE_7__* %28, i32 139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @FA_RISC_CODE_SEGMENTS, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.req_que*, %struct.req_que** %17, align 8
  %34 = getelementptr inbounds %struct.req_que, %struct.req_que* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %6, align 8
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 4
  %42 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %38, i32* %39, i32 %41, i32 4)
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %57, %3
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %43

60:                                               ; preds = %43
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %100, label %80

80:                                               ; preds = %75, %70, %65, %60
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %80
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %85
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %90
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %95, %75
  %101 = load i32, i32* @ql_log_fatal, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %101, %struct.TYPE_7__* %102, i32 140, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @ql_log_fatal, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %104, %struct.TYPE_7__* %105, i32 141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %111, i32 %114, i32 %117)
  %119 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %119, i32* %4, align 4
  br label %235

120:                                              ; preds = %95, %90, %85, %80
  br label %121

121:                                              ; preds = %230, %120
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @QLA_SUCCESS, align 4
  %127 = icmp eq i32 %125, %126
  br label %128

128:                                              ; preds = %124, %121
  %129 = phi i1 [ false, %121 ], [ %127, %124 ]
  br i1 %129, label %130, label %233

130:                                              ; preds = %128
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %131, i32* %132, i32 %133, i32 4)
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @be32_to_cpu(i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = load i32, i32* %13, align 4
  br label %147

144:                                              ; preds = %130
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %145, align 4
  br label %147

147:                                              ; preds = %144, %142
  %148 = phi i32 [ %143, %142 ], [ %146, %144 ]
  %149 = load i32*, i32** %6, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @be32_to_cpu(i32 %152)
  store i32 %153, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %218, %147
  %155 = load i32, i32* %14, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @QLA_SUCCESS, align 4
  %160 = icmp eq i32 %158, %159
  br label %161

161:                                              ; preds = %157, %154
  %162 = phi i1 [ false, %154 ], [ %160, %157 ]
  br i1 %162, label %163, label %230

163:                                              ; preds = %161
  %164 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %165 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = ashr i32 %166, 2
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %171, %163
  %174 = load i32, i32* @ql_dbg_init, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %174, %struct.TYPE_7__* %175, i32 142, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %176, i32 %177, i32 %178)
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %180, i32* %181, i32 %182, i32 %183)
  store i32 0, i32* %15, align 4
  br label %185

185:                                              ; preds = %200, %173
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @swab32(i32 %194)
  %196 = load i32*, i32** %11, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %195, i32* %199, align 4
  br label %200

200:                                              ; preds = %189
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %185

203:                                              ; preds = %185
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %205 = load %struct.req_que*, %struct.req_que** %17, align 8
  %206 = getelementptr inbounds %struct.req_que, %struct.req_que* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @qla2x00_load_ram(%struct.TYPE_7__* %204, i32 %207, i32 %208, i32 %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %203
  %214 = load i32, i32* @ql_log_fatal, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %216 = load i32, i32* %10, align 4
  %217 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %214, %struct.TYPE_7__* %215, i32 143, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %216)
  br label %230

218:                                              ; preds = %203
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %14, align 4
  %227 = sub nsw i32 %226, %225
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  br label %154

230:                                              ; preds = %213, %161
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %9, align 4
  br label %121

233:                                              ; preds = %128
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %233, %100
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i32, ...) #1

declare dso_local i32 @qla24xx_read_flash_data(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @qla2x00_load_ram(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
