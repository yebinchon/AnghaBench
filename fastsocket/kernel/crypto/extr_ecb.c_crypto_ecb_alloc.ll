; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ecb.c_crypto_ecb_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ecb.c_crypto_ecb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rtattr = type { i32 }
%struct.crypto_alg = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32 }

@CRYPTO_ALG_TYPE_BLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ecb\00", align 1
@crypto_blkcipher_type = common dso_local global i32 0, align 4
@crypto_ecb_init_tfm = common dso_local global i32 0, align 4
@crypto_ecb_exit_tfm = common dso_local global i32 0, align 4
@crypto_ecb_setkey = common dso_local global i32 0, align 4
@crypto_ecb_encrypt = common dso_local global i32 0, align 4
@crypto_ecb_decrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_instance* (%struct.rtattr**)* @crypto_ecb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_instance* @crypto_ecb_alloc(%struct.rtattr** %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  %3 = alloca %struct.rtattr**, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca i32, align 4
  store %struct.rtattr** %0, %struct.rtattr*** %3, align 8
  %7 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %8 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %9 = call i32 @crypto_check_attr_type(%struct.rtattr** %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.crypto_instance* @ERR_PTR(i32 %13)
  store %struct.crypto_instance* %14, %struct.crypto_instance** %2, align 8
  br label %110

15:                                               ; preds = %1
  %16 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %17 = load i32, i32* @CRYPTO_ALG_TYPE_CIPHER, align 4
  %18 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %19 = call %struct.crypto_instance* @crypto_get_attr_alg(%struct.rtattr** %16, i32 %17, i32 %18)
  %20 = bitcast %struct.crypto_instance* %19 to %struct.crypto_alg*
  store %struct.crypto_alg* %20, %struct.crypto_alg** %5, align 8
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %22 = bitcast %struct.crypto_alg* %21 to %struct.crypto_instance*
  %23 = call i64 @IS_ERR(%struct.crypto_instance* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %27 = bitcast %struct.crypto_alg* %26 to %struct.crypto_instance*
  %28 = call %struct.crypto_instance* @ERR_CAST(%struct.crypto_instance* %27)
  store %struct.crypto_instance* %28, %struct.crypto_instance** %2, align 8
  br label %110

29:                                               ; preds = %15
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %31 = bitcast %struct.crypto_alg* %30 to %struct.crypto_instance*
  %32 = call %struct.crypto_instance* @crypto_alloc_instance(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.crypto_instance* %31)
  store %struct.crypto_instance* %32, %struct.crypto_instance** %4, align 8
  %33 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %34 = call i64 @IS_ERR(%struct.crypto_instance* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %105

37:                                               ; preds = %29
  %38 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %39 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %40 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 8
  store i32 %38, i32* %41, align 4
  %42 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %43 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %46 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 8
  %48 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %49 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %52 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 4
  %54 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %55 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %58 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 8
  %60 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %61 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  store i32* @crypto_blkcipher_type, i32** %62, align 8
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %64 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %68 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i32 %66, i32* %70, align 4
  %71 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %72 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %76 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32 %74, i32* %78, align 4
  %79 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %80 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = load i32, i32* @crypto_ecb_init_tfm, align 4
  %83 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %84 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @crypto_ecb_exit_tfm, align 4
  %87 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %88 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @crypto_ecb_setkey, align 4
  %91 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %92 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @crypto_ecb_encrypt, align 4
  %96 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %97 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @crypto_ecb_decrypt, align 4
  %101 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %102 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %37, %36
  %106 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %107 = bitcast %struct.crypto_alg* %106 to %struct.crypto_instance*
  %108 = call i32 @crypto_mod_put(%struct.crypto_instance* %107)
  %109 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  store %struct.crypto_instance* %109, %struct.crypto_instance** %2, align 8
  br label %110

110:                                              ; preds = %105, %25, %12
  %111 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  ret %struct.crypto_instance* %111
}

declare dso_local i32 @crypto_check_attr_type(%struct.rtattr**, i32) #1

declare dso_local %struct.crypto_instance* @ERR_PTR(i32) #1

declare dso_local %struct.crypto_instance* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @ERR_CAST(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @crypto_alloc_instance(i8*, %struct.crypto_instance*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
