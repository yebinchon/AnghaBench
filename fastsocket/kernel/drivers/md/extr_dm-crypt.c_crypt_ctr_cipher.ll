; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_ctr_cipher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_ctr_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.crypt_config*, %struct.dm_target*, i8*)*, i32 (%struct.crypt_config*)* }
%struct.crypt_config = type { i8*, %struct.TYPE_6__*, i64, i32, i8* }
%struct.dm_target = type { i8*, %struct.crypt_config* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Bad cipher specification\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Ignoring unexpected additional cipher options\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"cbc-plain\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cbc\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ecb\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"IV mechanism required\00", align 1
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Error allocating crypto tfm\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Error decoding and setting key\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Selected cipher does not support IVs\00", align 1
@crypt_iv_plain_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"plain64\00", align 1
@crypt_iv_plain64_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"essiv\00", align 1
@crypt_iv_essiv_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"benbi\00", align 1
@crypt_iv_benbi_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@crypt_iv_null_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"Invalid IV mode\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Error creating IV\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Error initialising IV\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Cannot allocate cipher strings\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i8*, i8*)* @crypt_ctr_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_ctr_cipher(%struct.dm_target* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.crypt_config*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 1
  %18 = load %struct.crypt_config*, %struct.crypt_config** %17, align 8
  store %struct.crypt_config* %18, %struct.crypt_config** %8, align 8
  store i8* null, i8** %14, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %15, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strchr(i8* %21, i8 signext 40)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %26 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %279

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %9, align 8
  %31 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kstrdup(i8* %32, i32 %33)
  %35 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %36 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %38 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %274

42:                                               ; preds = %29
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kstrdup(i8* %46, i32 %47)
  %49 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %50 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %52 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %274

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %42
  %58 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %58, i8** %11, align 8
  %59 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %59, i8** %13, align 8
  %60 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @DMWARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i8*, i8** %11, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i8*, i8** %11, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %77 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @kfree(i8* %78)
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @kstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %83 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %84

84:                                               ; preds = %75, %72, %68
  %85 = load i8*, i8** %11, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %93 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %92, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8** %93, align 8
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %279

96:                                               ; preds = %88, %84
  %97 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kmalloc(i32 %97, i32 %98)
  store i8* %99, i8** %14, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  br label %274

103:                                              ; preds = %96
  %104 = load i8*, i8** %14, align 8
  %105 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @snprintf(i8* %104, i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %106, i8* %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i8*, i8** %14, align 8
  %113 = call i32 @kfree(i8* %112)
  br label %274

114:                                              ; preds = %103
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 @crypto_alloc_ablkcipher(i8* %115, i32 0, i32 0)
  %117 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %118 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %120 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @IS_ERR(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %114
  %125 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %126 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @PTR_ERR(i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %130 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %130, align 8
  br label %270

131:                                              ; preds = %114
  %132 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @crypt_set_key(%struct.crypt_config* %132, i8* %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %139 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %138, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8** %139, align 8
  br label %270

140:                                              ; preds = %131
  %141 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %142 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @crypto_ablkcipher_ivsize(i32 %143)
  %145 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %146 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %148 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %140
  %152 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %153 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @max(i64 %154, i32 1)
  %156 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %157 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  br label %164

158:                                              ; preds = %140
  %159 = load i8*, i8** %12, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call i32 @DMWARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  store i8* null, i8** %12, align 8
  br label %163

163:                                              ; preds = %161, %158
  br label %164

164:                                              ; preds = %163, %151
  %165 = load i8*, i8** %12, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %169 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %168, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %169, align 8
  br label %215

170:                                              ; preds = %164
  %171 = load i8*, i8** %12, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %176 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %175, i32 0, i32 1
  store %struct.TYPE_6__* @crypt_iv_plain_ops, %struct.TYPE_6__** %176, align 8
  br label %214

177:                                              ; preds = %170
  %178 = load i8*, i8** %12, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %183 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %182, i32 0, i32 1
  store %struct.TYPE_6__* @crypt_iv_plain64_ops, %struct.TYPE_6__** %183, align 8
  br label %213

184:                                              ; preds = %177
  %185 = load i8*, i8** %12, align 8
  %186 = call i64 @strcmp(i8* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %190 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %189, i32 0, i32 1
  store %struct.TYPE_6__* @crypt_iv_essiv_ops, %struct.TYPE_6__** %190, align 8
  br label %212

191:                                              ; preds = %184
  %192 = load i8*, i8** %12, align 8
  %193 = call i64 @strcmp(i8* %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %197 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %196, i32 0, i32 1
  store %struct.TYPE_6__* @crypt_iv_benbi_ops, %struct.TYPE_6__** %197, align 8
  br label %211

198:                                              ; preds = %191
  %199 = load i8*, i8** %12, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %204 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %203, i32 0, i32 1
  store %struct.TYPE_6__* @crypt_iv_null_ops, %struct.TYPE_6__** %204, align 8
  br label %210

205:                                              ; preds = %198
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %15, align 4
  %208 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %209 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %208, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %209, align 8
  br label %270

210:                                              ; preds = %202
  br label %211

211:                                              ; preds = %210, %195
  br label %212

212:                                              ; preds = %211, %188
  br label %213

213:                                              ; preds = %212, %181
  br label %214

214:                                              ; preds = %213, %174
  br label %215

215:                                              ; preds = %214, %167
  %216 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %217 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %216, i32 0, i32 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = icmp ne %struct.TYPE_6__* %218, null
  br i1 %219, label %220, label %243

220:                                              ; preds = %215
  %221 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %222 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %221, i32 0, i32 1
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32 (%struct.crypt_config*, %struct.dm_target*, i8*)*, i32 (%struct.crypt_config*, %struct.dm_target*, i8*)** %224, align 8
  %226 = icmp ne i32 (%struct.crypt_config*, %struct.dm_target*, i8*)* %225, null
  br i1 %226, label %227, label %243

227:                                              ; preds = %220
  %228 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %229 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %228, i32 0, i32 1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32 (%struct.crypt_config*, %struct.dm_target*, i8*)*, i32 (%struct.crypt_config*, %struct.dm_target*, i8*)** %231, align 8
  %233 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %234 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %235 = load i8*, i8** %13, align 8
  %236 = call i32 %232(%struct.crypt_config* %233, %struct.dm_target* %234, i8* %235)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %227
  %240 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %241 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %240, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %241, align 8
  br label %270

242:                                              ; preds = %227
  br label %243

243:                                              ; preds = %242, %220, %215
  %244 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %245 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %244, i32 0, i32 1
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = icmp ne %struct.TYPE_6__* %246, null
  br i1 %247, label %248, label %269

248:                                              ; preds = %243
  %249 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %250 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %249, i32 0, i32 1
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %252, align 8
  %254 = icmp ne i32 (%struct.crypt_config*)* %253, null
  br i1 %254, label %255, label %269

255:                                              ; preds = %248
  %256 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %257 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %256, i32 0, i32 1
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %259, align 8
  %261 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %262 = call i32 %260(%struct.crypt_config* %261)
  store i32 %262, i32* %15, align 4
  %263 = load i32, i32* %15, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %255
  %266 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %267 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %266, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8** %267, align 8
  br label %270

268:                                              ; preds = %255
  br label %269

269:                                              ; preds = %268, %248, %243
  store i32 0, i32* %15, align 4
  br label %270

270:                                              ; preds = %269, %265, %239, %205, %137, %124
  %271 = load i8*, i8** %14, align 8
  %272 = call i32 @kfree(i8* %271)
  %273 = load i32, i32* %15, align 4
  store i32 %273, i32* %4, align 4
  br label %279

274:                                              ; preds = %111, %102, %55, %41
  %275 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %276 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %275, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8** %276, align 8
  %277 = load i32, i32* @ENOMEM, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %274, %270, %91, %24
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @crypto_alloc_ablkcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypt_set_key(%struct.crypt_config*, i8*) #1

declare dso_local i64 @crypto_ablkcipher_ivsize(i32) #1

declare dso_local i64 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
