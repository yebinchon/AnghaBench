; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_topup_memory_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_topup_memory_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_memory_cache = type { i32, i8** }
%struct.kmem_cache = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_memory_cache*, %struct.kmem_cache*, i32)* @mmu_topup_memory_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache* %0, %struct.kmem_cache* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_mmu_memory_cache*, align 8
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.kvm_mmu_memory_cache* %0, %struct.kvm_mmu_memory_cache** %5, align 8
  store %struct.kmem_cache* %1, %struct.kmem_cache** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %34, %15
  %17 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %20, i32 0, i32 1
  %22 = load i8**, i8*** %21, align 8
  %23 = call i32 @ARRAY_SIZE(i8** %22)
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %16
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmem_cache_zalloc(%struct.kmem_cache* %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %25
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8*, i8** %38, i64 %43
  store i8* %35, i8** %44, align 8
  br label %16

45:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %31, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i8* @kmem_cache_zalloc(%struct.kmem_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
