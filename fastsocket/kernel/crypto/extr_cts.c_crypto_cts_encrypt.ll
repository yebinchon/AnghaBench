; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cts.c_crypto_cts_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cts.c_crypto_cts_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_cts_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @crypto_cts_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cts_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_cts_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.blkcipher_desc, align 4
  %14 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %16 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.crypto_cts_ctx* @crypto_blkcipher_ctx(i32 %17)
  store %struct.crypto_cts_ctx* %18, %struct.crypto_cts_ctx** %9, align 8
  %19 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %20 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @crypto_blkcipher_blocksize(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add i32 %23, %24
  %26 = sub i32 %25, 1
  %27 = load i32, i32* %10, align 4
  %28 = udiv i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %32, 2
  br label %35

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  store i32 %36, i32* %12, align 4
  %37 = load %struct.crypto_cts_ctx*, %struct.crypto_cts_ctx** %9, align 8
  %38 = getelementptr inbounds %struct.crypto_cts_ctx, %struct.crypto_cts_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %42 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %46 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %35
  %52 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %53 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc* %13, %struct.scatterlist* %52, %struct.scatterlist* %53, i32 %54)
  store i32 %55, i32* %14, align 4
  br label %93

56:                                               ; preds = %35
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %58, 2
  %60 = icmp ule i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.crypto_cts_ctx*, %struct.crypto_cts_ctx** %9, align 8
  %63 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %64 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %65 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @cts_cbc_encrypt(%struct.crypto_cts_ctx* %62, %struct.blkcipher_desc* %63, %struct.scatterlist* %64, %struct.scatterlist* %65, i32 0, i32 %66)
  store i32 %67, i32* %14, align 4
  br label %92

68:                                               ; preds = %56
  %69 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %70 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %71, %72
  %74 = call i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc* %13, %struct.scatterlist* %69, %struct.scatterlist* %70, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = load %struct.crypto_cts_ctx*, %struct.crypto_cts_ctx** %9, align 8
  %79 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %80 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %81 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sub i32 %85, %88
  %90 = call i32 @cts_cbc_encrypt(%struct.crypto_cts_ctx* %78, %struct.blkcipher_desc* %79, %struct.scatterlist* %80, %struct.scatterlist* %81, i32 %84, i32 %89)
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %77, %68
  br label %92

92:                                               ; preds = %91, %61
  br label %93

93:                                               ; preds = %92, %51
  %94 = load i32, i32* %14, align 4
  ret i32 %94
}

declare dso_local %struct.crypto_cts_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @crypto_blkcipher_blocksize(i32) #1

declare dso_local i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @cts_cbc_encrypt(%struct.crypto_cts_ctx*, %struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
