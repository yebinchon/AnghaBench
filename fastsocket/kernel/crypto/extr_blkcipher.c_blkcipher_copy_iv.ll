; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_copy_iv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_copy_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_walk = type { i32, i32, i64 }
%struct.crypto_blkcipher = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_walk*, %struct.crypto_blkcipher*, i32)* @blkcipher_copy_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcipher_copy_iv(%struct.blkcipher_walk* %0, %struct.crypto_blkcipher* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkcipher_walk*, align 8
  %6 = alloca %struct.crypto_blkcipher*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.blkcipher_walk* %0, %struct.blkcipher_walk** %5, align 8
  store %struct.crypto_blkcipher* %1, %struct.crypto_blkcipher** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %6, align 8
  %17 = call i32 @crypto_blkcipher_ivsize(%struct.crypto_blkcipher* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 1
  %22 = call i32 @ALIGN(i64 %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul i32 %23, 2
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %24, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @max(i32 %27, i32 %28)
  %30 = add i32 %26, %29
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  %33 = sub i32 %30, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (...) @crypto_tfm_ctx_alignment()
  %36 = sub nsw i32 %35, 1
  %37 = xor i32 %36, -1
  %38 = and i32 %34, %37
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call i64 @kmalloc(i32 %41, i32 %42)
  %44 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %45 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %47 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %3
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %85

53:                                               ; preds = %3
  %54 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %55 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 1
  %59 = call i32 @ALIGN(i64 %56, i32 %58)
  %60 = zext i32 %59 to i64
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32* @blkcipher_get_spot(i32* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %12, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32* @blkcipher_get_spot(i32* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %12, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32* @blkcipher_get_spot(i32* %74, i32 %75)
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %79 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @memcpy(i32* %77, i32 %80, i32 %81)
  %83 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %84 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %53, %50
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @crypto_blkcipher_ivsize(%struct.crypto_blkcipher*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32* @blkcipher_get_spot(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
