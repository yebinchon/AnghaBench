; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, %struct.crypt_config* }
%struct.crypt_config = type { i32, i32, i64, i64, i8*, i8*, i32, i32, i32, i32*, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Not enough arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot allocate encryption context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MIN_IOS = common dso_local global i32 0, align 4
@_crypt_io_pool = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot allocate crypt io mempool\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot allocate crypt request mempool\00", align 1
@MIN_POOL_PAGES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Cannot allocate page mempool\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot allocate crypt bioset\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Invalid iv_offset sector\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Device lookup failed\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Invalid device sector\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"kcryptd_io\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Couldn't create kcryptd io queue\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"kcryptd\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Couldn't create kcryptd queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @crypt_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.crypt_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 5
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %223

19:                                               ; preds = %3
  %20 = load i8**, i8*** %7, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 88, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.crypt_config* @kzalloc(i32 %29, i32 %30)
  store %struct.crypt_config* %31, %struct.crypt_config** %8, align 8
  %32 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %33 = icmp ne %struct.crypt_config* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %19
  %35 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %36 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %36, align 8
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %223

39:                                               ; preds = %19
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %42 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %44 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %45 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %44, i32 0, i32 3
  store %struct.crypt_config* %43, %struct.crypt_config** %45, align 8
  %46 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** %7, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @crypt_ctr_cipher(%struct.dm_target* %46, i8* %49, i8* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %219

57:                                               ; preds = %39
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @MIN_IOS, align 4
  %61 = load i32, i32* @_crypt_io_pool, align 4
  %62 = call i32 @mempool_create_slab_pool(i32 %60, i32 %61)
  %63 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %64 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 4
  %65 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %66 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %57
  %70 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %71 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %71, align 8
  br label %219

72:                                               ; preds = %57
  %73 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %74 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %73, i32 0, i32 1
  store i32 4, i32* %74, align 4
  %75 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %76 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @crypto_ablkcipher_reqsize(i32 %77)
  %79 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %80 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %86 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (...) @crypto_tfm_ctx_alignment()
  %89 = call i32 @ALIGN(i32 %87, i32 %88)
  %90 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %91 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %93 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @crypto_ablkcipher_alignmask(i32 %94)
  %96 = call i32 (...) @crypto_tfm_ctx_alignment()
  %97 = sub nsw i32 %96, 1
  %98 = xor i32 %97, -1
  %99 = and i32 %95, %98
  %100 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %101 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @MIN_IOS, align 4
  %105 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %106 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 4
  %110 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %111 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %110, i32 0, i32 11
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %109, %112
  %114 = call i32 @mempool_create_kmalloc_pool(i32 %104, i64 %113)
  %115 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %116 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %118 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %72
  %122 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %123 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8** %123, align 8
  br label %219

124:                                              ; preds = %72
  %125 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %126 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %125, i32 0, i32 9
  store i32* null, i32** %126, align 8
  %127 = load i32, i32* @MIN_POOL_PAGES, align 4
  %128 = call i32 @mempool_create_page_pool(i32 %127, i32 0)
  %129 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %130 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 8
  %131 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %132 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %124
  %136 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %137 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %136, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %137, align 8
  br label %219

138:                                              ; preds = %124
  %139 = load i32, i32* @MIN_IOS, align 4
  %140 = call i32 @bioset_create(i32 %139, i32 0)
  %141 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %142 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 4
  %143 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %144 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %138
  %148 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %149 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %148, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8** %149, align 8
  br label %219

150:                                              ; preds = %138
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %11, align 4
  %153 = load i8**, i8*** %7, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 2
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @sscanf(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64* %10)
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %160 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %159, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8** %160, align 8
  br label %219

161:                                              ; preds = %150
  %162 = load i64, i64* %10, align 8
  %163 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %164 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  %165 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %166 = load i8**, i8*** %7, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 3
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %170 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dm_table_get_mode(i32 %171)
  %173 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %174 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %173, i32 0, i32 6
  %175 = call i64 @dm_get_device(%struct.dm_target* %165, i8* %168, i32 %172, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %161
  %178 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %179 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %178, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %179, align 8
  br label %219

180:                                              ; preds = %161
  %181 = load i8**, i8*** %7, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 4
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @sscanf(i8* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64* %10)
  %185 = icmp ne i32 %184, 1
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %188 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %187, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8** %188, align 8
  br label %219

189:                                              ; preds = %180
  %190 = load i64, i64* %10, align 8
  %191 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %192 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %191, i32 0, i32 3
  store i64 %190, i64* %192, align 8
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %11, align 4
  %195 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %196 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %197 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %196, i32 0, i32 5
  store i8* %195, i8** %197, align 8
  %198 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %199 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %198, i32 0, i32 5
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %189
  %203 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %204 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %203, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8** %204, align 8
  br label %219

205:                                              ; preds = %189
  %206 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %207 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %208 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %207, i32 0, i32 4
  store i8* %206, i8** %208, align 8
  %209 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %210 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %209, i32 0, i32 4
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %205
  %214 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %215 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %214, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8** %215, align 8
  br label %219

216:                                              ; preds = %205
  %217 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %218 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %217, i32 0, i32 1
  store i32 1, i32* %218, align 8
  store i32 0, i32* %4, align 4
  br label %223

219:                                              ; preds = %213, %202, %186, %177, %158, %147, %135, %121, %69, %56
  %220 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %221 = call i32 @crypt_dtr(%struct.dm_target* %220)
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %219, %216, %34, %14
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.crypt_config* @kzalloc(i32, i32) #1

declare dso_local i32 @crypt_ctr_cipher(%struct.dm_target*, i8*, i8*) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i64 @crypto_ablkcipher_reqsize(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @crypto_ablkcipher_alignmask(i32) #1

declare dso_local i32 @mempool_create_kmalloc_pool(i32, i64) #1

declare dso_local i32 @mempool_create_page_pool(i32, i32) #1

declare dso_local i32 @bioset_create(i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i64 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @crypt_dtr(%struct.dm_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
