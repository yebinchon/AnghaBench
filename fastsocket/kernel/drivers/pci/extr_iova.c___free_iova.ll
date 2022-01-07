; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iova.c___free_iova.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iova.c___free_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova_domain = type { i32, i32 }
%struct.iova = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__free_iova(%struct.iova_domain* %0, %struct.iova* %1) #0 {
  %3 = alloca %struct.iova_domain*, align 8
  %4 = alloca %struct.iova*, align 8
  %5 = alloca i64, align 8
  store %struct.iova_domain* %0, %struct.iova_domain** %3, align 8
  store %struct.iova* %1, %struct.iova** %4, align 8
  %6 = load %struct.iova_domain*, %struct.iova_domain** %3, align 8
  %7 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.iova_domain*, %struct.iova_domain** %3, align 8
  %11 = load %struct.iova*, %struct.iova** %4, align 8
  %12 = call i32 @__cached_rbnode_delete_update(%struct.iova_domain* %10, %struct.iova* %11)
  %13 = load %struct.iova*, %struct.iova** %4, align 8
  %14 = getelementptr inbounds %struct.iova, %struct.iova* %13, i32 0, i32 0
  %15 = load %struct.iova_domain*, %struct.iova_domain** %3, align 8
  %16 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %15, i32 0, i32 1
  %17 = call i32 @rb_erase(i32* %14, i32* %16)
  %18 = load %struct.iova_domain*, %struct.iova_domain** %3, align 8
  %19 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.iova*, %struct.iova** %4, align 8
  %23 = call i32 @free_iova_mem(%struct.iova* %22)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__cached_rbnode_delete_update(%struct.iova_domain*, %struct.iova*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_iova_mem(%struct.iova*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
