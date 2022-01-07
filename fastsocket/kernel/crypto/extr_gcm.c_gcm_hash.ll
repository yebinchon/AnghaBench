; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gcm.c_gcm_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.crypto_gcm_ghash_ctx, %struct.TYPE_3__ }
%struct.crypto_gcm_ghash_ctx = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ahash_request }
%struct.ahash_request = type { i32 }
%struct.crypto_gcm_ctx = type { i32 }

@gcm_hash_init_done = common dso_local global i32 0, align 4
@gcm_hash_assoc_done = common dso_local global i32 0, align 4
@gcm_hash_assoc_remain_done = common dso_local global i32 0, align 4
@gcm_hash_crypt_done = common dso_local global i32 0, align 4
@gcm_hash_crypt_remain_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*)* @gcm_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_hash(%struct.aead_request* %0, %struct.crypto_gcm_req_priv_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.crypto_gcm_ghash_ctx*, align 8
  %8 = alloca %struct.crypto_gcm_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.crypto_gcm_req_priv_ctx* %1, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %12 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.ahash_request* %14, %struct.ahash_request** %6, align 8
  %15 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %15, i32 0, i32 0
  store %struct.crypto_gcm_ghash_ctx* %16, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.crypto_gcm_ctx* @crypto_tfm_ctx(i32 %20)
  store %struct.crypto_gcm_ctx* %21, %struct.crypto_gcm_ctx** %8, align 8
  %22 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %23 = load %struct.crypto_gcm_ctx*, %struct.crypto_gcm_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.crypto_gcm_ctx, %struct.crypto_gcm_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %22, i32 %25)
  %27 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %28 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %29 = call i32 @aead_request_flags(%struct.aead_request* %28)
  %30 = load i32, i32* @gcm_hash_init_done, align 4
  %31 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %32 = call i32 @ahash_request_set_callback(%struct.ahash_request* %27, i32 %29, i32 %30, %struct.aead_request* %31)
  %33 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %34 = call i32 @crypto_ahash_init(%struct.ahash_request* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  br label %138

39:                                               ; preds = %2
  %40 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gcm_remain(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @gcm_hash_assoc_done, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @gcm_hash_assoc_remain_done, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %10, align 4
  %52 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %53 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %56 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %59 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gcm_hash_update(%struct.aead_request* %52, %struct.crypto_gcm_req_priv_ctx* %53, i32 %54, i32 %57, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %138

66:                                               ; preds = %50
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %71 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @gcm_hash_assoc_remain_done, align 4
  %74 = call i32 @gcm_hash_remain(%struct.aead_request* %70, %struct.crypto_gcm_req_priv_ctx* %71, i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %3, align 4
  br label %138

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %82 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @gcm_remain(i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @gcm_hash_crypt_done, align 4
  br label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @gcm_hash_crypt_remain_done, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %10, align 4
  %93 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %94 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %97 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.crypto_gcm_ghash_ctx*, %struct.crypto_gcm_ghash_ctx** %7, align 8
  %100 = getelementptr inbounds %struct.crypto_gcm_ghash_ctx, %struct.crypto_gcm_ghash_ctx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @gcm_hash_update(%struct.aead_request* %93, %struct.crypto_gcm_req_priv_ctx* %94, i32 %95, i32 %98, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %3, align 4
  br label %138

107:                                              ; preds = %91
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %112 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @gcm_hash_crypt_remain_done, align 4
  %115 = call i32 @gcm_hash_remain(%struct.aead_request* %111, %struct.crypto_gcm_req_priv_ctx* %112, i32 %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %138

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %107
  %122 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %123 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %124 = call i32 @gcm_hash_len(%struct.aead_request* %122, %struct.crypto_gcm_req_priv_ctx* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %3, align 4
  br label %138

129:                                              ; preds = %121
  %130 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %131 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %5, align 8
  %132 = call i32 @gcm_hash_final(%struct.aead_request* %130, %struct.crypto_gcm_req_priv_ctx* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %3, align 4
  br label %138

137:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %135, %127, %118, %105, %77, %64, %37
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.crypto_gcm_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @gcm_remain(i32) #1

declare dso_local i32 @gcm_hash_update(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*, i32, i32, i32) #1

declare dso_local i32 @gcm_hash_remain(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*, i32, i32) #1

declare dso_local i32 @gcm_hash_len(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*) #1

declare dso_local i32 @gcm_hash_final(%struct.aead_request*, %struct.crypto_gcm_req_priv_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
