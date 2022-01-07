; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dca/extr_dca-core.c_dca_allocate_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dca/extr_dca-core.c_dca_allocate_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_domain = type { %struct.pci_bus*, i32 }
%struct.pci_bus = type { i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dca_domain* (%struct.pci_bus*)* @dca_allocate_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dca_domain* @dca_allocate_domain(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.dca_domain*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.dca_domain*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %5 = load i32, i32* @GFP_NOWAIT, align 4
  %6 = call %struct.dca_domain* @kzalloc(i32 16, i32 %5)
  store %struct.dca_domain* %6, %struct.dca_domain** %4, align 8
  %7 = load %struct.dca_domain*, %struct.dca_domain** %4, align 8
  %8 = icmp ne %struct.dca_domain* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.dca_domain* null, %struct.dca_domain** %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.dca_domain*, %struct.dca_domain** %4, align 8
  %12 = getelementptr inbounds %struct.dca_domain, %struct.dca_domain* %11, i32 0, i32 1
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %15 = load %struct.dca_domain*, %struct.dca_domain** %4, align 8
  %16 = getelementptr inbounds %struct.dca_domain, %struct.dca_domain* %15, i32 0, i32 0
  store %struct.pci_bus* %14, %struct.pci_bus** %16, align 8
  %17 = load %struct.dca_domain*, %struct.dca_domain** %4, align 8
  store %struct.dca_domain* %17, %struct.dca_domain** %2, align 8
  br label %18

18:                                               ; preds = %10, %9
  %19 = load %struct.dca_domain*, %struct.dca_domain** %2, align 8
  ret %struct.dca_domain* %19
}

declare dso_local %struct.dca_domain* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
