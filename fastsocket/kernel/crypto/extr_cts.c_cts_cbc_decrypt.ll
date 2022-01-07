; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cts.c_cts_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cts.c_cts_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cts_ctx = type { i32 }
%struct.blkcipher_desc = type { i32*, i32, i32 }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_cts_ctx*, %struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32, i32)* @cts_cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cts_cbc_decrypt(%struct.crypto_cts_ctx* %0, %struct.blkcipher_desc* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4, i32 %5) #0 {
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
  %17 = alloca %struct.blkcipher_desc, align 8
  %18 = alloca [1 x %struct.scatterlist], align 4
  %19 = alloca [1 x %struct.scatterlist], align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.crypto_cts_ctx* %0, %struct.crypto_cts_ctx** %8, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %9, align 8
  %27 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @crypto_blkcipher_blocksize(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %15, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = sub i32 %34, %35
  store i32 %36, i32* %20, align 4
  %37 = load i32, i32* %14, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %21, align 8
  %40 = load i32, i32* %14, align 4
  %41 = mul nsw i32 %40, 2
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %22, align 8
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 %44, 2
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %23, align 8
  %48 = load i32, i32* %20, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %6
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %148

53:                                               ; preds = %6
  %54 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %18, i64 0, i64 0
  %55 = call i32 @sg_init_table(%struct.scatterlist* %54, i32 1)
  %56 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %57 = call i32 @sg_init_table(%struct.scatterlist* %56, i32 1)
  %58 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @scatterwalk_map_and_copy(i32* %43, %struct.scatterlist* %58, i32 %59, i32 %60, i32 0)
  %62 = load %struct.crypto_cts_ctx*, %struct.crypto_cts_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.crypto_cts_ctx, %struct.crypto_cts_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %17, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %17, i32 0, i32 0
  store i32* %39, i32** %66, align 8
  %67 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %9, align 8
  %68 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %17, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = mul nuw i64 4, %38
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memset(i32* %39, i32 0, i32 %72)
  %74 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %18, i64 0, i64 0
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @sg_set_buf(%struct.scatterlist* %74, i32* %43, i32 %75)
  %77 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @sg_set_buf(%struct.scatterlist* %77, i32* %33, i32 %78)
  %80 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %81 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %18, i64 0, i64 0
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc* %17, %struct.scatterlist* %80, %struct.scatterlist* %81, i32 %82)
  store i32 %83, i32* %24, align 4
  %84 = load i32, i32* %24, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %53
  %87 = load i32, i32* %24, align 4
  store i32 %87, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %148

88:                                               ; preds = %53
  %89 = mul nuw i64 4, %38
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memset(i32* %39, i32 0, i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %43, i64 %93
  %95 = load i32, i32* %20, align 4
  %96 = call i32 @memcpy(i32* %39, i32* %94, i32 %95)
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @crypto_xor(i32* %33, i32* %39, i32 %97)
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %47, i64 %100
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @memcpy(i32* %101, i32* %33, i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %43, i64 %105
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %33, i64 %111
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %20, align 4
  %115 = sub nsw i32 %113, %114
  %116 = call i32 @memcpy(i32* %109, i32* %112, i32 %115)
  %117 = mul nuw i64 4, %38
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memset(i32* %39, i32 0, i32 %118)
  %120 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %18, i64 0, i64 0
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %43, i64 %122
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @sg_set_buf(%struct.scatterlist* %120, i32* %123, i32 %124)
  %126 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @sg_set_buf(%struct.scatterlist* %126, i32* %47, i32 %127)
  %129 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %19, i64 0, i64 0
  %130 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %18, i64 0, i64 0
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc* %17, %struct.scatterlist* %129, %struct.scatterlist* %130, i32 %131)
  store i32 %132, i32* %24, align 4
  %133 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %9, align 8
  %134 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @crypto_xor(i32* %47, i32* %135, i32 %136)
  %138 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @scatterwalk_map_and_copy(i32* %47, %struct.scatterlist* %138, i32 %139, i32 %140, i32 1)
  %142 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %9, align 8
  %143 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @memcpy(i32* %144, i32* %43, i32 %145)
  %147 = load i32, i32* %24, align 4
  store i32 %147, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %148

148:                                              ; preds = %88, %86, %50
  %149 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @crypto_blkcipher_blocksize(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
