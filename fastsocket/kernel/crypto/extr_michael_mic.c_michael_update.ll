; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_michael_mic.c_michael_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_michael_mic.c_michael_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.michael_mic_desc_ctx = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @michael_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @michael_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.michael_mic_desc_ctx*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %12 = call %struct.michael_mic_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.michael_mic_desc_ctx* %12, %struct.michael_mic_desc_ctx** %8, align 8
  %13 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %3
  %18 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 4, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @memcpy(i32* %35, i32* %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %111

56:                                               ; preds = %27
  %57 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @le32_to_cpup(i32* %60)
  %62 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @michael_block(i32 %68, i32 %71)
  %73 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %56, %3
  %76 = load i32*, i32** %6, align 8
  store i32* %76, i32** %9, align 8
  br label %77

77:                                               ; preds = %80, %75
  %78 = load i32, i32* %7, align 4
  %79 = icmp uge i32 %78, 4
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  %83 = call i32 @le32_to_cpup(i32* %81)
  %84 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %89 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @michael_block(i32 %90, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = sub i32 %95, 4
  store i32 %96, i32* %7, align 4
  br label %77

97:                                               ; preds = %77
  %98 = load i32, i32* %7, align 4
  %99 = icmp ugt i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %8, align 8
  %105 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @memcpy(i32* %106, i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %100, %97
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %55
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.michael_mic_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i32 @michael_block(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
