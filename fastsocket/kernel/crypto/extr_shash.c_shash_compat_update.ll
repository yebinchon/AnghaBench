; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_compat_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_compat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.shash_desc = type { i32 }
%struct.crypto_hash_walk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*, %struct.scatterlist*, i32)* @shash_compat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_compat_update(%struct.hash_desc* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.hash_desc*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.shash_desc**, align 8
  %8 = alloca %struct.shash_desc*, align 8
  %9 = alloca %struct.crypto_hash_walk, align 4
  %10 = alloca i32, align 4
  store %struct.hash_desc* %0, %struct.hash_desc** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hash_desc*, %struct.hash_desc** %4, align 8
  %12 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.shash_desc** @crypto_hash_ctx(i32 %13)
  store %struct.shash_desc** %14, %struct.shash_desc*** %7, align 8
  %15 = load %struct.shash_desc**, %struct.shash_desc*** %7, align 8
  %16 = load %struct.shash_desc*, %struct.shash_desc** %15, align 8
  store %struct.shash_desc* %16, %struct.shash_desc** %8, align 8
  %17 = load %struct.hash_desc*, %struct.hash_desc** %4, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @crypto_hash_walk_first_compat(%struct.hash_desc* %17, %struct.crypto_hash_walk* %9, %struct.scatterlist* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %30, %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %26 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @crypto_shash_update(%struct.shash_desc* %25, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @crypto_hash_walk_done(%struct.crypto_hash_walk* %9, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %21

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  ret i32 %34
}

declare dso_local %struct.shash_desc** @crypto_hash_ctx(i32) #1

declare dso_local i32 @crypto_hash_walk_first_compat(%struct.hash_desc*, %struct.crypto_hash_walk*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i32, i32) #1

declare dso_local i32 @crypto_hash_walk_done(%struct.crypto_hash_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
