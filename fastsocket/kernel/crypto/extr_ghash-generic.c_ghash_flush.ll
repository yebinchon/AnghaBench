; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ghash-generic.c_ghash_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ghash-generic.c_ghash_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghash_ctx = type { i32 }
%struct.ghash_desc_ctx = type { i32, i32* }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ghash_ctx*, %struct.ghash_desc_ctx*)* @ghash_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghash_flush(%struct.ghash_ctx* %0, %struct.ghash_desc_ctx* %1) #0 {
  %3 = alloca %struct.ghash_ctx*, align 8
  %4 = alloca %struct.ghash_desc_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.ghash_ctx* %0, %struct.ghash_ctx** %3, align 8
  store %struct.ghash_desc_ctx* %1, %struct.ghash_desc_ctx** %4, align 8
  %7 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %17 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %15, i64 %21
  store i32* %22, i32** %6, align 8
  br label %23

23:                                               ; preds = %29, %14
  %24 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %6, align 8
  %32 = load i32, i32* %30, align 4
  %33 = xor i32 %32, 0
  store i32 %33, i32* %30, align 4
  br label %23

34:                                               ; preds = %23
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.ghash_ctx*, %struct.ghash_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gf128mul_4k_lle(i32* %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %2
  %41 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  ret void
}

declare dso_local i32 @gf128mul_4k_lle(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
