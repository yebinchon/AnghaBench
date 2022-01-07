; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_create_blkcipher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_create_blkcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.cryptd_queue = type { i32 }
%struct.cryptd_instance_ctx = type { i32, %struct.cryptd_queue* }
%struct.crypto_instance = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.TYPE_6__, %struct.TYPE_4__ }

@CRYPTO_ALG_TYPE_BLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_ABLKCIPHER = common dso_local global i32 0, align 4
@crypto_ablkcipher_type = common dso_local global i32 0, align 4
@cryptd_blkcipher_init_tfm = common dso_local global i32 0, align 4
@cryptd_blkcipher_exit_tfm = common dso_local global i32 0, align 4
@cryptd_blkcipher_setkey = common dso_local global i32 0, align 4
@cryptd_blkcipher_encrypt_enqueue = common dso_local global i32 0, align 4
@cryptd_blkcipher_decrypt_enqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**, %struct.cryptd_queue*)* @cryptd_create_blkcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_create_blkcipher(%struct.crypto_template* %0, %struct.rtattr** %1, %struct.cryptd_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_template*, align 8
  %6 = alloca %struct.rtattr**, align 8
  %7 = alloca %struct.cryptd_queue*, align 8
  %8 = alloca %struct.cryptd_instance_ctx*, align 8
  %9 = alloca %struct.crypto_instance*, align 8
  %10 = alloca %struct.crypto_alg*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %5, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %6, align 8
  store %struct.cryptd_queue* %2, %struct.cryptd_queue** %7, align 8
  %12 = load %struct.rtattr**, %struct.rtattr*** %6, align 8
  %13 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %14 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %15 = call %struct.crypto_instance* @crypto_get_attr_alg(%struct.rtattr** %12, i32 %13, i32 %14)
  %16 = bitcast %struct.crypto_instance* %15 to %struct.crypto_alg*
  store %struct.crypto_alg* %16, %struct.crypto_alg** %10, align 8
  %17 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %18 = bitcast %struct.crypto_alg* %17 to %struct.crypto_instance*
  %19 = call i64 @IS_ERR(%struct.crypto_instance* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %23 = bitcast %struct.crypto_alg* %22 to %struct.crypto_instance*
  %24 = call i32 @PTR_ERR(%struct.crypto_instance* %23)
  store i32 %24, i32* %4, align 4
  br label %139

25:                                               ; preds = %3
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %27 = bitcast %struct.crypto_alg* %26 to %struct.crypto_instance*
  %28 = call %struct.crypto_instance* @cryptd_alloc_instance(%struct.crypto_instance* %27, i32 0, i32 16)
  store %struct.crypto_instance* %28, %struct.crypto_instance** %9, align 8
  %29 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %30 = call i32 @PTR_ERR(%struct.crypto_instance* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %32 = call i64 @IS_ERR(%struct.crypto_instance* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %134

35:                                               ; preds = %25
  %36 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %37 = call %struct.cryptd_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance* %36)
  store %struct.cryptd_instance_ctx* %37, %struct.cryptd_instance_ctx** %8, align 8
  %38 = load %struct.cryptd_queue*, %struct.cryptd_queue** %7, align 8
  %39 = load %struct.cryptd_instance_ctx*, %struct.cryptd_instance_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.cryptd_instance_ctx, %struct.cryptd_instance_ctx* %39, i32 0, i32 1
  store %struct.cryptd_queue* %38, %struct.cryptd_queue** %40, align 8
  %41 = load %struct.cryptd_instance_ctx*, %struct.cryptd_instance_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.cryptd_instance_ctx, %struct.cryptd_instance_ctx* %41, i32 0, i32 0
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %44 = bitcast %struct.crypto_alg* %43 to %struct.crypto_instance*
  %45 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %46 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %47 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @crypto_init_spawn(i32* %42, %struct.crypto_instance* %44, %struct.crypto_instance* %45, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %130

53:                                               ; preds = %35
  %54 = load i32, i32* @CRYPTO_ALG_TYPE_ABLKCIPHER, align 4
  %55 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %58 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %61 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  store i32* @crypto_ablkcipher_type, i32** %62, align 8
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %64 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %68 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 6
  store i32 %66, i32* %70, align 8
  %71 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %72 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %76 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  store i32 %74, i32* %78, align 4
  %79 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %80 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %84 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  store i32 %82, i32* %86, align 8
  %87 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %88 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %92 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 4
  %95 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %96 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 4, i32* %97, align 4
  %98 = load i32, i32* @cryptd_blkcipher_init_tfm, align 4
  %99 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %100 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* @cryptd_blkcipher_exit_tfm, align 4
  %103 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %104 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* @cryptd_blkcipher_setkey, align 4
  %107 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %108 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store i32 %106, i32* %110, align 8
  %111 = load i32, i32* @cryptd_blkcipher_encrypt_enqueue, align 4
  %112 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %113 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* @cryptd_blkcipher_decrypt_enqueue, align 4
  %117 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %118 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 8
  %121 = load %struct.crypto_template*, %struct.crypto_template** %5, align 8
  %122 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %123 = call i32 @crypto_register_instance(%struct.crypto_template* %121, %struct.crypto_instance* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %53
  %127 = load %struct.cryptd_instance_ctx*, %struct.cryptd_instance_ctx** %8, align 8
  %128 = getelementptr inbounds %struct.cryptd_instance_ctx, %struct.cryptd_instance_ctx* %127, i32 0, i32 0
  %129 = call i32 @crypto_drop_spawn(i32* %128)
  br label %130

130:                                              ; preds = %126, %52
  %131 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %132 = call i32 @kfree(%struct.crypto_instance* %131)
  br label %133

133:                                              ; preds = %130, %53
  br label %134

134:                                              ; preds = %133, %34
  %135 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %136 = bitcast %struct.crypto_alg* %135 to %struct.crypto_instance*
  %137 = call i32 @crypto_mod_put(%struct.crypto_instance* %136)
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %134, %21
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.crypto_instance* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @cryptd_alloc_instance(%struct.crypto_instance*, i32, i32) #1

declare dso_local %struct.cryptd_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local i32 @crypto_init_spawn(i32*, %struct.crypto_instance*, %struct.crypto_instance*, i32) #1

declare dso_local i32 @crypto_register_instance(%struct.crypto_template*, %struct.crypto_instance*) #1

declare dso_local i32 @crypto_drop_spawn(i32*) #1

declare dso_local i32 @kfree(%struct.crypto_instance*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
