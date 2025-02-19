; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dca/extr_dca-core.c_dca_get_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dca/extr_dca-core.c_dca_get_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_domain = type { i32 }
%struct.device = type { i32 }
%struct.pci_bus = type { i32 }

@dca_domains = common dso_local global i32 0, align 4
@dca_providers_blocked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dca_domain* (%struct.device*)* @dca_get_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dca_domain* @dca_get_domain(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.dca_domain*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.pci_bus* @dca_pci_rc_from_dev(%struct.device* %5)
  store %struct.pci_bus* %6, %struct.pci_bus** %3, align 8
  %7 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %8 = call %struct.dca_domain* @dca_find_domain(%struct.pci_bus* %7)
  store %struct.dca_domain* %8, %struct.dca_domain** %4, align 8
  %9 = load %struct.dca_domain*, %struct.dca_domain** %4, align 8
  %10 = icmp ne %struct.dca_domain* %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call i64 @dca_provider_ioat_ver_3_0(%struct.device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i32 @list_empty(i32* @dca_domains)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 1, i32* @dca_providers_blocked, align 4
  br label %29

19:                                               ; preds = %15, %11
  %20 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %21 = call %struct.dca_domain* @dca_allocate_domain(%struct.pci_bus* %20)
  store %struct.dca_domain* %21, %struct.dca_domain** %4, align 8
  %22 = load %struct.dca_domain*, %struct.dca_domain** %4, align 8
  %23 = icmp ne %struct.dca_domain* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.dca_domain*, %struct.dca_domain** %4, align 8
  %26 = getelementptr inbounds %struct.dca_domain, %struct.dca_domain* %25, i32 0, i32 0
  %27 = call i32 @list_add(i32* %26, i32* @dca_domains)
  br label %28

28:                                               ; preds = %24, %19
  br label %29

29:                                               ; preds = %28, %18
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.dca_domain*, %struct.dca_domain** %4, align 8
  ret %struct.dca_domain* %31
}

declare dso_local %struct.pci_bus* @dca_pci_rc_from_dev(%struct.device*) #1

declare dso_local %struct.dca_domain* @dca_find_domain(%struct.pci_bus*) #1

declare dso_local i64 @dca_provider_ioat_ver_3_0(%struct.device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.dca_domain* @dca_allocate_domain(%struct.pci_bus*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
