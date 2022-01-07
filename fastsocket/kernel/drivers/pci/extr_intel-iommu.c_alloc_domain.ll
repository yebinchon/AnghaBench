; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_alloc_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_alloc_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_domain* ()* @alloc_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_domain* @alloc_domain() #0 {
  %1 = alloca %struct.dmar_domain*, align 8
  %2 = alloca %struct.dmar_domain*, align 8
  %3 = call %struct.dmar_domain* (...) @alloc_domain_mem()
  store %struct.dmar_domain* %3, %struct.dmar_domain** %2, align 8
  %4 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %5 = icmp ne %struct.dmar_domain* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.dmar_domain* null, %struct.dmar_domain** %1, align 8
  br label %15

7:                                                ; preds = %0
  %8 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %9 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @memset(i32 %10, i32 0, i32 4)
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %13 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  store %struct.dmar_domain* %14, %struct.dmar_domain** %1, align 8
  br label %15

15:                                               ; preds = %7, %6
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %1, align 8
  ret %struct.dmar_domain* %16
}

declare dso_local %struct.dmar_domain* @alloc_domain_mem(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
