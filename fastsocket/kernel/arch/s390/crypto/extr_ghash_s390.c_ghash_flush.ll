; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_ghash_s390.c_ghash_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_ghash_s390.c_ghash_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghash_ctx = type { i32 }
%struct.ghash_desc_ctx = type { i64, i32* }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@KIMD_GHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ghash_ctx*, %struct.ghash_desc_ctx*)* @ghash_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghash_flush(%struct.ghash_ctx* %0, %struct.ghash_desc_ctx* %1) #0 {
  %3 = alloca %struct.ghash_ctx*, align 8
  %4 = alloca %struct.ghash_desc_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ghash_ctx* %0, %struct.ghash_ctx** %3, align 8
  store %struct.ghash_desc_ctx* %1, %struct.ghash_desc_ctx** %4, align 8
  %8 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = getelementptr inbounds i32, i32* %16, i64 %22
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @memset(i32* %24, i32 0, i64 %27)
  %29 = load i32, i32* @KIMD_GHASH, align 4
  %30 = load %struct.ghash_ctx*, %struct.ghash_ctx** %3, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %33 = call i32 @crypt_s390_kimd(i32 %29, %struct.ghash_ctx* %30, i32* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %36 = icmp ne i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  br label %39

39:                                               ; preds = %15, %2
  %40 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @crypt_s390_kimd(i32, %struct.ghash_ctx*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
