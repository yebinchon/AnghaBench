; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_2__, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32**, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_queue_destroy(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 9
  %7 = load i32**, i32*** %6, align 8
  %8 = icmp ne i32** %7, null
  br i1 %8, label %9, label %56

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %44, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 9
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %16
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 9
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @lpfc_sli4_queue_free(i32* %34)
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 9
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %26, %16
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 9
  %51 = load i32**, i32*** %50, align 8
  %52 = call i32 @kfree(i32** %51)
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 9
  store i32** null, i32*** %55, align 8
  br label %56

56:                                               ; preds = %47, %1
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 8
  %60 = load i32**, i32*** %59, align 8
  %61 = icmp ne i32** %60, null
  br i1 %61, label %62, label %109

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %97, %62
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %63
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 8
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %69
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 8
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @lpfc_sli4_queue_free(i32* %87)
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 8
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %79, %69
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %63

100:                                              ; preds = %63
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 8
  %104 = load i32**, i32*** %103, align 8
  %105 = call i32 @kfree(i32** %104)
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 8
  store i32** null, i32*** %108, align 8
  br label %109

109:                                              ; preds = %100, %56
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 7
  %113 = load i32**, i32*** %112, align 8
  %114 = icmp ne i32** %113, null
  br i1 %114, label %115, label %162

115:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %150, %115
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %153

122:                                              ; preds = %116
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %124 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 7
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %149

132:                                              ; preds = %122
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %134 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 7
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @lpfc_sli4_queue_free(i32* %140)
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 7
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %132, %122
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %116

153:                                              ; preds = %116
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %155 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 7
  %157 = load i32**, i32*** %156, align 8
  %158 = call i32 @kfree(i32** %157)
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %160 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 7
  store i32** null, i32*** %161, align 8
  br label %162

162:                                              ; preds = %153, %109
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %169 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @iounmap(i32* %170)
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %173 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %172, i32 0, i32 4
  store i32* null, i32** %173, align 8
  br label %174

174:                                              ; preds = %167, %162
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @iounmap(i32* %182)
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 3
  store i32* null, i32** %185, align 8
  br label %186

186:                                              ; preds = %179, %174
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %188 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %198

191:                                              ; preds = %186
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %193 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @iounmap(i32* %194)
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %197 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %196, i32 0, i32 2
  store i32* null, i32** %197, align 8
  br label %198

198:                                              ; preds = %191, %186
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 6
  %202 = load i32**, i32*** %201, align 8
  %203 = icmp ne i32** %202, null
  br i1 %203, label %204, label %213

204:                                              ; preds = %198
  %205 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %206 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 6
  %208 = load i32**, i32*** %207, align 8
  %209 = call i32 @kfree(i32** %208)
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %211 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 6
  store i32** null, i32*** %212, align 8
  br label %213

213:                                              ; preds = %204, %198
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %215 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %228

219:                                              ; preds = %213
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %221 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @lpfc_sli4_queue_free(i32* %223)
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 5
  store i32* null, i32** %227, align 8
  br label %228

228:                                              ; preds = %219, %213
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %230 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %243

234:                                              ; preds = %228
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %236 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @lpfc_sli4_queue_free(i32* %238)
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %241 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 4
  store i32* null, i32** %242, align 8
  br label %243

243:                                              ; preds = %234, %228
  %244 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %245 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %258

249:                                              ; preds = %243
  %250 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %251 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @lpfc_sli4_queue_free(i32* %253)
  %255 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %256 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 3
  store i32* null, i32** %257, align 8
  br label %258

258:                                              ; preds = %249, %243
  %259 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %260 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %273

264:                                              ; preds = %258
  %265 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %266 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @lpfc_sli4_queue_free(i32* %268)
  %270 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %271 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 2
  store i32* null, i32** %272, align 8
  br label %273

273:                                              ; preds = %264, %258
  %274 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %275 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %288

279:                                              ; preds = %273
  %280 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %281 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @lpfc_sli4_queue_free(i32* %283)
  %285 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %286 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 1
  store i32* null, i32** %287, align 8
  br label %288

288:                                              ; preds = %279, %273
  %289 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %290 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = icmp ne i32* %292, null
  br i1 %293, label %294, label %303

294:                                              ; preds = %288
  %295 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %296 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @lpfc_sli4_queue_free(i32* %298)
  %300 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %301 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  store i32* null, i32** %302, align 8
  br label %303

303:                                              ; preds = %294, %288
  ret void
}

declare dso_local i32 @lpfc_sli4_queue_free(i32*) #1

declare dso_local i32 @kfree(i32**) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
