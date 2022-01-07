; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_module.c_module_frob_arch_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_module.c_module_frob_arch_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32 }
%struct.module = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c".l1.text\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@EF_BFIN_CODE_IN_L1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"L1 inst memory allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".l1.data\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@EF_BFIN_DATA_IN_L1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"L1 data memory allocation failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".l1.bss\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c".l1.data.B\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c".l1.bss.B\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c".l2.text\00", align 1
@EF_BFIN_CODE_IN_L2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"L2 SRAM allocation failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c".l2.data\00", align 1
@EF_BFIN_DATA_IN_L2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c".l2.bss\00", align 1
@SHF_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_frob_arch_sections(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2, %struct.module* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.module* %3, %struct.module** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %18
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %11, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  br label %21

21:                                               ; preds = %340, %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %24 = icmp ult %struct.TYPE_7__* %22, %23
  br i1 %24, label %25, label %343

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  store i8* %31, i8** %13, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %340

37:                                               ; preds = %25
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @EF_BFIN_CODE_IN_L1, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %45, %37
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @l1_inst_sram_alloc(i64 %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.module*, %struct.module** %9, align 8
  %59 = getelementptr inbounds %struct.module, %struct.module* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.module*, %struct.module** %9, align 8
  %65 = getelementptr inbounds %struct.module, %struct.module* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 -1, i32* %5, align 4
  br label %344

68:                                               ; preds = %52
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dma_memcpy(i8* %69, i8* %73, i64 %76)
  br label %329

78:                                               ; preds = %45, %41
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %119, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @EF_BFIN_DATA_IN_L1, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %86, %78
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @l1_data_sram_alloc(i64 %96)
  store i8* %97, i8** %12, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load %struct.module*, %struct.module** %9, align 8
  %100 = getelementptr inbounds %struct.module, %struct.module* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 6
  store i8* %98, i8** %101, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.module*, %struct.module** %9, align 8
  %106 = getelementptr inbounds %struct.module, %struct.module* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  store i32 -1, i32* %5, align 4
  br label %344

109:                                              ; preds = %93
  %110 = load i8*, i8** %12, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @memcpy(i8* %110, i8* %114, i64 %117)
  br label %328

119:                                              ; preds = %86, %82
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load i8*, i8** %13, align 8
  %125 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %151, label %127

127:                                              ; preds = %123
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @EF_BFIN_DATA_IN_L1, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %127, %119
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @l1_data_sram_zalloc(i64 %137)
  store i8* %138, i8** %12, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load %struct.module*, %struct.module** %9, align 8
  %141 = getelementptr inbounds %struct.module, %struct.module* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  store i8* %139, i8** %142, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %134
  %146 = load %struct.module*, %struct.module** %9, align 8
  %147 = getelementptr inbounds %struct.module, %struct.module* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  store i32 -1, i32* %5, align 4
  br label %344

150:                                              ; preds = %134
  br label %327

151:                                              ; preds = %127, %123
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %181, label %155

155:                                              ; preds = %151
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i8* @l1_data_B_sram_alloc(i64 %158)
  store i8* %159, i8** %12, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = load %struct.module*, %struct.module** %9, align 8
  %162 = getelementptr inbounds %struct.module, %struct.module* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  store i8* %160, i8** %163, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %155
  %167 = load %struct.module*, %struct.module** %9, align 8
  %168 = getelementptr inbounds %struct.module, %struct.module* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  store i32 -1, i32* %5, align 4
  br label %344

171:                                              ; preds = %155
  %172 = load i8*, i8** %12, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i8*
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @memcpy(i8* %172, i8* %176, i64 %179)
  br label %326

181:                                              ; preds = %151
  %182 = load i8*, i8** %13, align 8
  %183 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %207, label %185

185:                                              ; preds = %181
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i8* @l1_data_B_sram_alloc(i64 %188)
  store i8* %189, i8** %12, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = load %struct.module*, %struct.module** %9, align 8
  %192 = getelementptr inbounds %struct.module, %struct.module* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  store i8* %190, i8** %193, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = icmp eq i8* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %185
  %197 = load %struct.module*, %struct.module** %9, align 8
  %198 = getelementptr inbounds %struct.module, %struct.module* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %199)
  store i32 -1, i32* %5, align 4
  br label %344

201:                                              ; preds = %185
  %202 = load i8*, i8** %12, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @memset(i8* %202, i32 0, i64 %205)
  br label %325

207:                                              ; preds = %181
  %208 = load i8*, i8** %13, align 8
  %209 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %207
  %212 = load i8*, i8** %13, align 8
  %213 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %248, label %215

215:                                              ; preds = %211
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @EF_BFIN_CODE_IN_L2, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %248

222:                                              ; preds = %215, %207
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = call i8* @l2_sram_alloc(i64 %225)
  store i8* %226, i8** %12, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = load %struct.module*, %struct.module** %9, align 8
  %229 = getelementptr inbounds %struct.module, %struct.module* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  store i8* %227, i8** %230, align 8
  %231 = load i8*, i8** %12, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %222
  %234 = load %struct.module*, %struct.module** %9, align 8
  %235 = getelementptr inbounds %struct.module, %struct.module* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %236)
  store i32 -1, i32* %5, align 4
  br label %344

238:                                              ; preds = %222
  %239 = load i8*, i8** %12, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = inttoptr i64 %242 to i8*
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @memcpy(i8* %239, i8* %243, i64 %246)
  br label %324

248:                                              ; preds = %215, %211
  %249 = load i8*, i8** %13, align 8
  %250 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %248
  %253 = load i8*, i8** %13, align 8
  %254 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %289, label %256

256:                                              ; preds = %252
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @EF_BFIN_DATA_IN_L2, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %289

263:                                              ; preds = %256, %248
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = call i8* @l2_sram_alloc(i64 %266)
  store i8* %267, i8** %12, align 8
  %268 = load i8*, i8** %12, align 8
  %269 = load %struct.module*, %struct.module** %9, align 8
  %270 = getelementptr inbounds %struct.module, %struct.module* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  store i8* %268, i8** %271, align 8
  %272 = load i8*, i8** %12, align 8
  %273 = icmp eq i8* %272, null
  br i1 %273, label %274, label %279

274:                                              ; preds = %263
  %275 = load %struct.module*, %struct.module** %9, align 8
  %276 = getelementptr inbounds %struct.module, %struct.module* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %277)
  store i32 -1, i32* %5, align 4
  br label %344

279:                                              ; preds = %263
  %280 = load i8*, i8** %12, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = inttoptr i64 %283 to i8*
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @memcpy(i8* %280, i8* %284, i64 %287)
  br label %323

289:                                              ; preds = %256, %252
  %290 = load i8*, i8** %13, align 8
  %291 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %289
  %294 = load i8*, i8** %13, align 8
  %295 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %321, label %297

297:                                              ; preds = %293
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @EF_BFIN_DATA_IN_L2, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %321

304:                                              ; preds = %297, %289
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = call i8* @l2_sram_zalloc(i64 %307)
  store i8* %308, i8** %12, align 8
  %309 = load i8*, i8** %12, align 8
  %310 = load %struct.module*, %struct.module** %9, align 8
  %311 = getelementptr inbounds %struct.module, %struct.module* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  store i8* %309, i8** %312, align 8
  %313 = load i8*, i8** %12, align 8
  %314 = icmp eq i8* %313, null
  br i1 %314, label %315, label %320

315:                                              ; preds = %304
  %316 = load %struct.module*, %struct.module** %9, align 8
  %317 = getelementptr inbounds %struct.module, %struct.module* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %318)
  store i32 -1, i32* %5, align 4
  br label %344

320:                                              ; preds = %304
  br label %322

321:                                              ; preds = %297, %293
  br label %340

322:                                              ; preds = %320
  br label %323

323:                                              ; preds = %322, %279
  br label %324

324:                                              ; preds = %323, %238
  br label %325

325:                                              ; preds = %324, %201
  br label %326

326:                                              ; preds = %325, %171
  br label %327

327:                                              ; preds = %326, %150
  br label %328

328:                                              ; preds = %327, %109
  br label %329

329:                                              ; preds = %328, %68
  %330 = load i32, i32* @SHF_ALLOC, align 4
  %331 = xor i32 %330, -1
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = and i32 %334, %331
  store i32 %335, i32* %333, align 8
  %336 = load i8*, i8** %12, align 8
  %337 = ptrtoint i8* %336 to i64
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 2
  store i64 %337, i64* %339, align 8
  br label %340

340:                                              ; preds = %329, %321, %36
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 1
  store %struct.TYPE_7__* %342, %struct.TYPE_7__** %10, align 8
  br label %21

343:                                              ; preds = %21
  store i32 0, i32* %5, align 4
  br label %344

344:                                              ; preds = %343, %315, %274, %233, %196, %166, %145, %104, %63
  %345 = load i32, i32* %5, align 4
  ret i32 %345
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @l1_inst_sram_alloc(i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dma_memcpy(i8*, i8*, i64) #1

declare dso_local i8* @l1_data_sram_alloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @l1_data_sram_zalloc(i64) #1

declare dso_local i8* @l1_data_B_sram_alloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @l2_sram_alloc(i64) #1

declare dso_local i8* @l2_sram_zalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
