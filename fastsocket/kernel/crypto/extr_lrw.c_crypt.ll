; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lrw.c_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.priv = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.crypto_tfm = type opaque
%struct.sinfo = type { void (%struct.crypto_tfm.0*, i32*, i32*)*, i32, i32 }
%struct.crypto_tfm.0 = type opaque

@LRW_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.blkcipher_walk*, %struct.priv*, void (%struct.crypto_tfm*, i32*, i32*)*)* @crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1, %struct.priv* %2, void (%struct.crypto_tfm*, i32*, i32*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.blkcipher_walk*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca void (%struct.crypto_tfm*, i32*, i32*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sinfo, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %7, align 8
  store %struct.priv* %2, %struct.priv** %8, align 8
  store void (%struct.crypto_tfm*, i32*, i32*)* %3, void (%struct.crypto_tfm*, i32*, i32*)** %9, align 8
  %17 = load i32, i32* @LRW_BLOCK_SIZE, align 4
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %13, i32 0, i32 0
  %19 = load void (%struct.crypto_tfm*, i32*, i32*)*, void (%struct.crypto_tfm*, i32*, i32*)** %9, align 8
  %20 = bitcast void (%struct.crypto_tfm*, i32*, i32*)* %19 to void (%struct.crypto_tfm.0*, i32*, i32*)*
  store void (%struct.crypto_tfm.0*, i32*, i32*)* %20, void (%struct.crypto_tfm.0*, i32*, i32*)** %18, align 8
  %21 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %13, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %13, i32 0, i32 2
  %23 = load %struct.priv*, %struct.priv** %8, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @crypto_cipher_tfm(i32 %25)
  store i32 %26, i32* %22, align 4
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %28 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %29 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %27, %struct.blkcipher_walk* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %31 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %116

36:                                               ; preds = %4
  %37 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %38 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %15, align 8
  %42 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %43 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %16, align 8
  %47 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %48 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %13, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %13, i32 0, i32 1
  %55 = load %struct.priv*, %struct.priv** %8, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @gf128mul_64k_bbe(i32* %54, i32 %58)
  br label %75

60:                                               ; No predecessors!
  br label %61

61:                                               ; preds = %103, %60
  br label %62

62:                                               ; preds = %87, %61
  %63 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %13, i32 0, i32 1
  %64 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %13, i32 0, i32 1
  %65 = load %struct.priv*, %struct.priv** %8, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = call i64 @get_index128(i32* %69)
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @be128_xor(i32* %63, i32* %64, i32* %71)
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @inc(i32* %73)
  br label %75

75:                                               ; preds = %62, %36
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @lrw_round(%struct.sinfo* %13, i32* %76, i32* %77)
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %15, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %16, align 8
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp uge i32 %90, %91
  br i1 %92, label %62, label %93

93:                                               ; preds = %87
  %94 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %95 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %94, %struct.blkcipher_walk* %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %99 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %93
  br label %114

103:                                              ; preds = %93
  %104 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %105 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %15, align 8
  %109 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %110 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %16, align 8
  br label %61

114:                                              ; preds = %102
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %34
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @crypto_cipher_tfm(i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @gf128mul_64k_bbe(i32*, i32) #1

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

declare dso_local i64 @get_index128(i32*) #1

declare dso_local i32 @inc(i32*) #1

declare dso_local i32 @lrw_round(%struct.sinfo*, i32*, i32*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
