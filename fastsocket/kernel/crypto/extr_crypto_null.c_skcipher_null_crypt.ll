; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_crypto_null.c_skcipher_null_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_crypto_null.c_skcipher_null_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_walk = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @skcipher_null_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_null_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.blkcipher_walk, align 8
  %10 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %12 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %9, %struct.scatterlist* %11, %struct.scatterlist* %12, i32 %13)
  %15 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %16 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %15, %struct.blkcipher_walk* %9)
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %43, %4
  %18 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @memcpy(i64 %35, i64 %39, i64 %41)
  br label %43

43:                                               ; preds = %31, %21
  %44 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %45 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %44, %struct.blkcipher_walk* %9, i32 0)
  store i32 %45, i32* %10, align 4
  br label %17

46:                                               ; preds = %17
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
