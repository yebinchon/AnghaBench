; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_cbc_encrypt_128bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c___glue_cbc_encrypt_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i8*, i32*, i32*)*, %struct.blkcipher_desc*, %struct.blkcipher_walk*)* @__glue_cbc_encrypt_128bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__glue_cbc_encrypt_128bit(i32 (i8*, i32*, i32*)* %0, %struct.blkcipher_desc* %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca i32 (i8*, i32*, i32*)*, align 8
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 (i8*, i32*, i32*)* %0, i32 (i8*, i32*, i32*)** %4, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %5, align 8
  store %struct.blkcipher_walk* %2, %struct.blkcipher_walk** %6, align 8
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @crypto_blkcipher_ctx(i32 %15)
  store i8* %16, i8** %7, align 8
  store i32 16, i32* %8, align 4
  %17 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %18 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %21 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %10, align 8
  %26 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %27 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %11, align 8
  %32 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %12, align 8
  br label %36

36:                                               ; preds = %53, %3
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @u128_xor(i32* %37, i32* %38, i32* %39)
  %41 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 %41(i8* %42, i32* %43, i32* %44)
  %46 = load i32*, i32** %11, align 8
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32* %50, i32** %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sub i32 %51, 16
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %9, align 4
  %55 = icmp uge i32 %54, 16
  br i1 %55, label %36, label %56

56:                                               ; preds = %53
  %57 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %62 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @u128_xor(i32* %60, i32* %64, i32* %65)
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i8* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @u128_xor(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
