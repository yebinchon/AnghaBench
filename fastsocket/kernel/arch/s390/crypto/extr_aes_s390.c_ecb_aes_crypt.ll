; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_ecb_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_ecb_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, i8*, %struct.blkcipher_walk*)* @ecb_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_aes_crypt(%struct.blkcipher_desc* %0, i64 %1, i8* %2, %struct.blkcipher_walk* %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.blkcipher_walk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.blkcipher_walk* %3, %struct.blkcipher_walk** %8, align 8
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %15 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %16 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %14, %struct.blkcipher_walk* %15)
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %50, %4
  %18 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %19 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %29 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %12, align 8
  %33 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %34 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %13, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @crypt_s390_km(i64 %38, i8* %39, i32* %40, i32* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %22
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %47, %48
  br label %50

50:                                               ; preds = %46, %22
  %51 = phi i1 [ true, %22 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %59 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %58, %struct.blkcipher_walk* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %17

62:                                               ; preds = %17
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @crypt_s390_km(i64, i8*, i32*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
