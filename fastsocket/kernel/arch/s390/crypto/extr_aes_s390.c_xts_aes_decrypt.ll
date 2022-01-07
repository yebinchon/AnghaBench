; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.s390_xts_ctx = type { i32, i32 }
%struct.blkcipher_walk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @xts_aes_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_aes_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.s390_xts_ctx*, align 8
  %11 = alloca %struct.blkcipher_walk, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %13 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.s390_xts_ctx* @crypto_blkcipher_ctx(i32 %14)
  store %struct.s390_xts_ctx* %15, %struct.s390_xts_ctx** %10, align 8
  %16 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %10, align 8
  %17 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 48
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %26 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @xts_fallback_decrypt(%struct.blkcipher_desc* %24, %struct.scatterlist* %25, %struct.scatterlist* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %40

29:                                               ; preds = %4
  %30 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %11, %struct.scatterlist* %30, %struct.scatterlist* %31, i32 %32)
  %34 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %35 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %10, align 8
  %39 = call i32 @xts_aes_crypt(%struct.blkcipher_desc* %34, i32 %37, %struct.s390_xts_ctx* %38, %struct.blkcipher_walk* %11)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %29, %23
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.s390_xts_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xts_fallback_decrypt(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @xts_aes_crypt(%struct.blkcipher_desc*, i32, %struct.s390_xts_ctx*, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
