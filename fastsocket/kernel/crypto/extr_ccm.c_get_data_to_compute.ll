; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_get_data_to_compute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_get_data_to_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }
%struct.crypto_ccm_req_priv_ctx = type { i32, i32*, i32*, i32 }
%struct.scatterlist = type { i32 }
%struct.scatter_walk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_cipher*, %struct.crypto_ccm_req_priv_ctx*, %struct.scatterlist*, i32)* @get_data_to_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_data_to_compute(%struct.crypto_cipher* %0, %struct.crypto_ccm_req_priv_ctx* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.crypto_cipher*, align 8
  %6 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatter_walk, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %5, align 8
  store %struct.crypto_ccm_req_priv_ctx* %1, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %16 = call i32 @scatterwalk_start(%struct.scatter_walk* %9, %struct.scatterlist* %15)
  br label %17

17:                                               ; preds = %55, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @scatterwalk_clamp(%struct.scatter_walk* %9, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.scatterlist* @sg_next(i32 %27)
  %29 = call i32 @scatterwalk_start(%struct.scatter_walk* %9, %struct.scatterlist* %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @scatterwalk_clamp(%struct.scatter_walk* %9, i32 %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %25, %20
  %33 = call i32* @scatterwalk_map(%struct.scatter_walk* %9, i32 0)
  store i32* %33, i32** %10, align 8
  %34 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %38 = call i32 @compute_mac(%struct.crypto_cipher* %34, i32* %35, i32 %36, %struct.crypto_ccm_req_priv_ctx* %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @scatterwalk_unmap(i32* %42, i32 0)
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @scatterwalk_advance(%struct.scatter_walk* %9, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @scatterwalk_done(%struct.scatter_walk* %9, i32 0, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @crypto_yield(i32 %53)
  br label %55

55:                                               ; preds = %50, %32
  br label %17

56:                                               ; preds = %17
  %57 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %56
  %62 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %13, align 8
  %65 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %14, align 8
  %68 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 16, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @memset(i32* %77, i32 0, i32 %78)
  %80 = load i32*, i32** %13, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @crypto_xor(i32* %80, i32* %81, i32 16)
  %83 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %83, i32* %84, i32* %85)
  %87 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %88 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, %struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_clamp(%struct.scatter_walk*, i32) #1

declare dso_local %struct.scatterlist* @sg_next(i32) #1

declare dso_local i32* @scatterwalk_map(%struct.scatter_walk*, i32) #1

declare dso_local i32 @compute_mac(%struct.crypto_cipher*, i32*, i32, %struct.crypto_ccm_req_priv_ctx*) #1

declare dso_local i32 @scatterwalk_unmap(i32*, i32) #1

declare dso_local i32 @scatterwalk_advance(%struct.scatter_walk*, i32) #1

declare dso_local i32 @scatterwalk_done(%struct.scatter_walk*, i32, i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
