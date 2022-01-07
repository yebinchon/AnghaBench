; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_walk_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_blkcipher_walk_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i64, %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.blkcipher_walk = type { i32*, %struct.TYPE_2__, %struct.TYPE_2__, i64, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.blkcipher_walk*)* @blkcipher_walk_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcipher_walk_first(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca %struct.blkcipher_walk*, align 8
  %6 = alloca %struct.crypto_blkcipher*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %4, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %5, align 8
  %9 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %10 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %9, i32 0, i32 1
  %11 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %10, align 8
  store %struct.crypto_blkcipher* %11, %struct.crypto_blkcipher** %6, align 8
  %12 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %6, align 8
  %13 = call i32 @crypto_blkcipher_alignmask(%struct.crypto_blkcipher* %12)
  store i32 %13, i32* %7, align 4
  %14 = call i32 (...) @in_irq()
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EDEADLK, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %82

20:                                               ; preds = %2
  %21 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %22 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %25 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %27 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = call i64 @unlikely(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %82

36:                                               ; preds = %20
  %37 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %38 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %40 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %43 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %45 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = and i64 %46, %48
  %50 = call i64 @unlikely(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %36
  %53 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %54 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @blkcipher_copy_iv(%struct.blkcipher_walk* %53, %struct.crypto_blkcipher* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %82

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %64 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %63, i32 0, i32 2
  %65 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %66 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @scatterwalk_start(%struct.TYPE_2__* %64, i32 %68)
  %70 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %71 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %70, i32 0, i32 1
  %72 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %73 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @scatterwalk_start(%struct.TYPE_2__* %71, i32 %75)
  %77 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %78 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %80 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %81 = call i32 @blkcipher_walk_next(%struct.blkcipher_desc* %79, %struct.blkcipher_walk* %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %62, %59, %35, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @crypto_blkcipher_alignmask(%struct.crypto_blkcipher*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @blkcipher_copy_iv(%struct.blkcipher_walk*, %struct.crypto_blkcipher*, i32) #1

declare dso_local i32 @scatterwalk_start(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @blkcipher_walk_next(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
