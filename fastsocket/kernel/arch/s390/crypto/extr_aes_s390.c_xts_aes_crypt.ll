; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.s390_xts_ctx = type { i32, i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, %struct.s390_xts_ctx*, %struct.blkcipher_walk*)* @xts_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_aes_crypt(%struct.blkcipher_desc* %0, i64 %1, %struct.s390_xts_ctx* %2, %struct.blkcipher_walk* %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.s390_xts_ctx*, align 8
  %8 = alloca %struct.blkcipher_walk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.s390_xts_ctx* %2, %struct.s390_xts_ctx** %7, align 8
  store %struct.blkcipher_walk* %3, %struct.blkcipher_walk** %8, align 8
  %16 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 1
  %20 = and i32 %19, 16
  store i32 %20, i32* %9, align 4
  %21 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %22 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %23 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %21, %struct.blkcipher_walk* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %25 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %128

30:                                               ; preds = %4
  %31 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memset(i32 %34, i32 0, i32 4)
  %36 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memset(i32 %39, i32 0, i32 4)
  %41 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memset(i32 %44, i32 0, i32 4)
  %46 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %51 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memcpy(i32 %49, i32 %52, i32 4)
  %54 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  store i8* %60, i8** %15, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @crypt_s390_pcc(i64 %61, i8* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %72 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i32 %70, i32 %74, i32 16)
  %76 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %77 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr i8, i8* %78, i64 %80
  store i8* %81, i8** %15, align 8
  br label %82

82:                                               ; preds = %122, %30
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %85 = sub nsw i32 %84, 1
  %86 = xor i32 %85, -1
  %87 = and i32 %83, %86
  store i32 %87, i32* %12, align 4
  %88 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %89 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %14, align 8
  %93 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %94 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %13, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @crypt_s390_km(i64 %98, i8* %99, i32* %100, i32* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %82
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %107, %108
  br label %110

110:                                              ; preds = %106, %82
  %111 = phi i1 [ true, %82 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @BUG_ON(i32 %112)
  %114 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* %11, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %11, align 4
  %118 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %119 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %118, %struct.blkcipher_walk* %119, i32 %120)
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %110
  %123 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %8, align 8
  %124 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %82, label %127

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %29
  %129 = load i32, i32* %10, align 4
  ret i32 %129
}

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @crypt_s390_pcc(i64, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @crypt_s390_km(i64, i8*, i32*, i32*, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
