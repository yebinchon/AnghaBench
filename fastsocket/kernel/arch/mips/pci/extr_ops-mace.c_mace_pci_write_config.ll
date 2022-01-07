; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-mace.c_mace_pci_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-mace.c_mace_pci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, i8**, i8** }
%struct.pci_bus = type { i32 }

@mace = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"write%d: reg=%08x,val=%02x\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i8*)* @mace_pci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mace_pci_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @mkaddr(%struct.pci_bus* %11, i32 %12, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %50 [
    i32 1, label %19
    i32 2, label %31
    i32 4, label %44
  ]

19:                                               ; preds = %5
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 3
  %28 = xor i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %25, i64 %29
  store i8* %20, i8** %30, align 8
  br label %50

31:                                               ; preds = %5
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 1
  %40 = and i32 %39, 1
  %41 = xor i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %37, i64 %42
  store i8* %32, i8** %43, align 8
  br label %50

44:                                               ; preds = %5
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  br label %50

50:                                               ; preds = %5, %44, %31, %19
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %51, 8
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i8* %54)
  %56 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %56
}

declare dso_local i32 @mkaddr(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
