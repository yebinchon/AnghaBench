; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_ahash_finup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_ahash_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.shash_desc = type { i32 }
%struct.crypto_hash_walk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shash_ahash_finup(%struct.ahash_request* %0, %struct.shash_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca %struct.crypto_hash_walk, align 4
  %7 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store %struct.shash_desc* %1, %struct.shash_desc** %5, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %9 = call i32 @crypto_hash_walk_first(%struct.ahash_request* %8, %struct.crypto_hash_walk* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %15 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @crypto_shash_final(%struct.shash_desc* %13, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %41, %18
  %20 = call i64 @crypto_hash_walk_last(%struct.crypto_hash_walk* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %24 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %28 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @crypto_shash_finup(%struct.shash_desc* %23, i32 %25, i32 %26, i32 %29)
  br label %37

31:                                               ; preds = %19
  %32 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %33 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @crypto_shash_update(%struct.shash_desc* %32, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = phi i32 [ %30, %22 ], [ %36, %31 ]
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @crypto_hash_walk_done(%struct.crypto_hash_walk* %6, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %19, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @crypto_hash_walk_first(%struct.ahash_request*, %struct.crypto_hash_walk*) #1

declare dso_local i32 @crypto_shash_final(%struct.shash_desc*, i32) #1

declare dso_local i64 @crypto_hash_walk_last(%struct.crypto_hash_walk*) #1

declare dso_local i32 @crypto_shash_finup(%struct.shash_desc*, i32, i32, i32) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i32, i32) #1

declare dso_local i32 @crypto_hash_walk_done(%struct.crypto_hash_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
