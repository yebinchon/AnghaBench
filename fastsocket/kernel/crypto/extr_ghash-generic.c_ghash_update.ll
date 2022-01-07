; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ghash-generic.c_ghash_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ghash-generic.c_ghash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.ghash_desc_ctx = type { i32, i32* }
%struct.ghash_ctx = type { i32 }

@ENOKEY = common dso_local global i32 0, align 4
@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @ghash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ghash_desc_ctx*, align 8
  %9 = alloca %struct.ghash_ctx*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %14 = call %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %13)
  store %struct.ghash_desc_ctx* %14, %struct.ghash_desc_ctx** %8, align 8
  %15 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %16 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ghash_ctx* @crypto_shash_ctx(i32 %17)
  store %struct.ghash_ctx* %18, %struct.ghash_ctx** %9, align 8
  %19 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.ghash_ctx*, %struct.ghash_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOKEY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %125

29:                                               ; preds = %3
  %30 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %80

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @min(i32 %35, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %42 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  store i32* %47, i32** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %60, %34
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %6, align 8
  %63 = load i32, i32* %61, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %12, align 8
  %66 = load i32, i32* %64, align 4
  %67 = xor i32 %66, %63
  store i32 %67, i32* %64, align 4
  br label %56

68:                                               ; preds = %56
  %69 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.ghash_ctx*, %struct.ghash_ctx** %9, align 8
  %76 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @gf128mul_4k_lle(i32* %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %29
  br label %81

81:                                               ; preds = %85, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %84 = icmp uge i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %89 = call i32 @crypto_xor(i32* %86, i32* %87, i32 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = load %struct.ghash_ctx*, %struct.ghash_ctx** %9, align 8
  %92 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @gf128mul_4k_lle(i32* %90, i32 %93)
  %95 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %6, align 8
  %99 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sub i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %81

102:                                              ; preds = %81
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sub i32 %106, %107
  %109 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %8, align 8
  %110 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %115, %105
  %112 = load i32, i32* %7, align 4
  %113 = add i32 %112, -1
  store i32 %113, i32* %7, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %6, align 8
  %118 = load i32, i32* %116, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %10, align 8
  %121 = load i32, i32* %119, align 4
  %122 = xor i32 %121, %118
  store i32 %122, i32* %119, align 4
  br label %111

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %102
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %26
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.ghash_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gf128mul_4k_lle(i32*, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
