; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_done_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_done_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_blkcipher = type { i32 }
%struct.blkcipher_walk = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_blkcipher*, %struct.blkcipher_walk*, i32)* @blkcipher_done_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcipher_done_slow(%struct.crypto_blkcipher* %0, %struct.blkcipher_walk* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_blkcipher*, align 8
  %5 = alloca %struct.blkcipher_walk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_blkcipher* %0, %struct.crypto_blkcipher** %4, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %4, align 8
  %10 = call i32 @crypto_blkcipher_alignmask(%struct.crypto_blkcipher* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %12 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = add i32 %14, 1
  %16 = call i64 @ALIGN(i64 %13, i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32* @blkcipher_get_spot(i32* %18, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %23 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @scatterwalk_copychunks(i32* %21, i32* %23, i32 %24, i32 1)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @crypto_blkcipher_alignmask(%struct.crypto_blkcipher*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32* @blkcipher_get_spot(i32*, i32) #1

declare dso_local i32 @scatterwalk_copychunks(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
