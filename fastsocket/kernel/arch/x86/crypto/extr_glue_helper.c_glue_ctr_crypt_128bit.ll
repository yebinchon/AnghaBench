; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c_glue_ctr_crypt_128bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c_glue_ctr_crypt_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_glue_ctx = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_walk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glue_ctr_crypt_128bit(%struct.common_glue_ctx* %0, %struct.blkcipher_desc* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca %struct.common_glue_ctx*, align 8
  %7 = alloca %struct.blkcipher_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.blkcipher_walk, align 4
  %14 = alloca i32, align 4
  store %struct.common_glue_ctx* %0, %struct.common_glue_ctx** %6, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %13, %struct.scatterlist* %15, %struct.scatterlist* %16, i32 %17)
  %19 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %20 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %19, %struct.blkcipher_walk* %13, i32 16)
  store i32 %20, i32* %14, align 4
  br label %21

21:                                               ; preds = %25, %5
  %22 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %13, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = icmp uge i32 %23, 16
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @glue_fpu_begin(i32 16, i32 %28, %struct.blkcipher_desc* %29, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %6, align 8
  %34 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %35 = call i32 @__glue_ctr_crypt_128bit(%struct.common_glue_ctx* %33, %struct.blkcipher_desc* %34, %struct.blkcipher_walk* %13)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %36, %struct.blkcipher_walk* %13, i32 %37)
  store i32 %38, i32* %14, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @glue_fpu_end(i32 %40)
  %42 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %59 = call i32 @glue_ctr_crypt_final_128bit(i32 %57, %struct.blkcipher_desc* %58, %struct.blkcipher_walk* %13)
  %60 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %61 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %60, %struct.blkcipher_walk* %13, i32 0)
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %45, %39
  %63 = load i32, i32* %14, align 4
  ret i32 %63
}

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @glue_fpu_begin(i32, i32, %struct.blkcipher_desc*, i32, i32) #1

declare dso_local i32 @__glue_ctr_crypt_128bit(%struct.common_glue_ctx*, %struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @glue_fpu_end(i32) #1

declare dso_local i32 @glue_ctr_crypt_final_128bit(i32, %struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
