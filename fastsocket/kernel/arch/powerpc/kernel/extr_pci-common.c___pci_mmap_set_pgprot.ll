; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci-common.c___pci_mmap_set_pgprot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci-common.c___pci_mmap_set_pgprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.resource = type { i32 }

@pci_mmap_mem = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.resource*, i32, i32, i32)* @__pci_mmap_set_pgprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_mmap_set_pgprot(%struct.pci_dev* %0, %struct.resource* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store %struct.resource* %1, %struct.resource** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @pgprot_val(i32 %13)
  store i64 %14, i64* %12, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @pci_mmap_mem, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %32

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %22
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @pgprot_noncached_wc(i64 %36)
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @pgprot_noncached(i64 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i32 @pgprot_noncached_wc(i64) #1

declare dso_local i32 @pgprot_noncached(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
