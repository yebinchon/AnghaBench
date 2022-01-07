; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_ghash_s390.c_ghash_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_ghash_s390.c_ghash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.ghash_desc_ctx = type { i32, i32* }
%struct.ghash_ctx = type { i32 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@KIMD_GHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @ghash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ghash_desc_ctx*, align 8
  %8 = alloca %struct.ghash_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %14 = call %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %13)
  store %struct.ghash_desc_ctx* %14, %struct.ghash_desc_ctx** %7, align 8
  %15 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %16 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ghash_ctx* @crypto_shash_ctx(i32 %17)
  store %struct.ghash_ctx* %18, %struct.ghash_ctx** %8, align 8
  %19 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %3
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %29 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %27, i64 %33
  store i32* %34, i32** %12, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @min(i32 %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @memcpy(i32* %48, i32* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %5, align 8
  %56 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %26
  %61 = load i32, i32* @KIMD_GHASH, align 4
  %62 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %65 = call i32 @crypt_s390_kimd(i32 %61, %struct.ghash_ctx* %62, i32* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  br label %71

71:                                               ; preds = %60, %26
  br label %72

72:                                               ; preds = %71, %3
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = xor i32 %75, -1
  %77 = and i32 %73, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %72
  %81 = load i32, i32* @KIMD_GHASH, align 4
  %82 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @crypt_s390_kimd(i32 %81, %struct.ghash_ctx* %82, i32* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sub i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %80, %72
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub i32 %102, %103
  %105 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %106 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @memcpy(i32* %107, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %101, %98
  ret i32 0
}

declare dso_local %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.ghash_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypt_s390_kimd(i32, %struct.ghash_ctx*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
