; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_cbc_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_cbc_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aes_ctx = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.blkcipher_walk = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @cbc_aes_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc_aes_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.aes_ctx* @blk_aes_ctx(i32 %16)
  store %struct.aes_ctx* %17, %struct.aes_ctx** %9, align 8
  %18 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = call i32 @padlock_reset_key(i32* %20)
  %22 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %23 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %22, %struct.scatterlist* %23, i32 %24)
  %26 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %27 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %26, %struct.blkcipher_walk* %10)
  store i32 %27, i32* %11, align 4
  %28 = call i32 (...) @irq_ts_save()
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %33, %4
  %30 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %48 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %52 = udiv i32 %50, %51
  %53 = call i32* @padlock_xcrypt_cbc(i32 %37, i32 %41, i32 %44, i32 %46, i32* %49, i32 %52)
  store i32* %53, i32** %13, align 8
  %54 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %58 = call i32 @memcpy(i32 %55, i32* %56, i32 %57)
  %59 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %60 = sub i32 %59, 1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %63, %struct.blkcipher_walk* %10, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %29

66:                                               ; preds = %29
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @irq_ts_restore(i32 %67)
  %69 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %70 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = call i32 @padlock_store_cword(i32* %71)
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local %struct.aes_ctx* @blk_aes_ctx(i32) #1

declare dso_local i32 @padlock_reset_key(i32*) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @irq_ts_save(...) #1

declare dso_local i32* @padlock_xcrypt_cbc(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @irq_ts_restore(i32) #1

declare dso_local i32 @padlock_store_cword(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
