; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_testmgr.c_test_pcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_testmgr.c_test_pcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_pcomp = type { i32 }
%struct.pcomp_testvec = type { i32, i32, i32, i32, i32, i32 }
%struct.comp_request = type { i32, i8*, i32, i32 }

@COMP_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"alg: pcomp: compression setup failed on test %d for %s: error=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"alg: pcomp: compression init failed on test %d for %s: error=%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"alg: pcomp: compression update failed on test %d for %s: error=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"alg: pcomp: compression final failed on test %d for %s: error=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"alg: comp: Compression test %d failed for %s: output len = %d (expected %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [79 x i8] c"alg: comp: Compression test %d failed for %s: returned len = %u (expected %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"alg: pcomp: Compression test %d failed for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"alg: pcomp: decompression setup failed on test %d for %s: error=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"alg: pcomp: decompression init failed on test %d for %s: error=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"alg: pcomp: decompression update failed on test %d for %s: error=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"alg: pcomp: decompression final failed on test %d for %s: error=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [79 x i8] c"alg: comp: Decompression test %d failed for %s: output len = %d (expected %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"alg: comp: Decompression test %d failed for %s: returned len = %u (expected %d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"alg: pcomp: Decompression test %d failed for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_pcomp*, %struct.pcomp_testvec*, %struct.pcomp_testvec*, i32, i32)* @test_pcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pcomp(%struct.crypto_pcomp* %0, %struct.pcomp_testvec* %1, %struct.pcomp_testvec* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_pcomp*, align 8
  %8 = alloca %struct.pcomp_testvec*, align 8
  %9 = alloca %struct.pcomp_testvec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.comp_request, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.comp_request, align 8
  %21 = alloca i32, align 4
  store %struct.crypto_pcomp* %0, %struct.crypto_pcomp** %7, align 8
  store %struct.pcomp_testvec* %1, %struct.pcomp_testvec** %8, align 8
  store %struct.pcomp_testvec* %2, %struct.pcomp_testvec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %23 = call i32 @crypto_pcomp_tfm(%struct.crypto_pcomp* %22)
  %24 = call i8* @crypto_tfm_alg_driver_name(i32 %23)
  store i8* %24, i8** %12, align 8
  %25 = load i32, i32* @COMP_BUF_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %271, %5
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %274

33:                                               ; preds = %29
  store i32 0, i32* %18, align 4
  %34 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %35 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %35, i64 %37
  %39 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %41, i64 %43
  %45 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @crypto_compress_setup(%struct.crypto_pcomp* %34, i32 %40, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load i32, i32* %13, align 4
  %52 = add i32 %51, 1
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %53, i32 %54)
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

57:                                               ; preds = %33
  %58 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %59 = call i32 @crypto_compress_init(%struct.crypto_pcomp* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65, i32 %66)
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

69:                                               ; preds = %57
  %70 = trunc i64 %26 to i32
  %71 = call i32 @memset(i8* %28, i32 0, i32 %70)
  %72 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %72, i64 %74
  %76 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %79, i64 %81
  %83 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 2
  %86 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 1
  store i8* %28, i8** %87, align 8
  %88 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %88, i64 %90
  %92 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 2
  %95 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  %96 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %97 = call i32 @crypto_compress_update(%struct.crypto_pcomp* %96, %struct.comp_request* %17)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %69
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %13, align 4
  %111 = add i32 %110, 1
  %112 = load i8*, i8** %12, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %111, i8* %112, i32 %113)
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

116:                                              ; preds = %105, %69
  %117 = load i32, i32* %16, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %18, align 4
  %122 = add i32 %121, %120
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %119, %116
  %124 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %125 = load i32, i32* %13, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %124, i64 %126
  %128 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  %131 = sdiv i32 %130, 2
  %132 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %131
  store i32 %134, i32* %132, align 8
  %135 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %136 = call i32 @crypto_compress_update(%struct.crypto_pcomp* %135, %struct.comp_request* %17)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %123
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @EAGAIN, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %144, %139
  %149 = load i32, i32* %13, align 4
  %150 = add i32 %149, 1
  %151 = load i8*, i8** %12, align 8
  %152 = load i32, i32* %16, align 4
  %153 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %150, i8* %151, i32 %152)
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

155:                                              ; preds = %144, %123
  %156 = load i32, i32* %16, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %18, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %18, align 4
  br label %162

162:                                              ; preds = %158, %155
  %163 = load i32, i32* @COMP_BUF_SIZE, align 4
  %164 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %165 = load i32, i32* %13, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %164, i64 %166
  %168 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %169, 2
  %171 = sub nsw i32 %163, %170
  %172 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, %171
  store i32 %174, i32* %172, align 8
  %175 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %176 = call i32 @crypto_compress_final(%struct.crypto_pcomp* %175, %struct.comp_request* %17)
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %162
  %180 = load i32, i32* %13, align 4
  %181 = add i32 %180, 1
  %182 = load i8*, i8** %12, align 8
  %183 = load i32, i32* %16, align 4
  %184 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %181, i8* %182, i32 %183)
  %185 = load i32, i32* %16, align 4
  store i32 %185, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

186:                                              ; preds = %162
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %18, align 4
  %189 = add i32 %188, %187
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* @COMP_BUF_SIZE, align 4
  %191 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %190, %192
  %194 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %195 = load i32, i32* %13, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %194, i64 %196
  %198 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %193, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %186
  %202 = load i32, i32* %13, align 4
  %203 = add i32 %202, 1
  %204 = load i8*, i8** %12, align 8
  %205 = load i32, i32* @COMP_BUF_SIZE, align 4
  %206 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %205, %207
  %209 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %210 = load i32, i32* %13, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %209, i64 %211
  %213 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 %203, i8* %204, i32 %208, i32 %214)
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

218:                                              ; preds = %186
  %219 = load i32, i32* %18, align 4
  %220 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %221 = load i32, i32* %13, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %220, i64 %222
  %224 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %219, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %218
  %228 = load i32, i32* %13, align 4
  %229 = add i32 %228, 1
  %230 = load i8*, i8** %12, align 8
  %231 = load i32, i32* %18, align 4
  %232 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %233 = load i32, i32* %13, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %232, i64 %234
  %236 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %229, i8* %230, i32 %231, i32 %237)
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

241:                                              ; preds = %218
  %242 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %243 = load i32, i32* %13, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %242, i64 %244
  %246 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %249 = load i32, i32* %13, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %248, i64 %250
  %252 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i64 @memcmp(i8* %28, i32 %247, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %241
  %257 = load i32, i32* %13, align 4
  %258 = add i32 %257, 1
  %259 = load i8*, i8** %12, align 8
  %260 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %258, i8* %259)
  %261 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %8, align 8
  %262 = load i32, i32* %13, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %261, i64 %263
  %265 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @hexdump(i8* %28, i32 %266)
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

270:                                              ; preds = %241
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %13, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %29

274:                                              ; preds = %29
  store i32 0, i32* %13, align 4
  br label %275

275:                                              ; preds = %530, %274
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %11, align 4
  %278 = icmp ult i32 %276, %277
  br i1 %278, label %279, label %533

279:                                              ; preds = %275
  store i32 0, i32* %21, align 4
  %280 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %281 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %282 = load i32, i32* %13, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %281, i64 %283
  %285 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %288 = load i32, i32* %13, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %287, i64 %289
  %291 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @crypto_decompress_setup(%struct.crypto_pcomp* %280, i32 %286, i32 %292)
  store i32 %293, i32* %16, align 4
  %294 = load i32, i32* %16, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %279
  %297 = load i32, i32* %13, align 4
  %298 = add i32 %297, 1
  %299 = load i8*, i8** %12, align 8
  %300 = load i32, i32* %16, align 4
  %301 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %298, i8* %299, i32 %300)
  %302 = load i32, i32* %16, align 4
  store i32 %302, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

303:                                              ; preds = %279
  %304 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %305 = call i32 @crypto_decompress_init(%struct.crypto_pcomp* %304)
  store i32 %305, i32* %16, align 4
  %306 = load i32, i32* %16, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %303
  %309 = load i32, i32* %13, align 4
  %310 = add i32 %309, 1
  %311 = load i8*, i8** %12, align 8
  %312 = load i32, i32* %16, align 4
  %313 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i32 %310, i8* %311, i32 %312)
  %314 = load i32, i32* %16, align 4
  store i32 %314, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

315:                                              ; preds = %303
  %316 = trunc i64 %26 to i32
  %317 = call i32 @memset(i8* %28, i32 0, i32 %316)
  %318 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %319 = load i32, i32* %13, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %318, i64 %320
  %322 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 3
  store i32 %323, i32* %324, align 4
  %325 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %326 = load i32, i32* %13, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %325, i64 %327
  %329 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = sdiv i32 %330, 2
  %332 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 0
  store i32 %331, i32* %332, align 8
  %333 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 1
  store i8* %28, i8** %333, align 8
  %334 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %335 = load i32, i32* %13, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %334, i64 %336
  %338 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = sdiv i32 %339, 2
  %341 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 2
  store i32 %340, i32* %341, align 8
  %342 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %343 = call i32 @crypto_decompress_update(%struct.crypto_pcomp* %342, %struct.comp_request* %20)
  store i32 %343, i32* %16, align 4
  %344 = load i32, i32* %16, align 4
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %362

346:                                              ; preds = %315
  %347 = load i32, i32* %16, align 4
  %348 = load i32, i32* @EAGAIN, align 4
  %349 = sub nsw i32 0, %348
  %350 = icmp ne i32 %347, %349
  br i1 %350, label %355, label %351

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %351, %346
  %356 = load i32, i32* %13, align 4
  %357 = add i32 %356, 1
  %358 = load i8*, i8** %12, align 8
  %359 = load i32, i32* %16, align 4
  %360 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 %357, i8* %358, i32 %359)
  %361 = load i32, i32* %16, align 4
  store i32 %361, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

362:                                              ; preds = %351, %315
  %363 = load i32, i32* %16, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = load i32, i32* %16, align 4
  %367 = load i32, i32* %21, align 4
  %368 = add i32 %367, %366
  store i32 %368, i32* %21, align 4
  br label %369

369:                                              ; preds = %365, %362
  %370 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %371 = load i32, i32* %13, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %370, i64 %372
  %374 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %375, 1
  %377 = sdiv i32 %376, 2
  %378 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = add nsw i32 %379, %377
  store i32 %380, i32* %378, align 8
  %381 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %382 = call i32 @crypto_decompress_update(%struct.crypto_pcomp* %381, %struct.comp_request* %20)
  store i32 %382, i32* %16, align 4
  %383 = load i32, i32* %16, align 4
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %401

385:                                              ; preds = %369
  %386 = load i32, i32* %16, align 4
  %387 = load i32, i32* @EAGAIN, align 4
  %388 = sub nsw i32 0, %387
  %389 = icmp ne i32 %386, %388
  br i1 %389, label %394, label %390

390:                                              ; preds = %385
  %391 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %390, %385
  %395 = load i32, i32* %13, align 4
  %396 = add i32 %395, 1
  %397 = load i8*, i8** %12, align 8
  %398 = load i32, i32* %16, align 4
  %399 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 %396, i8* %397, i32 %398)
  %400 = load i32, i32* %16, align 4
  store i32 %400, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

401:                                              ; preds = %390, %369
  %402 = load i32, i32* %16, align 4
  %403 = icmp sgt i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %401
  %405 = load i32, i32* %16, align 4
  %406 = load i32, i32* %21, align 4
  %407 = add i32 %406, %405
  store i32 %407, i32* %21, align 4
  br label %408

408:                                              ; preds = %404, %401
  %409 = load i32, i32* @COMP_BUF_SIZE, align 4
  %410 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %411 = load i32, i32* %13, align 4
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %410, i64 %412
  %414 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = sdiv i32 %415, 2
  %417 = sub nsw i32 %409, %416
  %418 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = add nsw i32 %419, %417
  store i32 %420, i32* %418, align 8
  %421 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %7, align 8
  %422 = call i32 @crypto_decompress_final(%struct.crypto_pcomp* %421, %struct.comp_request* %20)
  store i32 %422, i32* %16, align 4
  %423 = load i32, i32* %16, align 4
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %425, label %441

425:                                              ; preds = %408
  %426 = load i32, i32* %16, align 4
  %427 = load i32, i32* @EAGAIN, align 4
  %428 = sub nsw i32 0, %427
  %429 = icmp ne i32 %426, %428
  br i1 %429, label %434, label %430

430:                                              ; preds = %425
  %431 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %441

434:                                              ; preds = %430, %425
  %435 = load i32, i32* %13, align 4
  %436 = add i32 %435, 1
  %437 = load i8*, i8** %12, align 8
  %438 = load i32, i32* %16, align 4
  %439 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0), i32 %436, i8* %437, i32 %438)
  %440 = load i32, i32* %16, align 4
  store i32 %440, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

441:                                              ; preds = %430, %408
  %442 = load i32, i32* %16, align 4
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %441
  %445 = load i32, i32* %16, align 4
  %446 = load i32, i32* %21, align 4
  %447 = add i32 %446, %445
  store i32 %447, i32* %21, align 4
  br label %448

448:                                              ; preds = %444, %441
  %449 = load i32, i32* @COMP_BUF_SIZE, align 4
  %450 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = sub nsw i32 %449, %451
  %453 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %454 = load i32, i32* %13, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %453, i64 %455
  %457 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = icmp ne i32 %452, %458
  br i1 %459, label %460, label %477

460:                                              ; preds = %448
  %461 = load i32, i32* %13, align 4
  %462 = add i32 %461, 1
  %463 = load i8*, i8** %12, align 8
  %464 = load i32, i32* @COMP_BUF_SIZE, align 4
  %465 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %20, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = sub nsw i32 %464, %466
  %468 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %469 = load i32, i32* %13, align 4
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %468, i64 %470
  %472 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i64 0, i64 0), i32 %462, i8* %463, i32 %467, i32 %473)
  %475 = load i32, i32* @EINVAL, align 4
  %476 = sub nsw i32 0, %475
  store i32 %476, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

477:                                              ; preds = %448
  %478 = load i32, i32* %21, align 4
  %479 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %480 = load i32, i32* %13, align 4
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %479, i64 %481
  %483 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = icmp ne i32 %478, %484
  br i1 %485, label %486, label %500

486:                                              ; preds = %477
  %487 = load i32, i32* %13, align 4
  %488 = add i32 %487, 1
  %489 = load i8*, i8** %12, align 8
  %490 = load i32, i32* %21, align 4
  %491 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %492 = load i32, i32* %13, align 4
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %491, i64 %493
  %495 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i64 0, i64 0), i32 %488, i8* %489, i32 %490, i32 %496)
  %498 = load i32, i32* @EINVAL, align 4
  %499 = sub nsw i32 0, %498
  store i32 %499, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

500:                                              ; preds = %477
  %501 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %502 = load i32, i32* %13, align 4
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %501, i64 %503
  %505 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %508 = load i32, i32* %13, align 4
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %507, i64 %509
  %511 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = call i64 @memcmp(i8* %28, i32 %506, i32 %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %529

515:                                              ; preds = %500
  %516 = load i32, i32* %13, align 4
  %517 = add i32 %516, 1
  %518 = load i8*, i8** %12, align 8
  %519 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %517, i8* %518)
  %520 = load %struct.pcomp_testvec*, %struct.pcomp_testvec** %9, align 8
  %521 = load i32, i32* %13, align 4
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %520, i64 %522
  %524 = getelementptr inbounds %struct.pcomp_testvec, %struct.pcomp_testvec* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = call i32 @hexdump(i8* %28, i32 %525)
  %527 = load i32, i32* @EINVAL, align 4
  %528 = sub nsw i32 0, %527
  store i32 %528, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

529:                                              ; preds = %500
  br label %530

530:                                              ; preds = %529
  %531 = load i32, i32* %13, align 4
  %532 = add i32 %531, 1
  store i32 %532, i32* %13, align 4
  br label %275

533:                                              ; preds = %275
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %534

534:                                              ; preds = %533, %515, %486, %460, %434, %394, %355, %308, %296, %256, %227, %201, %179, %148, %109, %62, %50
  %535 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %535)
  %536 = load i32, i32* %6, align 4
  ret i32 %536
}

declare dso_local i8* @crypto_tfm_alg_driver_name(i32) #1

declare dso_local i32 @crypto_pcomp_tfm(%struct.crypto_pcomp*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_compress_setup(%struct.crypto_pcomp*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i8*, ...) #1

declare dso_local i32 @crypto_compress_init(%struct.crypto_pcomp*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @crypto_compress_update(%struct.crypto_pcomp*, %struct.comp_request*) #1

declare dso_local i32 @crypto_compress_final(%struct.crypto_pcomp*, %struct.comp_request*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @hexdump(i8*, i32) #1

declare dso_local i32 @crypto_decompress_setup(%struct.crypto_pcomp*, i32, i32) #1

declare dso_local i32 @crypto_decompress_init(%struct.crypto_pcomp*) #1

declare dso_local i32 @crypto_decompress_update(%struct.crypto_pcomp*, %struct.comp_request*) #1

declare dso_local i32 @crypto_decompress_final(%struct.crypto_pcomp*, %struct.comp_request*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
