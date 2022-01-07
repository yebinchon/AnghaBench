; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_salsa20_generic.c_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_salsa20_generic.c_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.salsa20_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca %struct.crypto_blkcipher*, align 8
  %12 = alloca %struct.salsa20_ctx*, align 8
  %13 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 0
  %16 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %15, align 8
  store %struct.crypto_blkcipher* %16, %struct.crypto_blkcipher** %11, align 8
  %17 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %11, align 8
  %18 = call %struct.salsa20_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher* %17)
  store %struct.salsa20_ctx* %18, %struct.salsa20_ctx** %12, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %19, %struct.scatterlist* %20, i32 %21)
  %23 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %24 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %23, %struct.blkcipher_walk* %10, i32 64)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %12, align 8
  %26 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @salsa20_ivsetup(%struct.salsa20_ctx* %25, i32 %27)
  %29 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %4
  %37 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %12, align 8
  %38 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @salsa20_encrypt_bytes(%struct.salsa20_ctx* %37, i32 %41, i32 %45, i32 %46)
  %48 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %49 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %48, %struct.blkcipher_walk* %10, i32 0)
  store i32 %49, i32* %5, align 4
  br label %98

50:                                               ; preds = %4
  br label %51

51:                                               ; preds = %55, %50
  %52 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp uge i32 %53, 64
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %12, align 8
  %57 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = urem i32 %68, 64
  %70 = sub i32 %66, %69
  %71 = call i32 @salsa20_encrypt_bytes(%struct.salsa20_ctx* %56, i32 %60, i32 %64, i32 %70)
  %72 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %73 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = urem i32 %74, 64
  %76 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %72, %struct.blkcipher_walk* %10, i32 %75)
  store i32 %76, i32* %13, align 4
  br label %51

77:                                               ; preds = %51
  %78 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %12, align 8
  %83 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @salsa20_encrypt_bytes(%struct.salsa20_ctx* %82, i32 %86, i32 %90, i32 %92)
  %94 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %95 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %94, %struct.blkcipher_walk* %10, i32 0)
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %81, %77
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %36
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.salsa20_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher*) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @salsa20_ivsetup(%struct.salsa20_ctx*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @salsa20_encrypt_bytes(%struct.salsa20_ctx*, i32, i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
