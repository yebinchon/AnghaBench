; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cbc.c_crypto_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cbc.c_crypto_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.crypto_cbc_ctx = type { %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @crypto_cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cbc_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.blkcipher_walk, align 8
  %10 = alloca %struct.crypto_blkcipher*, align 8
  %11 = alloca %struct.crypto_cbc_ctx*, align 8
  %12 = alloca %struct.crypto_cipher*, align 8
  %13 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 0
  %16 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %15, align 8
  store %struct.crypto_blkcipher* %16, %struct.crypto_blkcipher** %10, align 8
  %17 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %10, align 8
  %18 = call %struct.crypto_cbc_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher* %17)
  store %struct.crypto_cbc_ctx* %18, %struct.crypto_cbc_ctx** %11, align 8
  %19 = load %struct.crypto_cbc_ctx*, %struct.crypto_cbc_ctx** %11, align 8
  %20 = getelementptr inbounds %struct.crypto_cbc_ctx, %struct.crypto_cbc_ctx* %19, i32 0, i32 0
  %21 = load %struct.crypto_cipher*, %struct.crypto_cipher** %20, align 8
  store %struct.crypto_cipher* %21, %struct.crypto_cipher** %12, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %23 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %9, %struct.scatterlist* %22, %struct.scatterlist* %23, i32 %24)
  %26 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %27 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %26, %struct.blkcipher_walk* %9)
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %50, %4
  %29 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %44 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %45 = call i32 @crypto_cbc_decrypt_inplace(%struct.blkcipher_desc* %43, %struct.blkcipher_walk* %9, %struct.crypto_cipher* %44)
  store i32 %45, i32* %8, align 4
  br label %50

46:                                               ; preds = %32
  %47 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %48 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %49 = call i32 @crypto_cbc_decrypt_segment(%struct.blkcipher_desc* %47, %struct.blkcipher_walk* %9, %struct.crypto_cipher* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %51, %struct.blkcipher_walk* %9, i32 %52)
  store i32 %53, i32* %13, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load i32, i32* %13, align 4
  ret i32 %55
}

declare dso_local %struct.crypto_cbc_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher*) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @crypto_cbc_decrypt_inplace(%struct.blkcipher_desc*, %struct.blkcipher_walk*, %struct.crypto_cipher*) #1

declare dso_local i32 @crypto_cbc_decrypt_segment(%struct.blkcipher_desc*, %struct.blkcipher_walk*, %struct.crypto_cipher*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
