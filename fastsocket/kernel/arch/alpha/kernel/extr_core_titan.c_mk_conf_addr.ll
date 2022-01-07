; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_titan.c_mk_conf_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_titan.c_mk_conf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32, %struct.pci_controller* }
%struct.pci_controller = type { i64 }

@.str = private unnamed_addr constant [77 x i8] c"mk_conf_addr(bus=%d ,device_fn=0x%x, where=0x%x, pci_addr=0x%p, type1=0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"mk_conf_addr: returning pci_addr 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i64*, i8*)* @mk_conf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_conf_addr(%struct.pci_bus* %0, i32 %1, i32 %2, i64* %3, i8* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pci_controller*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 2
  %16 = load %struct.pci_controller*, %struct.pci_controller** %15, align 8
  store %struct.pci_controller* %16, %struct.pci_controller** %11, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i64*, i64** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @DBG_CFG(i8* %24)
  %26 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %27 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %10, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i32, i32* %13, align 4
  %38 = shl i32 %37, 16
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %38, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %41, %42
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load %struct.pci_controller*, %struct.pci_controller** %11, align 8
  %46 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* %12, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @DBG_CFG(i8* %53)
  ret i32 0
}

declare dso_local i32 @DBG_CFG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
