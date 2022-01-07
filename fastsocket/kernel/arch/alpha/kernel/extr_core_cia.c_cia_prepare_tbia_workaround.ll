; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_cia.c_cia_prepare_tbia_workaround.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_cia.c_cia_prepare_tbia_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CIA_BROKEN_TBIA_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@CIA_BROKEN_TBIA_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cia_prepare_tbia_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cia_prepare_tbia_workaround(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @CIA_BROKEN_TBIA_SIZE, align 4
  %7 = call i64* @__alloc_bootmem(i32 %6, i32 32768, i32 0)
  store i64* %7, i64** %3, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = call i32 @virt_to_phys(i64* %8)
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = sub nsw i32 %10, 1
  %12 = ashr i32 %9, %11
  %13 = or i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %26, %1
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @CIA_BROKEN_TBIA_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %15

29:                                               ; preds = %15
  %30 = load i32, i32* @CIA_BROKEN_TBIA_BASE, align 4
  %31 = or i32 %30, 3
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @CIA_IOC_PCI_Wn_BASE(i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @CIA_BROKEN_TBIA_SIZE, align 4
  %36 = mul nsw i32 %35, 1024
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %37, -1048576
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @CIA_IOC_PCI_Wn_MASK(i32 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32 %38, i32* %41, align 4
  %42 = load i64*, i64** %3, align 8
  %43 = call i32 @virt_to_phys(i64* %42)
  %44 = ashr i32 %43, 2
  %45 = load i32, i32* %2, align 4
  %46 = call i64 @CIA_IOC_PCI_Tn_BASE(i32 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32 %44, i32* %47, align 4
  ret void
}

declare dso_local i64* @__alloc_bootmem(i32, i32, i32) #1

declare dso_local i32 @virt_to_phys(i64*) #1

declare dso_local i64 @CIA_IOC_PCI_Wn_BASE(i32) #1

declare dso_local i64 @CIA_IOC_PCI_Wn_MASK(i32) #1

declare dso_local i64 @CIA_IOC_PCI_Tn_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
