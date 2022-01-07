; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_increase_address_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_increase_address_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i64, i32, i32* }

@PAGE_MODE_6_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protection_domain*, i32)* @increase_address_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @increase_address_space(%struct.protection_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.protection_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %8 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PAGE_MODE_6_LEVEL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @get_zeroed_page(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %40

21:                                               ; preds = %13
  %22 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %23 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %26 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @virt_to_phys(i32* %27)
  %29 = call i32 @PM_LEVEL_PDE(i64 %24, i32 %28)
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %33 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %35 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %39 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %21, %20, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @PM_LEVEL_PDE(i64, i32) #1

declare dso_local i32 @virt_to_phys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
