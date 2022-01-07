; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_rmd160.c_rmd160_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_rmd160.c_rmd160_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.rmd160_ctx = type { i32, i32* }

@rmd160_final.padding = internal constant <{ i32, [63 x i32] }> <{ i32 128, [63 x i32] zeroinitializer }>, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @rmd160_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmd160_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rmd160_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %12 = call %struct.rmd160_ctx* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.rmd160_ctx* %12, %struct.rmd160_ctx** %5, align 8
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %10, align 8
  %14 = load %struct.rmd160_ctx*, %struct.rmd160_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.rmd160_ctx, %struct.rmd160_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 3
  %18 = call i32 @cpu_to_le64(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.rmd160_ctx*, %struct.rmd160_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.rmd160_ctx, %struct.rmd160_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 63
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 56
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 56, %26
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 120, %29
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %27, %25 ], [ %30, %28 ]
  store i32 %32, i32* %8, align 4
  %33 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @rmd160_update(%struct.shash_desc* %33, i32* getelementptr inbounds ([64 x i32], [64 x i32]* bitcast (<{ i32, [63 x i32] }>* @rmd160_final.padding to [64 x i32]*), i64 0, i64 0), i32 %34)
  %36 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %37 = call i32 @rmd160_update(%struct.shash_desc* %36, i32* %9, i32 4)
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %53, %31
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 5
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.rmd160_ctx*, %struct.rmd160_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.rmd160_ctx, %struct.rmd160_ctx* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @cpu_to_le32p(i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %38

56:                                               ; preds = %38
  %57 = load %struct.rmd160_ctx*, %struct.rmd160_ctx** %5, align 8
  %58 = call i32 @memset(%struct.rmd160_ctx* %57, i32 0, i32 16)
  ret i32 0
}

declare dso_local %struct.rmd160_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @rmd160_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @cpu_to_le32p(i32*) #1

declare dso_local i32 @memset(%struct.rmd160_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
