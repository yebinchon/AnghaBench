; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_pmu.c_cbe_write_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_pmu.c_cbe_write_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_PHYS_CTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cbe_write_ctr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NR_PHYS_CTRS, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @cbe_get_ctr_size(i32 %13, i32 %14)
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @cbe_read_phys_ctr(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NR_PHYS_CTRS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 16
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 65535
  %29 = or i32 %26, %28
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 65535
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, -65536
  %35 = or i32 %32, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %24
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @cbe_write_phys_ctr(i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @cbe_get_ctr_size(i32, i32) #1

declare dso_local i32 @cbe_read_phys_ctr(i32, i32) #1

declare dso_local i32 @cbe_write_phys_ctr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
