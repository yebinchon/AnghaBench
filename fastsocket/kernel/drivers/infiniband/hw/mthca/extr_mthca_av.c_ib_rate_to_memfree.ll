; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_av.c_ib_rate_to_memfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_av.c_ib_rate_to_memfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MTHCA_RATE_MEMFREE_FULL = common dso_local global i32 0, align 4
@MTHCA_RATE_MEMFREE_HALF = common dso_local global i32 0, align 4
@MTHCA_RATE_MEMFREE_QUARTER = common dso_local global i32 0, align 4
@MTHCA_RATE_MEMFREE_EIGHTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ib_rate_to_memfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_rate_to_memfree(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %12, %13
  switch i32 %14, label %21 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
    i32 3, label %19
  ]

15:                                               ; preds = %10
  %16 = load i32, i32* @MTHCA_RATE_MEMFREE_FULL, align 4
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %10
  %18 = load i32, i32* @MTHCA_RATE_MEMFREE_HALF, align 4
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %10, %10
  %20 = load i32, i32* @MTHCA_RATE_MEMFREE_QUARTER, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %10
  %22 = load i32, i32* @MTHCA_RATE_MEMFREE_EIGHTH, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %9
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
