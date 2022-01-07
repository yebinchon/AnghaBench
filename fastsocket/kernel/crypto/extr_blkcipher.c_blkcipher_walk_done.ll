; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_walk_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i64, i32, %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.blkcipher_walk = type { i32, i32, i32, i64, i64, i64, i32, i32 }

@BLKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_blkcipher*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %12 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 2
  %13 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %12, align 8
  store %struct.crypto_blkcipher* %13, %struct.crypto_blkcipher** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %3
  %20 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %21 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %26 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BLKCIPHER_WALK_SLOW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @blkcipher_done_fast(%struct.blkcipher_walk* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  br label %52

39:                                               ; preds = %19
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %67

46:                                               ; preds = %39
  %47 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %48 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @blkcipher_done_slow(%struct.crypto_blkcipher* %47, %struct.blkcipher_walk* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %54 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sub i32 %55, %56
  store i32 %57, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %3
  %59 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %60 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %59, i32 0, i32 7
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @scatterwalk_done(i32* %60, i32 0, i32 %61)
  %63 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %64 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %63, i32 0, i32 6
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @scatterwalk_done(i32* %64, i32 1, i32 %65)
  br label %67

67:                                               ; preds = %58, %43
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %70 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %73 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %78 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @crypto_yield(i32 %79)
  %81 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %82 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %83 = call i32 @blkcipher_walk_next(%struct.blkcipher_desc* %81, %struct.blkcipher_walk* %82)
  store i32 %83, i32* %4, align 4
  br label %127

84:                                               ; preds = %67
  %85 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %86 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %89 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %84
  %93 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %94 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %97 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %100 = call i32 @crypto_blkcipher_ivsize(%struct.crypto_blkcipher* %99)
  %101 = call i32 @memcpy(i64 %95, i64 %98, i32 %100)
  br label %102

102:                                              ; preds = %92, %84
  %103 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %104 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %107 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %112 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @kfree(i64 %113)
  br label %115

115:                                              ; preds = %110, %102
  %116 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %117 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %122 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @free_page(i64 %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %76
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blkcipher_done_fast(%struct.blkcipher_walk*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @blkcipher_done_slow(%struct.crypto_blkcipher*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @scatterwalk_done(i32*, i32, i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local i32 @blkcipher_walk_next(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @crypto_blkcipher_ivsize(%struct.crypto_blkcipher*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
