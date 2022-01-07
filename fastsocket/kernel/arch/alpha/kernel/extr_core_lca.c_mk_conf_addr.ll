; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_lca.c_mk_conf_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_lca.c_mk_conf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@LCA_IOC_CONF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i64*)* @mk_conf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_conf_addr(%struct.pci_bus* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = lshr i32 %20, 3
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp sgt i32 %24, 12
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %53

27:                                               ; preds = %19
  %28 = load i64, i64* @LCA_IOC_CONF, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 11, %30
  %32 = shl i32 1, %31
  %33 = load i32, i32* %13, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %32, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  br label %50

39:                                               ; preds = %4
  %40 = load i64, i64* @LCA_IOC_CONF, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %43, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %46, %47
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %39, %27
  %51 = load i64, i64* %10, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %26
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
