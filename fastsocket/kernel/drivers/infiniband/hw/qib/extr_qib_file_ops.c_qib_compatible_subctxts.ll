; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_compatible_subctxts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_compatible_subctxts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QIB_USER_SWMAJOR = common dso_local global i32 0, align 4
@QIB_USER_SWMINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @qib_compatible_subctxts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_compatible_subctxts(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @QIB_USER_SWMAJOR, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

10:                                               ; preds = %2
  %11 = load i32, i32* @QIB_USER_SWMAJOR, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, i32* @QIB_USER_SWMINOR, align 4
  switch i32 %14, label %20 [
    i32 0, label %15
    i32 1, label %15
    i32 2, label %15
    i32 3, label %16
  ]

15:                                               ; preds = %13, %13, %13
  store i32 0, i32* %3, align 4
  br label %25

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 3
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 4
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %20, %16, %15, %9
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
