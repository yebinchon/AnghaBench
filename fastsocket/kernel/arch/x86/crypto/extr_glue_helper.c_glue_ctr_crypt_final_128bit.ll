; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c_glue_ctr_crypt_final_128bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c_glue_ctr_crypt_final_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i8*, i32*, i32*, i32*)*, %struct.blkcipher_desc*, %struct.blkcipher_walk*)* @glue_ctr_crypt_final_128bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glue_ctr_crypt_final_128bit(i32 (i8*, i32*, i32*, i32*)* %0, %struct.blkcipher_desc* %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca i32 (i8*, i32*, i32*, i32*)*, align 8
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 (i8*, i32*, i32*, i32*)* %0, i32 (i8*, i32*, i32*, i32*)** %4, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %5, align 8
  store %struct.blkcipher_walk* %2, %struct.blkcipher_walk** %6, align 8
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @crypto_blkcipher_ctx(i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %18 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %24 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %9, align 8
  %29 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %30 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = call i32 @be128_to_le128(i32* %11, i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @memcpy(i32* %12, i32* %37, i32 %38)
  %40 = load i32 (i8*, i32*, i32*, i32*)*, i32 (i8*, i32*, i32*, i32*)** %4, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 %40(i8* %41, i32* %12, i32* %12, i32* %11)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @memcpy(i32* %43, i32* %12, i32 %44)
  %46 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %47 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @le128_to_be128(i32* %49, i32* %11)
  ret void
}

declare dso_local i8* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @be128_to_le128(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le128_to_be128(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
