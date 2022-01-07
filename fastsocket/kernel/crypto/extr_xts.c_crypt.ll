; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xts.c_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xts.c_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.priv = type { i32, i32 }
%struct.crypto_tfm = type opaque
%struct.sinfo = type { %struct.crypto_tfm*, void (%struct.crypto_tfm*, i32*, i32*)*, i32* }

@XTS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.blkcipher_walk*, %struct.priv*, void (%struct.crypto_tfm*, i32*, i32*)*, void (%struct.crypto_tfm*, i32*, i32*)*)* @crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1, %struct.priv* %2, void (%struct.crypto_tfm*, i32*, i32*)* %3, void (%struct.crypto_tfm*, i32*, i32*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.blkcipher_desc*, align 8
  %8 = alloca %struct.blkcipher_walk*, align 8
  %9 = alloca %struct.priv*, align 8
  %10 = alloca void (%struct.crypto_tfm*, i32*, i32*)*, align 8
  %11 = alloca void (%struct.crypto_tfm*, i32*, i32*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sinfo, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %7, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %8, align 8
  store %struct.priv* %2, %struct.priv** %9, align 8
  store void (%struct.crypto_tfm*, i32*, i32*)* %3, void (%struct.crypto_tfm*, i32*, i32*)** %10, align 8
  store void (%struct.crypto_tfm*, i32*, i32*)* %4, void (%struct.crypto_tfm*, i32*, i32*)** %11, align 8
  %18 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %15, i32 0, i32 0
  %20 = load %struct.priv*, %struct.priv** %9, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.crypto_tfm* @crypto_cipher_tfm(i32 %22)
  store %struct.crypto_tfm* %23, %struct.crypto_tfm** %19, align 8
  %24 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %15, i32 0, i32 1
  %25 = load void (%struct.crypto_tfm*, i32*, i32*)*, void (%struct.crypto_tfm*, i32*, i32*)** %11, align 8
  store void (%struct.crypto_tfm*, i32*, i32*)* %25, void (%struct.crypto_tfm*, i32*, i32*)** %24, align 8
  %26 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %15, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %28 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %29 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %27, %struct.blkcipher_walk* %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %31 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %117

36:                                               ; preds = %5
  %37 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %38 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %15, i32 0, i32 2
  store i32* %39, i32** %40, align 8
  %41 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %42 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %45 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %16, align 8
  %49 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %50 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %17, align 8
  %54 = load void (%struct.crypto_tfm*, i32*, i32*)*, void (%struct.crypto_tfm*, i32*, i32*)** %10, align 8
  %55 = load %struct.priv*, %struct.priv** %9, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.crypto_tfm* @crypto_cipher_tfm(i32 %57)
  %59 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %60 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %63 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  call void %54(%struct.crypto_tfm* %58, i32* %61, i32* %64)
  br label %73

65:                                               ; No predecessors!
  br label %66

66:                                               ; preds = %101, %65
  br label %67

67:                                               ; preds = %85, %66
  %68 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %15, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds %struct.sinfo, %struct.sinfo* %15, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @gf128mul_x_ble(i32* %69, i32* %71)
  br label %73

73:                                               ; preds = %67, %36
  %74 = load i32*, i32** %17, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @xts_round(%struct.sinfo* %15, i32* %74, i32* %75)
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %16, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %16, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %17, align 8
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp uge i32 %88, %89
  br i1 %90, label %67, label %91

91:                                               ; preds = %85
  %92 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %93 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %92, %struct.blkcipher_walk* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %97 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  br label %115

101:                                              ; preds = %91
  %102 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %103 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %13, align 4
  %105 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %106 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %16, align 8
  %110 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %111 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %17, align 8
  br label %66

115:                                              ; preds = %100
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %34
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.crypto_tfm* @crypto_cipher_tfm(i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @gf128mul_x_ble(i32*, i32*) #1

declare dso_local i32 @xts_round(%struct.sinfo*, i32*, i32*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
