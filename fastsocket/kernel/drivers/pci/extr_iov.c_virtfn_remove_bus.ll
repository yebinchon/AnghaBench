; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_virtfn_remove_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_virtfn_remove_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*, i32)* @virtfn_remove_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtfn_remove_bus(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %14 = call i32 @pci_domain_nr(%struct.pci_bus* %13)
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.pci_bus* @pci_find_bus(i32 %14, i32 %15)
  store %struct.pci_bus* %16, %struct.pci_bus** %5, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %18 = icmp ne %struct.pci_bus* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 1
  %24 = call i64 @list_empty(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %28 = call i32 @pci_remove_bus(%struct.pci_bus* %27)
  br label %29

29:                                               ; preds = %11, %26, %12
  ret void
}

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pci_remove_bus(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
