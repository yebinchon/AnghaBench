; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_alloc_tx_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_alloc_tx_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TXCH = common dso_local global i32 0, align 4
@txch_free = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pasemi_alloc_tx_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_alloc_tx_chan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 129
  switch i32 %8, label %12 [
    i32 129, label %9
    i32 128, label %10
  ]

9:                                                ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 10, i32* %6, align 4
  br label %14

10:                                               ; preds = %1
  store i32 10, i32* %5, align 4
  %11 = load i32, i32* @MAX_TXCH, align 4
  store i32 %11, i32* %6, align 4
  br label %14

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @MAX_TXCH, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %12, %10, %9
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* @txch_free, align 4
  %17 = load i32, i32* @MAX_TXCH, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @find_next_bit(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @txch_free, align 4
  %29 = call i32 @test_and_clear_bit(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %15

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
