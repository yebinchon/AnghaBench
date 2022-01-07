; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_hash_walk_first_compat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_hash_walk_first_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32, i32 }
%struct.crypto_hash_walk = type { i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_walk_first_compat(%struct.hash_desc* %0, %struct.crypto_hash_walk* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hash_desc*, align 8
  %7 = alloca %struct.crypto_hash_walk*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  store %struct.hash_desc* %0, %struct.hash_desc** %6, align 8
  store %struct.crypto_hash_walk* %1, %struct.crypto_hash_walk** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %7, align 8
  %12 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %7, align 8
  %14 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

18:                                               ; preds = %4
  %19 = load %struct.hash_desc*, %struct.hash_desc** %6, align 8
  %20 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @crypto_hash_alignmask(i32 %21)
  %23 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %7, align 8
  %24 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %26 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %7, align 8
  %27 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %26, i32 0, i32 2
  store %struct.scatterlist* %25, %struct.scatterlist** %27, align 8
  %28 = load %struct.hash_desc*, %struct.hash_desc** %6, align 8
  %29 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %7, align 8
  %32 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %7, align 8
  %34 = call i32 @hash_walk_new_entry(%struct.crypto_hash_walk* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %18, %17
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @crypto_hash_alignmask(i32) #1

declare dso_local i32 @hash_walk_new_entry(%struct.crypto_hash_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
