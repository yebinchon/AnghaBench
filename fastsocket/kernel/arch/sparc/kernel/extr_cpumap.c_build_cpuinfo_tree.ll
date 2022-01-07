; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_cpumap.c_build_cpuinfo_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_cpumap.c_build_cpuinfo_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_tree = type { i32, %struct.cpuinfo_node*, %struct.TYPE_2__* }
%struct.cpuinfo_node = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cpuinfo_level = type { i32 }

@CPUINFO_LVL_MAX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@cpu_online_map = common dso_local global i32 0, align 4
@CPUINFO_LVL_PROC = common dso_local global i32 0, align 4
@CPUINFO_LVL_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpuinfo_tree* ()* @build_cpuinfo_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpuinfo_tree* @build_cpuinfo_tree() #0 {
  %1 = alloca %struct.cpuinfo_tree*, align 8
  %2 = alloca %struct.cpuinfo_tree*, align 8
  %3 = alloca %struct.cpuinfo_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca %struct.cpuinfo_level, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %23 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %26 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %8, align 8
  %29 = call i32 @enumerate_cpuinfo_nodes(%struct.cpuinfo_level* %19)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 28, %31
  %33 = add i64 24, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.cpuinfo_tree* @kzalloc(i32 %34, i32 %35)
  store %struct.cpuinfo_tree* %36, %struct.cpuinfo_tree** %2, align 8
  %37 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %38 = icmp ne %struct.cpuinfo_tree* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %0
  store %struct.cpuinfo_tree* null, %struct.cpuinfo_tree** %1, align 8
  store i32 1, i32* %15, align 4
  br label %337

40:                                               ; preds = %0
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %43 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %45 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %44, i32 0, i32 2
  %46 = mul nuw i64 4, %17
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memcpy(%struct.TYPE_2__** %45, %struct.cpuinfo_level* %19, i32 %47)
  %49 = load i32, i32* @cpu_online_map, align 4
  %50 = call i32 @first_cpu(i32 %49)
  store i32 %50, i32* %11, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %145, %40
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @CPUINFO_LVL_ROOT, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %148

56:                                               ; preds = %52
  %57 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %58 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %25, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %70 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %69, i32 0, i32 1
  %71 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %71, i64 %73
  store %struct.cpuinfo_node* %74, %struct.cpuinfo_node** %3, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @cpuinfo_id(i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %56
  %84 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %85 = call i32 @kfree(%struct.cpuinfo_tree* %84)
  store %struct.cpuinfo_tree* null, %struct.cpuinfo_tree** %1, align 8
  store i32 1, i32* %15, align 4
  br label %337

86:                                               ; preds = %56
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %89 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %92 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %94 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %93, i32 0, i32 2
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @CPUINFO_LVL_ROOT, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %100 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  br label %109

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108, %98
  %110 = phi i32 [ %107, %98 ], [ -1, %108 ]
  %111 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %112 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %11, align 4
  br label %128

118:                                              ; preds = %109
  %119 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %120 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  br label %128

128:                                              ; preds = %118, %116
  %129 = phi i32 [ %117, %116 ], [ %127, %118 ]
  %130 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %131 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 4
  %132 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %133 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %132, i32 0, i32 5
  store i32 %129, i32* %133, align 4
  %134 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %135 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %134, i32 0, i32 4
  store i32 %129, i32* %135, align 4
  %136 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %137 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %28, i64 %140
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %22, i64 %143
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %128
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %14, align 4
  br label %52

148:                                              ; preds = %52
  %149 = call i32 (...) @num_possible_cpus()
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %160, %148
  %152 = load i32, i32* %13, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i32, i32* %13, align 4
  %156 = call i64 @cpu_online(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %163

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %13, align 4
  br label %151

163:                                              ; preds = %158, %151
  br label %164

164:                                              ; preds = %333, %173, %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp sle i32 %166, %167
  br i1 %168, label %169, label %335

169:                                              ; preds = %164
  %170 = load i32, i32* %11, align 4
  %171 = call i64 @cpu_online(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %169
  br label %164

174:                                              ; preds = %169
  %175 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %330, %174
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @CPUINFO_LVL_ROOT, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %333

180:                                              ; preds = %176
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @cpuinfo_id(i32 %181, i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %191 = call i32 @kfree(%struct.cpuinfo_tree* %190)
  store %struct.cpuinfo_tree* null, %struct.cpuinfo_tree** %1, align 8
  store i32 1, i32* %15, align 4
  br label %337

192:                                              ; preds = %180
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %28, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %193, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %323

203:                                              ; preds = %199, %192
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %28, i64 %206
  store i32 %204, i32* %207, align 4
  %208 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %209 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %208, i32 0, i32 1
  %210 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %25, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %210, i64 %215
  store %struct.cpuinfo_node* %216, %struct.cpuinfo_node** %3, align 8
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %22, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %222 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %22, i64 %224
  store i32 1, i32* %225, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %13, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %203
  %230 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %231 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %229, %203
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* @CPUINFO_LVL_ROOT, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %234
  %239 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %240 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %239, i32 0, i32 3
  store i32 -1, i32* %240, align 4
  br label %249

241:                                              ; preds = %234
  %242 = load i32, i32* %14, align 4
  %243 = sub nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %25, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %248 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  br label %249

249:                                              ; preds = %241, %238
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %265

253:                                              ; preds = %249
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %13, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = load i32, i32* %11, align 4
  br label %261

259:                                              ; preds = %253
  %260 = load i32, i32* %12, align 4
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  %263 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %264 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %263, i32 0, i32 5
  store i32 %262, i32* %264, align 4
  br label %274

265:                                              ; preds = %249
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %25, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %270, 1
  %272 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %273 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %272, i32 0, i32 5
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %265, %261
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %25, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 4
  store i32 %279, i32* %9, align 4
  %280 = load i32, i32* %9, align 4
  %281 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %282 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %281, i32 0, i32 2
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = load i32, i32* %14, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp sle i32 %280, %288
  br i1 %289, label %290, label %322

290:                                              ; preds = %274
  %291 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  %292 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %291, i32 0, i32 1
  %293 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %292, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %293, i64 %295
  store %struct.cpuinfo_node* %296, %struct.cpuinfo_node** %3, align 8
  %297 = load i32, i32* %10, align 4
  %298 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %299 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %14, align 4
  %301 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %302 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* %14, align 4
  %304 = load i32, i32* @CPUINFO_LVL_PROC, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %290
  %307 = load i32, i32* %11, align 4
  br label %314

308:                                              ; preds = %290
  %309 = load i32, i32* %14, align 4
  %310 = add nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %25, i64 %311
  %313 = load i32, i32* %312, align 4
  br label %314

314:                                              ; preds = %308, %306
  %315 = phi i32 [ %307, %306 ], [ %313, %308 ]
  %316 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %317 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %316, i32 0, i32 6
  store i32 %315, i32* %317, align 4
  %318 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %319 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %318, i32 0, i32 5
  store i32 %315, i32* %319, align 4
  %320 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %3, align 8
  %321 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %320, i32 0, i32 4
  store i32 %315, i32* %321, align 4
  br label %322

322:                                              ; preds = %314, %274
  br label %329

323:                                              ; preds = %199
  %324 = load i32, i32* %14, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %22, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 4
  br label %329

329:                                              ; preds = %323, %322
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %14, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %14, align 4
  br label %176

333:                                              ; preds = %176
  %334 = load i32, i32* %11, align 4
  store i32 %334, i32* %12, align 4
  br label %164

335:                                              ; preds = %164
  %336 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %2, align 8
  store %struct.cpuinfo_tree* %336, %struct.cpuinfo_tree** %1, align 8
  store i32 1, i32* %15, align 4
  br label %337

337:                                              ; preds = %335, %189, %83, %39
  %338 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %338)
  %339 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %1, align 8
  ret %struct.cpuinfo_tree* %339
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @enumerate_cpuinfo_nodes(%struct.cpuinfo_level*) #2

declare dso_local %struct.cpuinfo_tree* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_2__**, %struct.cpuinfo_level*, i32) #2

declare dso_local i32 @first_cpu(i32) #2

declare dso_local i32 @cpuinfo_id(i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @kfree(%struct.cpuinfo_tree*) #2

declare dso_local i32 @num_possible_cpus(...) #2

declare dso_local i64 @cpu_online(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
