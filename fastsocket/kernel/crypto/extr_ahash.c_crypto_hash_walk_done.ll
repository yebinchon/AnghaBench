; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_hash_walk_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_hash_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash_walk = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_walk_done(%struct.crypto_hash_walk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_hash_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.crypto_hash_walk* %0, %struct.crypto_hash_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %9 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %15 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %18 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %2
  %24 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %25 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = sub i32 %34, 1
  %36 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %37 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  %45 = call i32 @ALIGN(i32 %42, i32 %44)
  %46 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %47 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %49 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %52 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %59 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %57, %60
  %62 = call i32 @min(i32 %55, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %65 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %109

69:                                               ; preds = %30, %23, %2
  %70 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %71 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @crypto_kunmap(i32 %72, i32 0)
  %74 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %75 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @crypto_yield(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %3, align 4
  br label %109

82:                                               ; preds = %69
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %87 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %86, i32 0, i32 3
  store i32 0, i32* %87, align 4
  %88 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %89 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %93 = call i32 @hash_walk_next(%struct.crypto_hash_walk* %92)
  store i32 %93, i32* %3, align 4
  br label %109

94:                                               ; preds = %82
  %95 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %96 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %109

100:                                              ; preds = %94
  %101 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %102 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @scatterwalk_sg_next(i32 %103)
  %105 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %106 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %4, align 8
  %108 = call i32 @hash_walk_new_entry(%struct.crypto_hash_walk* %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %100, %99, %85, %80, %33
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @crypto_kunmap(i32, i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local i32 @hash_walk_next(%struct.crypto_hash_walk*) #1

declare dso_local i32 @scatterwalk_sg_next(i32) #1

declare dso_local i32 @hash_walk_new_entry(%struct.crypto_hash_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
