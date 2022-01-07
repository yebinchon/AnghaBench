; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_via82cxxx.c_via_config_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_via82cxxx.c_via_config_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_isa_bridge = type { i32, i64, i64, i64 }
%struct.pci_dev = type { i64 }

@via_isa_bridges = common dso_local global %struct.via_isa_bridge* null, align 8
@PCI_VENDOR_ID_VIA = common dso_local global i64 0, align 8
@VIA_BAD_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.via_isa_bridge* (%struct.pci_dev**)* @via_config_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.via_isa_bridge* @via_config_find(%struct.pci_dev** %0) #0 {
  %2 = alloca %struct.pci_dev**, align 8
  %3 = alloca %struct.via_isa_bridge*, align 8
  store %struct.pci_dev** %0, %struct.pci_dev*** %2, align 8
  %4 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** @via_isa_bridges, align 8
  store %struct.via_isa_bridge* %4, %struct.via_isa_bridge** %3, align 8
  br label %5

5:                                                ; preds = %53, %1
  %6 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %7 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %5
  %11 = load i64, i64* @PCI_VENDOR_ID_VIA, align 8
  %12 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @VIA_BAD_ID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %11, %21
  %23 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %24 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.pci_dev* @pci_get_device(i64 %22, i64 %25, i32* null)
  %27 = load %struct.pci_dev**, %struct.pci_dev*** %2, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** %27, align 8
  %28 = icmp ne %struct.pci_dev* %26, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %10
  %30 = load %struct.pci_dev**, %struct.pci_dev*** %2, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %35 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load %struct.pci_dev**, %struct.pci_dev*** %2, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %39, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %44 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %56

48:                                               ; preds = %38, %29
  %49 = load %struct.pci_dev**, %struct.pci_dev*** %2, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %49, align 8
  %51 = call i32 @pci_dev_put(%struct.pci_dev* %50)
  br label %52

52:                                               ; preds = %48, %10
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %55 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %54, i32 1
  store %struct.via_isa_bridge* %55, %struct.via_isa_bridge** %3, align 8
  br label %5

56:                                               ; preds = %47, %5
  %57 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  ret %struct.via_isa_bridge* %57
}

declare dso_local %struct.pci_dev* @pci_get_device(i64, i64, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
