; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_create_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_create_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.cryptd_queue = type { i32 }
%struct.hashd_instance_ctx = type { i32, %struct.cryptd_queue* }
%struct.ahash_instance = type { %struct.TYPE_6__, i32, %struct.crypto_alg }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.crypto_alg = type { i32 }
%struct.shash_alg = type { %struct.TYPE_6__, i32, %struct.crypto_alg }

@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@cryptd_hash_init_tfm = common dso_local global i32 0, align 4
@cryptd_hash_exit_tfm = common dso_local global i32 0, align 4
@cryptd_hash_init_enqueue = common dso_local global i32 0, align 4
@cryptd_hash_update_enqueue = common dso_local global i32 0, align 4
@cryptd_hash_final_enqueue = common dso_local global i32 0, align 4
@cryptd_hash_finup_enqueue = common dso_local global i32 0, align 4
@cryptd_hash_export = common dso_local global i32 0, align 4
@cryptd_hash_import = common dso_local global i32 0, align 4
@cryptd_hash_setkey = common dso_local global i32 0, align 4
@cryptd_hash_digest_enqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**, %struct.cryptd_queue*)* @cryptd_create_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_create_hash(%struct.crypto_template* %0, %struct.rtattr** %1, %struct.cryptd_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_template*, align 8
  %6 = alloca %struct.rtattr**, align 8
  %7 = alloca %struct.cryptd_queue*, align 8
  %8 = alloca %struct.hashd_instance_ctx*, align 8
  %9 = alloca %struct.ahash_instance*, align 8
  %10 = alloca %struct.shash_alg*, align 8
  %11 = alloca %struct.crypto_alg*, align 8
  %12 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %5, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %6, align 8
  store %struct.cryptd_queue* %2, %struct.cryptd_queue** %7, align 8
  %13 = load %struct.rtattr**, %struct.rtattr*** %6, align 8
  %14 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %13, i64 1
  %15 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %16 = call %struct.shash_alg* @shash_attr_alg(%struct.rtattr* %15, i32 0, i32 0)
  store %struct.shash_alg* %16, %struct.shash_alg** %10, align 8
  %17 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %18 = call i64 @IS_ERR(%struct.shash_alg* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %22 = call i32 @PTR_ERR(%struct.shash_alg* %21)
  store i32 %22, i32* %4, align 4
  br label %137

23:                                               ; preds = %3
  %24 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %25 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %24, i32 0, i32 2
  store %struct.crypto_alg* %25, %struct.crypto_alg** %11, align 8
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %27 = call i32 (...) @ahash_instance_headroom()
  %28 = call %struct.shash_alg* @cryptd_alloc_instance(%struct.crypto_alg* %26, i32 %27, i32 16)
  %29 = bitcast %struct.shash_alg* %28 to %struct.ahash_instance*
  store %struct.ahash_instance* %29, %struct.ahash_instance** %9, align 8
  %30 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %31 = bitcast %struct.ahash_instance* %30 to %struct.shash_alg*
  %32 = call i32 @PTR_ERR(%struct.shash_alg* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %34 = bitcast %struct.ahash_instance* %33 to %struct.shash_alg*
  %35 = call i64 @IS_ERR(%struct.shash_alg* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %133

38:                                               ; preds = %23
  %39 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %40 = bitcast %struct.ahash_instance* %39 to %struct.shash_alg*
  %41 = call %struct.hashd_instance_ctx* @ahash_instance_ctx(%struct.shash_alg* %40)
  store %struct.hashd_instance_ctx* %41, %struct.hashd_instance_ctx** %8, align 8
  %42 = load %struct.cryptd_queue*, %struct.cryptd_queue** %7, align 8
  %43 = load %struct.hashd_instance_ctx*, %struct.hashd_instance_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.hashd_instance_ctx, %struct.hashd_instance_ctx* %43, i32 0, i32 1
  store %struct.cryptd_queue* %42, %struct.cryptd_queue** %44, align 8
  %45 = load %struct.hashd_instance_ctx*, %struct.hashd_instance_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.hashd_instance_ctx, %struct.hashd_instance_ctx* %45, i32 0, i32 0
  %47 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %48 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %49 = bitcast %struct.ahash_instance* %48 to %struct.shash_alg*
  %50 = call i32 @ahash_crypto_instance(%struct.shash_alg* %49)
  %51 = call i32 @crypto_init_shash_spawn(i32* %46, %struct.shash_alg* %47, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %128

55:                                               ; preds = %38
  %56 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %57 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %58 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %56, i32* %61, align 4
  %62 = load %struct.shash_alg*, %struct.shash_alg** %10, align 8
  %63 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %66 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %70 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 4, i32* %73, align 4
  %74 = load i32, i32* @cryptd_hash_init_tfm, align 4
  %75 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %76 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* @cryptd_hash_exit_tfm, align 4
  %81 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %82 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %80, i32* %85, align 4
  %86 = load i32, i32* @cryptd_hash_init_enqueue, align 4
  %87 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %88 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 7
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @cryptd_hash_update_enqueue, align 4
  %91 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %92 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 6
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @cryptd_hash_final_enqueue, align 4
  %95 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %96 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @cryptd_hash_finup_enqueue, align 4
  %99 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %100 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @cryptd_hash_export, align 4
  %103 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %104 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* @cryptd_hash_import, align 4
  %107 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %108 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @cryptd_hash_setkey, align 4
  %111 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %112 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @cryptd_hash_digest_enqueue, align 4
  %115 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %116 = getelementptr inbounds %struct.ahash_instance, %struct.ahash_instance* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load %struct.crypto_template*, %struct.crypto_template** %5, align 8
  %119 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %120 = bitcast %struct.ahash_instance* %119 to %struct.shash_alg*
  %121 = call i32 @ahash_register_instance(%struct.crypto_template* %118, %struct.shash_alg* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %55
  %125 = load %struct.hashd_instance_ctx*, %struct.hashd_instance_ctx** %8, align 8
  %126 = getelementptr inbounds %struct.hashd_instance_ctx, %struct.hashd_instance_ctx* %125, i32 0, i32 0
  %127 = call i32 @crypto_drop_shash(i32* %126)
  br label %128

128:                                              ; preds = %124, %54
  %129 = load %struct.ahash_instance*, %struct.ahash_instance** %9, align 8
  %130 = bitcast %struct.ahash_instance* %129 to %struct.shash_alg*
  %131 = call i32 @kfree(%struct.shash_alg* %130)
  br label %132

132:                                              ; preds = %128, %55
  br label %133

133:                                              ; preds = %132, %37
  %134 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %135 = call i32 @crypto_mod_put(%struct.crypto_alg* %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %133, %20
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.shash_alg* @shash_attr_alg(%struct.rtattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.shash_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.shash_alg*) #1

declare dso_local %struct.shash_alg* @cryptd_alloc_instance(%struct.crypto_alg*, i32, i32) #1

declare dso_local i32 @ahash_instance_headroom(...) #1

declare dso_local %struct.hashd_instance_ctx* @ahash_instance_ctx(%struct.shash_alg*) #1

declare dso_local i32 @crypto_init_shash_spawn(i32*, %struct.shash_alg*, i32) #1

declare dso_local i32 @ahash_crypto_instance(%struct.shash_alg*) #1

declare dso_local i32 @ahash_register_instance(%struct.crypto_template*, %struct.shash_alg*) #1

declare dso_local i32 @crypto_drop_shash(i32*) #1

declare dso_local i32 @kfree(%struct.shash_alg*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
