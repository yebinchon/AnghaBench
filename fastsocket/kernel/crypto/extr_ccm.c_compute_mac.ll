; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_compute_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_compute_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }
%struct.crypto_ccm_req_priv_ctx = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_cipher*, i32*, i32, %struct.crypto_ccm_req_priv_ctx*)* @compute_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_mac(%struct.crypto_cipher* %0, i32* %1, i32 %2, %struct.crypto_ccm_req_priv_ctx* %3) #0 {
  %5 = alloca %struct.crypto_cipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.crypto_ccm_req_priv_ctx* %3, %struct.crypto_ccm_req_priv_ctx** %8, align 8
  store i32 16, i32* %9, align 4
  %14 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub i32 %21, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %4
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @memcpy(i32* %35, i32* %36, i32 %37)
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @crypto_xor(i32* %39, i32* %40, i32 %41)
  %43 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %43, i32* %44, i32* %45)
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %6, align 8
  %54 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %29, %4
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @crypto_xor(i32* %62, i32* %63, i32 %64)
  %66 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %66, i32* %67, i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %6, align 8
  br label %57

77:                                               ; preds = %57
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @memcpy(i32* %86, i32* %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %80, %77
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
