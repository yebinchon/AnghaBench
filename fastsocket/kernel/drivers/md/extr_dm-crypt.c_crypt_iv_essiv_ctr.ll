; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_iv_essiv_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_iv_essiv_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.crypto_hash*, %struct.crypto_hash*, i32* }
%struct.crypto_hash = type { i32 }
%struct.dm_target = type { i8* }
%struct.crypto_cipher = type opaque

@.str = private unnamed_addr constant [40 x i8] c"Digest algorithm missing for ESSIV mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error initializing ESSIV hash\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Error kmallocing salt storage in ESSIV\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Error allocating crypto tfm for ESSIV\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Block size of ESSIV cipher does not match IV size of block cipher\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, %struct.dm_target*, i8*)* @crypt_iv_essiv_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_essiv_ctr(%struct.crypt_config* %0, %struct.dm_target* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypt_config*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.crypto_cipher*, align 8
  %9 = alloca %struct.crypto_hash*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %5, align 8
  store %struct.dm_target* %1, %struct.dm_target** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %8, align 8
  store %struct.crypto_hash* null, %struct.crypto_hash** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %117

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %22 = call %struct.crypto_hash* @crypto_alloc_hash(i8* %20, i32 0, i32 %21)
  store %struct.crypto_hash* %22, %struct.crypto_hash** %9, align 8
  %23 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %24 = call i64 @IS_ERR(%struct.crypto_hash* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %28 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %30 = call i32 @PTR_ERR(%struct.crypto_hash* %29)
  store i32 %30, i32* %11, align 4
  br label %91

31:                                               ; preds = %19
  %32 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %33 = call i32 @crypto_hash_digestsize(%struct.crypto_hash* %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kzalloc(i32 %33, i32 %34)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %40 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8** %40, align 8
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %91

43:                                               ; preds = %31
  %44 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %45 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %48 = call %struct.crypto_hash* @crypto_alloc_cipher(i32 %46, i32 0, i32 %47)
  %49 = bitcast %struct.crypto_hash* %48 to %struct.crypto_cipher*
  store %struct.crypto_cipher* %49, %struct.crypto_cipher** %8, align 8
  %50 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %51 = bitcast %struct.crypto_cipher* %50 to %struct.crypto_hash*
  %52 = call i64 @IS_ERR(%struct.crypto_hash* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %56 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %58 = bitcast %struct.crypto_cipher* %57 to %struct.crypto_hash*
  %59 = call i32 @PTR_ERR(%struct.crypto_hash* %58)
  store i32 %59, i32* %11, align 4
  br label %91

60:                                               ; preds = %43
  %61 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %62 = bitcast %struct.crypto_cipher* %61 to %struct.crypto_hash*
  %63 = call i64 @crypto_cipher_blocksize(%struct.crypto_hash* %62)
  %64 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %65 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @crypto_ablkcipher_ivsize(i32 %66)
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %71 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i8** %71, align 8
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %91

74:                                               ; preds = %60
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %77 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32* %75, i32** %79, align 8
  %80 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %81 = bitcast %struct.crypto_cipher* %80 to %struct.crypto_hash*
  %82 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %83 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store %struct.crypto_hash* %81, %struct.crypto_hash** %85, align 8
  %86 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %87 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %88 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store %struct.crypto_hash* %86, %struct.crypto_hash** %90, align 8
  store i32 0, i32* %4, align 4
  br label %117

91:                                               ; preds = %69, %54, %38, %26
  %92 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %93 = icmp ne %struct.crypto_cipher* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %96 = bitcast %struct.crypto_cipher* %95 to %struct.crypto_hash*
  %97 = call i64 @IS_ERR(%struct.crypto_hash* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %101 = bitcast %struct.crypto_cipher* %100 to %struct.crypto_hash*
  %102 = call i32 @crypto_free_cipher(%struct.crypto_hash* %101)
  br label %103

103:                                              ; preds = %99, %94, %91
  %104 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %105 = icmp ne %struct.crypto_hash* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %108 = call i64 @IS_ERR(%struct.crypto_hash* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %112 = call i32 @crypto_free_hash(%struct.crypto_hash* %111)
  br label %113

113:                                              ; preds = %110, %106, %103
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @kfree(i32* %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %74, %14
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.crypto_hash* @crypto_alloc_hash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_hash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_hash*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @crypto_hash_digestsize(%struct.crypto_hash*) #1

declare dso_local %struct.crypto_hash* @crypto_alloc_cipher(i32, i32, i32) #1

declare dso_local i64 @crypto_cipher_blocksize(%struct.crypto_hash*) #1

declare dso_local i64 @crypto_ablkcipher_ivsize(i32) #1

declare dso_local i32 @crypto_free_cipher(%struct.crypto_hash*) #1

declare dso_local i32 @crypto_free_hash(%struct.crypto_hash*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
