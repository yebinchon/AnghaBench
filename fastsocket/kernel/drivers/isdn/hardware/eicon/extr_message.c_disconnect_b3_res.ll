; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_disconnect_b3_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_disconnect_b3_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64* }
%struct.TYPE_11__ = type { i32, i32, i64, i64*, i64, %struct.TYPE_10__*, i32, i64, i32, i64, i64 }
%struct.TYPE_10__ = type { i64* }

@.str = private unnamed_addr constant [28 x i8] c"disconnect_b3_res(ncci=0x%x\00", align 1
@B3_T90NL = common dso_local global i32 0, align 4
@B3_ISO8208 = common dso_local global i32 0, align 4
@B3_X25_DCE = common dso_local global i32 0, align 4
@B2_LAPD = common dso_local global i64 0, align 8
@B2_LAPD_FREE_SAPI_SEL = common dso_local global i64 0, align 8
@CALL_DIR_FORCE_OUTG_NL = common dso_local global i32 0, align 4
@MAX_CHANNELS_PER_PLCI = common dso_local global i64 0, align 8
@IDLE = common dso_local global i64 0, align 8
@SUSPENDING = common dso_local global i64 0, align 8
@_FACILITY_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ws\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\03\04\00\00\00", align 1
@_DISCONNECT_I = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@MANUFACTURER_FEATURE_FAX_PAPER_FORMATS = common dso_local global i32 0, align 4
@INC_DIS_PENDING = common dso_local global i64 0, align 8
@N_EDATA = common dso_local global i32 0, align 4
@fax_disconnect_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*)* @disconnect_b3_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @disconnect_b3_res(i32 %0, i64 %1, %struct.TYPE_12__* %2, %struct.TYPE_11__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %14, align 8
  %20 = call i32 @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = call i32 @dbug(i32 1, i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %231

24:                                               ; preds = %6
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %231

27:                                               ; preds = %24
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 10
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 9
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @B3_T90NL, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %27
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @B3_ISO8208, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @B3_X25_DCE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @B2_LAPD, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @B2_LAPD_FREE_SAPI_SEL, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @CALL_DIR_FORCE_OUTG_NL, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %57, %51, %45, %39, %27
  store i64 0, i64* %15, align 8
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* @MAX_CHANNELS_PER_PLCI, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp ne i64 %80, %81
  br label %83

83:                                               ; preds = %74, %70
  %84 = phi i1 [ false, %70 ], [ %82, %74 ]
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %15, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %15, align 8
  br label %70

89:                                               ; preds = %83
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @MAX_CHANNELS_PER_PLCI, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %183

93:                                               ; preds = %89
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %100, align 8
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %122, %103
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* @MAX_CHANNELS_PER_PLCI, align 8
  %107 = sub i64 %106, 1
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %15, align 8
  %114 = add i64 %113, 1
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %15, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 %116, i64* %121, align 8
  br label %122

122:                                              ; preds = %109
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %15, align 8
  br label %104

125:                                              ; preds = %104
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @MAX_CHANNELS_PER_PLCI, align 8
  %130 = sub i64 %129, 1
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @ncci_free_receive_buffers(%struct.TYPE_11__* %132, i64 %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IDLE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %125
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SUSPENDING, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %182

146:                                              ; preds = %140, %125
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %182, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SUSPENDING, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %151
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @_FACILITY_I, align 4
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = and i64 %163, 65535
  %165 = trunc i64 %164 to i32
  %166 = call i32 (i32, i32, i32, i32, i8*, i64, ...) @sendf(i32 %160, i32 %161, i32 %165, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @_DISCONNECT_I, align 4
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = and i64 %172, 65535
  %174 = trunc i64 %173 to i32
  %175 = call i32 (i32, i32, i32, i32, i8*, i64, ...) @sendf(i32 %169, i32 %170, i32 %174, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 0)
  br label %176

176:                                              ; preds = %157, %151
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %178 = call i32 @plci_remove(%struct.TYPE_11__* %177)
  %179 = load i64, i64* @IDLE, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %176, %146, %140
  br label %230

183:                                              ; preds = %89
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @MANUFACTURER_FEATURE_FAX_PAPER_FORMATS, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %229

190:                                              ; preds = %183
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 4
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 5
  br i1 %199, label %200, label %229

200:                                              ; preds = %195, %190
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = load i64, i64* %14, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @INC_DIS_PENDING, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %229

209:                                              ; preds = %200
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %211 = load i64, i64* %14, align 8
  %212 = call i32 @ncci_free_receive_buffers(%struct.TYPE_11__* %210, i64 %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %214 = load i32, i32* @N_EDATA, align 4
  %215 = load i64, i64* %14, align 8
  %216 = call i32 @nl_req_ncci(%struct.TYPE_11__* %213, i32 %214, i64 %215)
  %217 = load i64, i64* @IDLE, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 5
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = load i64, i64* %14, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  store i64 %217, i64* %224, align 8
  %225 = load i32, i32* %8, align 4
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %227 = load i32, i32* @fax_disconnect_command, align 4
  %228 = call i32 @start_internal_command(i32 %225, %struct.TYPE_11__* %226, i32 %227)
  store i64 1, i64* %7, align 8
  br label %232

229:                                              ; preds = %200, %195, %183
  br label %230

230:                                              ; preds = %229, %182
  br label %231

231:                                              ; preds = %230, %24, %6
  store i64 0, i64* %7, align 8
  br label %232

232:                                              ; preds = %231, %209
  %233 = load i64, i64* %7, align 8
  ret i64 %233
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i64) #1

declare dso_local i32 @ncci_free_receive_buffers(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @sendf(i32, i32, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @plci_remove(%struct.TYPE_11__*) #1

declare dso_local i32 @nl_req_ncci(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @start_internal_command(i32, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
