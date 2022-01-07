; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c_glue_ecb_crypt_128bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c_glue_ecb_crypt_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_glue_ctx = type { i32 }
%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_walk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glue_ecb_crypt_128bit(%struct.common_glue_ctx* %0, %struct.blkcipher_desc* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca %struct.common_glue_ctx*, align 8
  %7 = alloca %struct.blkcipher_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.blkcipher_walk, align 4
  store %struct.common_glue_ctx* %0, %struct.common_glue_ctx** %6, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %13 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %11, %struct.scatterlist* %12, %struct.scatterlist* %13, i32 %14)
  %16 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %6, align 8
  %17 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %18 = call i32 @__glue_ecb_crypt_128bit(%struct.common_glue_ctx* %16, %struct.blkcipher_desc* %17, %struct.blkcipher_walk* %11)
  ret i32 %18
}

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @__glue_ecb_crypt_128bit(%struct.common_glue_ctx*, %struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
