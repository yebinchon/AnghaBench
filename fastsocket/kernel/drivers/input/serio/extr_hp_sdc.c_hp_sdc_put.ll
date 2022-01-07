; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc.c_hp_sdc_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc.c_hp_sdc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32, i32, i32, i32, i64, %struct.TYPE_6__**, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32*, i32, i32)*, i32 }

@hp_sdc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@HP_SDC_QUEUE_LEN = common dso_local global i32 0, align 4
@HP_SDC_CMD_SET_IM = common dso_local global i32 0, align 4
@HP_SDC_ACT_DEALLOC = common dso_local global i32 0, align 4
@HP_SDC_ACT_PRECMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_DURING = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAOUT = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAREG = common dso_local global i32 0, align 4
@HP_SDC_CMD_SET_D0 = common dso_local global i32 0, align 4
@HP_SDC_ACT_POSTCMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAIN = common dso_local global i32 0, align 4
@HP_SDC_ACT_SEMAPHORE = common dso_local global i32 0, align 4
@HP_SDC_ACT_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hp_sdc_put() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %12 = call i32 @write_lock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 6))
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 8), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = call i32 (...) @hp_sdc_status_in8()
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 8), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %638

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %0
  br label %22

22:                                               ; preds = %645, %21
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = call i32 @read_lock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 1), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %37 = load i32, i32* @HP_SDC_QUEUE_LEN, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  store i32 %41, i32* %4, align 4
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 9), align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %84

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %76, %65, %59, %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @HP_SDC_QUEUE_LEN, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %50

60:                                               ; preds = %55
  %61 = call i32 @read_lock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 1), align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  br label %50

67:                                               ; preds = %60
  %68 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 9), align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %77

76:                                               ; preds = %67
  br label %50

77:                                               ; preds = %75, %50
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  br label %84

84:                                               ; preds = %82, %48
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 12), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 2), align 8
  %89 = load i32, i32* @HP_SDC_CMD_SET_IM, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @hp_sdc_status_out8(i32 %90)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 12), align 8
  br label %638

92:                                               ; preds = %84
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %647

96:                                               ; preds = %92
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 9), align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %1, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %3, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %107, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %96
  %113 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 9), align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %113, i64 %115
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %116, align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %120 = load i32, i32* @HP_SDC_QUEUE_LEN, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  br label %123

123:                                              ; preds = %122, %112
  br label %638

124:                                              ; preds = %96
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %2, align 4
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %136, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %124
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @HP_SDC_ACT_DEALLOC, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %148 = call i32 @kfree(%struct.TYPE_6__* %147)
  br label %149

149:                                              ; preds = %146, %141
  %150 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 9), align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %150, i64 %152
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %153, align 8
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %157 = load i32, i32* @HP_SDC_QUEUE_LEN, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  br label %160

160:                                              ; preds = %159, %149
  br label %638

161:                                              ; preds = %124
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %2, align 4
  %164 = load i32, i32* @HP_SDC_ACT_PRECMD, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %210

167:                                              ; preds = %162
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %3, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %167
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %3, align 4
  %176 = load i32, i32* @HP_SDC_ACT_PRECMD, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %2, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %2, align 4
  br label %210

180:                                              ; preds = %167
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @hp_sdc_status_out8(i32 %187)
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* @HP_SDC_ACT_DURING, align 4
  %195 = and i32 %193, %194
  %196 = load i32, i32* @HP_SDC_ACT_PRECMD, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %180
  br label %577

199:                                              ; preds = %180
  %200 = load i32, i32* %2, align 4
  %201 = load i32, i32* @HP_SDC_ACT_DATAOUT, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %204, %199
  br label %638

210:                                              ; preds = %173, %162
  %211 = load i32, i32* %2, align 4
  %212 = load i32, i32* @HP_SDC_ACT_DATAOUT, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %270

215:                                              ; preds = %210
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %3, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %3, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %3, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load i32, i32* %6, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %262

232:                                              ; preds = %215
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %235, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @hp_sdc_data_out8(i32 %241)
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %3, align 4
  %251 = sub nsw i32 %249, %250
  %252 = load i32, i32* %6, align 4
  %253 = icmp sge i32 %251, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %232
  %255 = load i32, i32* %2, align 4
  %256 = load i32, i32* @HP_SDC_ACT_DURING, align 4
  %257 = and i32 %255, %256
  %258 = load i32, i32* @HP_SDC_ACT_DATAOUT, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  br label %577

261:                                              ; preds = %254, %232
  br label %638

262:                                              ; preds = %215
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* %3, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %3, align 4
  %266 = load i32, i32* @HP_SDC_ACT_DATAOUT, align 4
  %267 = xor i32 %266, -1
  %268 = load i32, i32* %2, align 4
  %269 = and i32 %268, %267
  store i32 %269, i32* %2, align 4
  br label %525

270:                                              ; preds = %210
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %2, align 4
  %273 = load i32, i32* @HP_SDC_ACT_DATAREG, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %524

276:                                              ; preds = %271
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %3, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %7, align 4
  %284 = load i32, i32* %3, align 4
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %284, %287
  br i1 %288, label %289, label %328

289:                                              ; preds = %276
  %290 = load i32, i32* %3, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %3, align 4
  %292 = load i32, i32* %7, align 4
  %293 = and i32 %292, 1
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  %296 = xor i1 %295, true
  %297 = zext i1 %296 to i32
  %298 = load i32, i32* %3, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %3, align 4
  %300 = load i32, i32* %7, align 4
  %301 = and i32 %300, 2
  %302 = icmp ne i32 %301, 0
  %303 = xor i1 %302, true
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = load i32, i32* %3, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %3, align 4
  %308 = load i32, i32* %7, align 4
  %309 = and i32 %308, 4
  %310 = icmp ne i32 %309, 0
  %311 = xor i1 %310, true
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = load i32, i32* %3, align 4
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %3, align 4
  %316 = load i32, i32* %7, align 4
  %317 = and i32 %316, 8
  %318 = icmp ne i32 %317, 0
  %319 = xor i1 %318, true
  %320 = xor i1 %319, true
  %321 = zext i1 %320 to i32
  %322 = load i32, i32* %3, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %3, align 4
  %324 = load i32, i32* @HP_SDC_ACT_DATAREG, align 4
  %325 = xor i32 %324, -1
  %326 = load i32, i32* %2, align 4
  %327 = and i32 %326, %325
  store i32 %327, i32* %2, align 4
  br label %524

328:                                              ; preds = %276
  %329 = load i32, i32* %7, align 4
  %330 = and i32 %329, 1
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %341

332:                                              ; preds = %328
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %3, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %3, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %335, i64 %338
  %340 = load i32, i32* %339, align 4
  br label %345

341:                                              ; preds = %328
  %342 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 3), align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  br label %345

345:                                              ; preds = %341, %332
  %346 = phi i32 [ %340, %332 ], [ %344, %341 ]
  %347 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %346, i32* %347, align 16
  %348 = load i32, i32* %7, align 4
  %349 = and i32 %348, 2
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %360

351:                                              ; preds = %345
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 2
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %3, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %3, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %354, i64 %357
  %359 = load i32, i32* %358, align 4
  br label %364

360:                                              ; preds = %345
  %361 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 3), align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 1
  %363 = load i32, i32* %362, align 4
  br label %364

364:                                              ; preds = %360, %351
  %365 = phi i32 [ %359, %351 ], [ %363, %360 ]
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %365, i32* %366, align 4
  %367 = load i32, i32* %7, align 4
  %368 = and i32 %367, 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %364
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %3, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %3, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %373, i64 %376
  %378 = load i32, i32* %377, align 4
  br label %383

379:                                              ; preds = %364
  %380 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 3), align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 2
  %382 = load i32, i32* %381, align 4
  br label %383

383:                                              ; preds = %379, %370
  %384 = phi i32 [ %378, %370 ], [ %382, %379 ]
  %385 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %384, i32* %385, align 8
  %386 = load i32, i32* %7, align 4
  %387 = and i32 %386, 8
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %383
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 2
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %3, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %3, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %392, i64 %395
  %397 = load i32, i32* %396, align 4
  br label %402

398:                                              ; preds = %383
  %399 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 3), align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 3
  %401 = load i32, i32* %400, align 4
  br label %402

402:                                              ; preds = %398, %389
  %403 = phi i32 [ %397, %389 ], [ %401, %398 ]
  %404 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %403, i32* %404, align 4
  %405 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  %406 = icmp sgt i32 %405, 115
  br i1 %406, label %423, label %407

407:                                              ; preds = %402
  %408 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  %409 = icmp slt i32 %408, 112
  br i1 %409, label %423, label %410

410:                                              ; preds = %407
  %411 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  %412 = sub nsw i32 %411, 112
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 3), align 8
  %417 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  %418 = sub nsw i32 %417, 112
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %416, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = icmp eq i32 %415, %421
  br i1 %422, label %423, label %470

423:                                              ; preds = %410, %407, %402
  store i32 0, i32* %9, align 4
  br label %424

424:                                              ; preds = %440, %423
  %425 = load i32, i32* %9, align 4
  %426 = icmp slt i32 %425, 4
  br i1 %426, label %427, label %438

427:                                              ; preds = %424
  %428 = load i32, i32* %9, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 3), align 8
  %433 = load i32, i32* %9, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = icmp eq i32 %431, %436
  br label %438

438:                                              ; preds = %427, %424
  %439 = phi i1 [ false, %424 ], [ %437, %427 ]
  br i1 %439, label %440, label %443

440:                                              ; preds = %438
  %441 = load i32, i32* %9, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %9, align 4
  br label %424

443:                                              ; preds = %438
  %444 = load i32, i32* %9, align 4
  %445 = icmp slt i32 %444, 4
  br i1 %445, label %446, label %453

446:                                              ; preds = %443
  %447 = load i32, i32* @HP_SDC_CMD_SET_D0, align 4
  %448 = load i32, i32* %9, align 4
  %449 = add nsw i32 %447, %448
  %450 = call i32 @hp_sdc_status_out8(i32 %449)
  %451 = load i32, i32* %9, align 4
  %452 = add nsw i32 112, %451
  store i32 %452, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  br label %638

453:                                              ; preds = %443
  %454 = load i32, i32* %3, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %3, align 4
  %456 = load i32, i32* %2, align 4
  %457 = load i32, i32* @HP_SDC_ACT_DURING, align 4
  %458 = and i32 %456, %457
  %459 = load i32, i32* @HP_SDC_ACT_DATAREG, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %462

461:                                              ; preds = %453
  br label %577

462:                                              ; preds = %453
  %463 = load i32, i32* %3, align 4
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 3
  store i32 %463, i32* %465, align 8
  %466 = load i32, i32* @HP_SDC_ACT_DATAREG, align 4
  %467 = xor i32 %466, -1
  %468 = load i32, i32* %2, align 4
  %469 = and i32 %468, %467
  store i32 %469, i32* %2, align 4
  br label %524

470:                                              ; preds = %410
  %471 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  %472 = sub nsw i32 %471, 112
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @hp_sdc_data_out8(i32 %475)
  %477 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  %478 = sub nsw i32 %477, 112
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 3), align 8
  %483 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  %484 = sub nsw i32 %483, 112
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %482, i64 %485
  store i32 %481, i32* %486, align 4
  %487 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 4), align 8
  store i32 0, i32* %10, align 4
  br label %489

489:                                              ; preds = %505, %470
  %490 = load i32, i32* %10, align 4
  %491 = icmp slt i32 %490, 4
  br i1 %491, label %492, label %503

492:                                              ; preds = %489
  %493 = load i32, i32* %10, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 3), align 8
  %498 = load i32, i32* %10, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %497, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = icmp eq i32 %496, %501
  br label %503

503:                                              ; preds = %492, %489
  %504 = phi i1 [ false, %489 ], [ %502, %492 ]
  br i1 %504, label %505, label %508

505:                                              ; preds = %503
  %506 = load i32, i32* %10, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %10, align 4
  br label %489

508:                                              ; preds = %503
  %509 = load i32, i32* %10, align 4
  %510 = icmp sge i32 %509, 4
  br i1 %510, label %511, label %523

511:                                              ; preds = %508
  %512 = load i32, i32* %3, align 4
  %513 = add nsw i32 %512, 1
  %514 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %515 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %514, i32 0, i32 3
  store i32 %513, i32* %515, align 8
  %516 = load i32, i32* %2, align 4
  %517 = load i32, i32* @HP_SDC_ACT_DURING, align 4
  %518 = and i32 %516, %517
  %519 = load i32, i32* @HP_SDC_ACT_DATAREG, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %522

521:                                              ; preds = %511
  br label %577

522:                                              ; preds = %511
  br label %523

523:                                              ; preds = %522, %508
  br label %638

524:                                              ; preds = %462, %289, %271
  br label %525

525:                                              ; preds = %524, %262
  %526 = call i32 @read_lock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  %527 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 1), align 4
  %528 = icmp sge i32 %527, 0
  br i1 %528, label %529, label %531

529:                                              ; preds = %525
  %530 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  br label %638

531:                                              ; preds = %525
  %532 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  %533 = load i32, i32* %2, align 4
  %534 = load i32, i32* @HP_SDC_ACT_POSTCMD, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %576

537:                                              ; preds = %531
  %538 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %539 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %538, i32 0, i32 2
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %3, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  %544 = load i32, i32* %543, align 4
  store i32 %544, i32* %11, align 4
  %545 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 3
  %547 = load i32, i32* %546, align 8
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %546, align 8
  %549 = load i32, i32* %2, align 4
  %550 = load i32, i32* @HP_SDC_ACT_DATAIN, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %573

553:                                              ; preds = %537
  %554 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %555 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %554, i32 0, i32 2
  %556 = load i32*, i32** %555, align 8
  %557 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %558 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 8
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %556, i64 %560
  %562 = load i32, i32* %561, align 4
  store i32 %562, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 5), align 4
  %563 = call i32 @do_gettimeofday(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 11))
  %564 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %565 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %564, i32 0, i32 3
  %566 = load i32, i32* %565, align 8
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %565, align 8
  %568 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  %569 = load i32, i32* %4, align 4
  store i32 %569, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 1), align 4
  %570 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 10))
  %571 = load i32, i32* %11, align 4
  %572 = call i32 @hp_sdc_status_out8(i32 %571)
  br label %638

573:                                              ; preds = %537
  %574 = load i32, i32* %11, align 4
  %575 = call i32 @hp_sdc_status_out8(i32 %574)
  br label %577

576:                                              ; preds = %531
  br label %577

577:                                              ; preds = %576, %573, %521, %461, %260, %198
  %578 = load i32, i32* %2, align 4
  %579 = load i32, i32* @HP_SDC_ACT_SEMAPHORE, align 4
  %580 = and i32 %578, %579
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %588

582:                                              ; preds = %577
  %583 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %584 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %583, i32 0, i32 4
  %585 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 8
  %587 = call i32 @up(i32 %586)
  br label %600

588:                                              ; preds = %577
  %589 = load i32, i32* %2, align 4
  %590 = load i32, i32* @HP_SDC_ACT_CALLBACK, align 4
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %599

593:                                              ; preds = %588
  %594 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %595 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %594, i32 0, i32 4
  %596 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %595, i32 0, i32 0
  %597 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %596, align 8
  %598 = call i32 %597(i32 0, i32* null, i32 0, i32 0)
  br label %599

599:                                              ; preds = %593, %588
  br label %600

600:                                              ; preds = %599, %582
  %601 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %602 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %601, i32 0, i32 3
  %603 = load i32, i32* %602, align 8
  %604 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %605 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 4
  %607 = icmp sge i32 %603, %606
  br i1 %607, label %608, label %621

608:                                              ; preds = %600
  %609 = load i32, i32* %2, align 4
  %610 = load i32, i32* @HP_SDC_ACT_DEALLOC, align 4
  %611 = and i32 %609, %610
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %616

613:                                              ; preds = %608
  %614 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %615 = call i32 @kfree(%struct.TYPE_6__* %614)
  br label %616

616:                                              ; preds = %613, %608
  %617 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 9), align 8
  %618 = load i32, i32* %4, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %617, i64 %619
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %620, align 8
  br label %630

621:                                              ; preds = %600
  %622 = load i32, i32* %3, align 4
  %623 = add nsw i32 %622, 1
  %624 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %625 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %624, i32 0, i32 0
  store i32 %623, i32* %625, align 8
  %626 = load i32, i32* %3, align 4
  %627 = add nsw i32 %626, 2
  %628 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %629 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %628, i32 0, i32 3
  store i32 %627, i32* %629, align 8
  br label %630

630:                                              ; preds = %621, %616
  %631 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %633 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %634 = load i32, i32* @HP_SDC_QUEUE_LEN, align 4
  %635 = icmp sge i32 %633, %634
  br i1 %635, label %636, label %637

636:                                              ; preds = %630
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  br label %637

637:                                              ; preds = %636, %630
  br label %638

638:                                              ; preds = %637, %553, %529, %523, %446, %261, %209, %160, %123, %87, %19
  %639 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 8), align 8
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %646, label %641

641:                                              ; preds = %638
  %642 = load i32, i32* %5, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %5, align 4
  %644 = icmp slt i32 %642, 20
  br i1 %644, label %645, label %646

645:                                              ; preds = %641
  br label %22

646:                                              ; preds = %641, %638
  br label %647

647:                                              ; preds = %646, %95
  %648 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 0), align 8
  %649 = icmp sge i32 %648, 0
  br i1 %649, label %650, label %652

650:                                              ; preds = %647
  %651 = call i32 @tasklet_schedule(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 7))
  br label %652

652:                                              ; preds = %650, %647
  %653 = call i32 @write_unlock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hp_sdc, i32 0, i32 6))
  ret i64 0
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @hp_sdc_status_in8(...) #1

declare dso_local i32 @read_lock_irq(i32*) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

declare dso_local i32 @hp_sdc_status_out8(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @hp_sdc_data_out8(i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @up(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
