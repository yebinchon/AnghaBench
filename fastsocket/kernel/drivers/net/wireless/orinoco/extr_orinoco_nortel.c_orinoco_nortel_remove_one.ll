; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_nortel.c_orinoco_nortel_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_nortel.c_orinoco_nortel_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.orinoco_private = type { %struct.TYPE_2__, %struct.orinoco_pci_card* }
%struct.TYPE_2__ = type { i64 }
%struct.orinoco_pci_card = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @orinoco_nortel_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orinoco_nortel_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca %struct.orinoco_pci_card*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.orinoco_private* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.orinoco_private* %6, %struct.orinoco_private** %3, align 8
  %7 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %8 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %7, i32 0, i32 1
  %9 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %8, align 8
  store %struct.orinoco_pci_card* %9, %struct.orinoco_pci_card** %4, align 8
  %10 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %4, align 8
  %11 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 10
  %14 = call i32 @iowrite16(i32 0, i64 %13)
  %15 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %16 = call i32 @orinoco_if_del(%struct.orinoco_private* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.orinoco_private* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @pci_set_drvdata(%struct.pci_dev* %22, i32* null)
  %24 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %25 = call i32 @free_orinocodev(%struct.orinoco_private* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %28 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @pci_iounmap(%struct.pci_dev* %26, i64 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %4, align 8
  %34 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pci_iounmap(%struct.pci_dev* %32, i64 %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %4, align 8
  %39 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pci_iounmap(%struct.pci_dev* %37, i64 %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i32 @pci_release_regions(%struct.pci_dev* %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = call i32 @pci_disable_device(%struct.pci_dev* %44)
  ret void
}

declare dso_local %struct.orinoco_private* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @orinoco_if_del(%struct.orinoco_private*) #1

declare dso_local i32 @free_irq(i32, %struct.orinoco_private*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @free_orinocodev(%struct.orinoco_private*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
