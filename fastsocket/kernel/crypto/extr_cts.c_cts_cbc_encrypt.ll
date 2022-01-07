; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cts.c_cts_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cts.c_cts_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cts_ctx = type { i32 }
%struct.blkcipher_desc = type { i32*, i32, i32 }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_cts_ctx*, %struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32, i32)* @cts_cbc_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cts_cbc_encrypt(%struct.crypto_cts_ctx* %0, %struct.blkcipher_desc* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_cts_ctx*, align 8
  %9 = alloca %struct.blkcipher_desc*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.blkcipher_desc, align 8
  %19 = alloca [1 x %struct.scatterlist], align 4
  %20 = alloca [1 x %struct.scatterlist], align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.crypto_cts_ctx* %0, %struct.crypto_cts_ctx** %8, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %9, align 8
  %28 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @crypto_blkcipher_blocksize(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %15, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %16, align 8
  %35 = load i32, i32* %14, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %17, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = sub i32 %38, %39
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %14, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %22, align 8
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 %44, 2
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %23, align 8
  %48 = load i32, i32* %14, align 4
  %49 = mul nsw i32 %48, 2
  %50 = zext i32 %49 to i64
  %51 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %24, align 8
  %52 = load i32, i32* %21, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %6
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %124

57:                                               ; preds = %6
  %58 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %59 = call i32 @sg_init_table(%struct.scatterlist* %58, i32 1)
  %60 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %20, i64 0, i64 0
  %61 = call i32 @sg_init_table(%struct.scatterlist* %60, i32 1)
  %62 = mul nuw i64 4, %46
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memset(i32* %47, i32 0, i32 %63)
  %65 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @scatterwalk_map_and_copy(i32* %47, %struct.scatterlist* %65, i32 %66, i32 %67, i32 0)
  %69 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %9, align 8
  %70 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @memcpy(i32* %43, i32* %71, i32 %72)
  %74 = load %struct.crypto_cts_ctx*, %struct.crypto_cts_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.crypto_cts_ctx, %struct.crypto_cts_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %18, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %18, i32 0, i32 0
  store i32* %43, i32** %78, align 8
  %79 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %9, align 8
  %80 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %18, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @sg_set_buf(%struct.scatterlist* %83, i32* %47, i32 %84)
  %86 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %20, i64 0, i64 0
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @sg_set_buf(%struct.scatterlist* %86, i32* %34, i32 %87)
  %89 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %20, i64 0, i64 0
  %90 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc* %18, %struct.scatterlist* %89, %struct.scatterlist* %90, i32 %91)
  store i32 %92, i32* %25, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %51, i64 %94
  %96 = load i32, i32* %21, align 4
  %97 = call i32 @memcpy(i32* %95, i32* %34, i32 %96)
  %98 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %18, i32 0, i32 0
  store i32* %34, i32** %98, align 8
  %99 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %47, i64 %101
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @sg_set_buf(%struct.scatterlist* %99, i32* %102, i32 %103)
  %105 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %20, i64 0, i64 0
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @sg_set_buf(%struct.scatterlist* %105, i32* %37, i32 %106)
  %108 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %20, i64 0, i64 0
  %109 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc* %18, %struct.scatterlist* %108, %struct.scatterlist* %109, i32 %110)
  store i32 %111, i32* %25, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @memcpy(i32* %51, i32* %37, i32 %112)
  %114 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @scatterwalk_map_and_copy(i32* %51, %struct.scatterlist* %114, i32 %115, i32 %116, i32 1)
  %118 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %9, align 8
  %119 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @memcpy(i32* %120, i32* %37, i32 %121)
  %123 = load i32, i32* %25, align 4
  store i32 %123, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %124

124:                                              ; preds = %57, %54
  %125 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @crypto_blkcipher_blocksize(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
