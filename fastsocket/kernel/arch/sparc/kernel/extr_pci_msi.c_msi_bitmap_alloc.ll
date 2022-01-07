; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_msi.c_msi_bitmap_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_msi.c_msi_bitmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*)* @msi_bitmap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_bitmap_alloc(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_pbm_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %3, align 8
  store i64 64, i64* %5, align 8
  %6 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %7 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = sub i64 %9, 1
  %11 = add i64 %8, %10
  %12 = load i64, i64* %5, align 8
  %13 = sub i64 %12, 1
  %14 = xor i64 %13, -1
  %15 = and i64 %11, %14
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = udiv i64 %16, 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = urem i64 %18, 8
  %20 = call i32 @BUG_ON(i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kzalloc(i64 %21, i32 %22)
  %24 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %25 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %27 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @kzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
