; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_digest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32 }
%struct.scatterlist = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*, %struct.scatterlist*, i32, i32*)* @digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digest(%struct.hash_desc* %0, %struct.scatterlist* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hash_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.hash_desc* %0, %struct.hash_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = call i32 (...) @in_irq()
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EDEADLK, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %26

16:                                               ; preds = %4
  %17 = load %struct.hash_desc*, %struct.hash_desc** %6, align 8
  %18 = call i32 @init(%struct.hash_desc* %17)
  %19 = load %struct.hash_desc*, %struct.hash_desc** %6, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @update2(%struct.hash_desc* %19, %struct.scatterlist* %20, i32 %21)
  %23 = load %struct.hash_desc*, %struct.hash_desc** %6, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @final(%struct.hash_desc* %23, i32* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i32 @init(%struct.hash_desc*) #1

declare dso_local i32 @update2(%struct.hash_desc*, %struct.scatterlist*, i32) #1

declare dso_local i32 @final(%struct.hash_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
