; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_aead_givencrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_aead_givencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_givcrypt_request = type { i32, i32, %struct.aead_request }
%struct.aead_request = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32 }
%struct.crypto_aead = type { i32 }
%struct.seqiv_ctx = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@seqiv_aead_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_givcrypt_request*)* @seqiv_aead_givencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqiv_aead_givencrypt(%struct.aead_givcrypt_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_givcrypt_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.seqiv_ctx*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aead_givcrypt_request* %0, %struct.aead_givcrypt_request** %3, align 8
  %13 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %14 = call %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %4, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %16 = call %struct.seqiv_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.seqiv_ctx* %16, %struct.seqiv_ctx** %5, align 8
  %17 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %18 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %17, i32 0, i32 2
  store %struct.aead_request* %18, %struct.aead_request** %6, align 8
  %19 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %20 = call %struct.aead_request* @aead_givcrypt_reqctx(%struct.aead_givcrypt_request* %19)
  store %struct.aead_request* %20, %struct.aead_request** %7, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %23 = call i32 @aead_geniv_base(%struct.crypto_aead* %22)
  %24 = call i32 @aead_request_set_tfm(%struct.aead_request* %21, i32 %23)
  %25 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %30 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %10, align 8
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %37 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %41 = call i64 @crypto_aead_alignmask(%struct.crypto_aead* %40)
  %42 = add nsw i64 %41, 1
  %43 = call i32 @IS_ALIGNED(i64 %39, i64 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %1
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @GFP_KERNEL, align 4
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32* @kmalloc(i32 %50, i32 %63)
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %132

70:                                               ; preds = %62
  %71 = load i32, i32* @seqiv_aead_complete, align 4
  store i32 %71, i32* %8, align 4
  %72 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %73 = bitcast %struct.aead_givcrypt_request* %72 to i8*
  store i8* %73, i8** %9, align 8
  br label %74

74:                                               ; preds = %70, %1
  %75 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %76 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %77 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @aead_request_set_callback(%struct.aead_request* %75, i32 %79, i32 %80, i8* %81)
  %83 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %84 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %85 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %88 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %91 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @aead_request_set_crypt(%struct.aead_request* %83, i32 %86, i32 %89, i32 %92, i32* %93)
  %95 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %96 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %97 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %100 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @aead_request_set_assoc(%struct.aead_request* %95, i32 %98, i32 %101)
  %103 = load %struct.seqiv_ctx*, %struct.seqiv_ctx** %5, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %106 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @seqiv_geniv(%struct.seqiv_ctx* %103, i32* %104, i32 %107, i32 %108)
  %110 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %111 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @memcpy(i32 %112, i32* %113, i32 %114)
  %116 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %117 = call i32 @crypto_aead_encrypt(%struct.aead_request* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %120 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %118, %121
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %74
  %127 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @seqiv_aead_complete2(%struct.aead_givcrypt_request* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %74
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %67
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request*) #1

declare dso_local %struct.seqiv_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_request* @aead_givcrypt_reqctx(%struct.aead_givcrypt_request*) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_geniv_base(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i64 @crypto_aead_alignmask(%struct.crypto_aead*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, i8*) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32, i32, i32, i32*) #1

declare dso_local i32 @aead_request_set_assoc(%struct.aead_request*, i32, i32) #1

declare dso_local i32 @seqiv_geniv(%struct.seqiv_ctx*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

declare dso_local i32 @seqiv_aead_complete2(%struct.aead_givcrypt_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
