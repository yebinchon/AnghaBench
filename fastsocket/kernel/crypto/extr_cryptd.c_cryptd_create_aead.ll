; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_create_aead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_create_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.cryptd_queue = type { i32 }
%struct.aead_instance_ctx = type { %struct.TYPE_8__, %struct.cryptd_queue* }
%struct.TYPE_8__ = type { i32 }
%struct.crypto_instance = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }

@CRYPTO_ALG_TYPE_AEAD = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@cryptd_aead_init_tfm = common dso_local global i32 0, align 4
@cryptd_aead_exit_tfm = common dso_local global i32 0, align 4
@cryptd_aead_encrypt_enqueue = common dso_local global i32 0, align 4
@cryptd_aead_decrypt_enqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**, %struct.cryptd_queue*)* @cryptd_create_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_create_aead(%struct.crypto_template* %0, %struct.rtattr** %1, %struct.cryptd_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_template*, align 8
  %6 = alloca %struct.rtattr**, align 8
  %7 = alloca %struct.cryptd_queue*, align 8
  %8 = alloca %struct.aead_instance_ctx*, align 8
  %9 = alloca %struct.crypto_instance*, align 8
  %10 = alloca %struct.crypto_alg*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %5, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %6, align 8
  store %struct.cryptd_queue* %2, %struct.cryptd_queue** %7, align 8
  %12 = load %struct.rtattr**, %struct.rtattr*** %6, align 8
  %13 = load i32, i32* @CRYPTO_ALG_TYPE_AEAD, align 4
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
  br label %163

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
  br label %158

35:                                               ; preds = %25
  %36 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %37 = call %struct.aead_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance* %36)
  store %struct.aead_instance_ctx* %37, %struct.aead_instance_ctx** %8, align 8
  %38 = load %struct.cryptd_queue*, %struct.cryptd_queue** %7, align 8
  %39 = load %struct.aead_instance_ctx*, %struct.aead_instance_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.aead_instance_ctx, %struct.aead_instance_ctx* %39, i32 0, i32 1
  store %struct.cryptd_queue* %38, %struct.cryptd_queue** %40, align 8
  %41 = load %struct.aead_instance_ctx*, %struct.aead_instance_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.aead_instance_ctx, %struct.aead_instance_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %45 = bitcast %struct.crypto_alg* %44 to %struct.crypto_instance*
  %46 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %47 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %48 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @crypto_init_spawn(i32* %43, %struct.crypto_instance* %45, %struct.crypto_instance* %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  br label %154

54:                                               ; preds = %35
  %55 = load i32, i32* @CRYPTO_ALG_TYPE_AEAD, align 4
  %56 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %59 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %62 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %65 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 4
  %67 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %68 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 4, i32* %69, align 4
  %70 = load i32, i32* @cryptd_aead_init_tfm, align 4
  %71 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %72 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @cryptd_aead_exit_tfm, align 4
  %75 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %76 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %79 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %83 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 8
  store i32 %81, i32* %85, align 4
  %86 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %87 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %91 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 7
  store i32 %89, i32* %93, align 4
  %94 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %95 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %99 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 6
  store i32 %97, i32* %101, align 4
  %102 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %103 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %107 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 5
  store i32 %105, i32* %109, align 4
  %110 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %111 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %115 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  store i32 %113, i32* %117, align 4
  %118 = load i32, i32* @cryptd_aead_encrypt_enqueue, align 4
  %119 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %120 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* @cryptd_aead_decrypt_enqueue, align 4
  %124 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %125 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i32 %123, i32* %127, align 4
  %128 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %129 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %133 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32 %131, i32* %135, align 4
  %136 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %137 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %141 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 4
  %144 = load %struct.crypto_template*, %struct.crypto_template** %5, align 8
  %145 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %146 = call i32 @crypto_register_instance(%struct.crypto_template* %144, %struct.crypto_instance* %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %54
  %150 = load %struct.aead_instance_ctx*, %struct.aead_instance_ctx** %8, align 8
  %151 = getelementptr inbounds %struct.aead_instance_ctx, %struct.aead_instance_ctx* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = call i32 @crypto_drop_spawn(i32* %152)
  br label %154

154:                                              ; preds = %149, %53
  %155 = load %struct.crypto_instance*, %struct.crypto_instance** %9, align 8
  %156 = call i32 @kfree(%struct.crypto_instance* %155)
  br label %157

157:                                              ; preds = %154, %54
  br label %158

158:                                              ; preds = %157, %34
  %159 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %160 = bitcast %struct.crypto_alg* %159 to %struct.crypto_instance*
  %161 = call i32 @crypto_mod_put(%struct.crypto_instance* %160)
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %158, %21
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.crypto_instance* @crypto_get_attr_alg(%struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @cryptd_alloc_instance(%struct.crypto_instance*, i32, i32) #1

declare dso_local %struct.aead_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance*) #1

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
