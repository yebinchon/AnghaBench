; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c_glue_cbc_encrypt_128bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_glue_helper.c_glue_cbc_encrypt_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_walk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glue_cbc_encrypt_128bit(i32 %0, %struct.blkcipher_desc* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.blkcipher_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.blkcipher_walk, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %11, %struct.scatterlist* %13, %struct.scatterlist* %14, i32 %15)
  %17 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %18 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %17, %struct.blkcipher_walk* %11)
  store i32 %18, i32* %12, align 4
  br label %19

19:                                               ; preds = %23, %5
  %20 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %26 = call i32 @__glue_cbc_encrypt_128bit(i32 %24, %struct.blkcipher_desc* %25, %struct.blkcipher_walk* %11)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %27, %struct.blkcipher_walk* %11, i32 %28)
  store i32 %29, i32* %12, align 4
  br label %19

30:                                               ; preds = %19
  %31 = load i32, i32* %12, align 4
  ret i32 %31
}

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @__glue_cbc_encrypt_128bit(i32, %struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
