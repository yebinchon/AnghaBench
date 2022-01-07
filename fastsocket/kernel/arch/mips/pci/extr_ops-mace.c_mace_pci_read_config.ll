; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-mace.c_mace_pci_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-mace.c_mace_pci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32 }
%struct.pci_bus = type { i64 }

@mace = common dso_local global %struct.TYPE_6__* null, align 8
@MACEPCI_CONTROL_MAR_INT = common dso_local global i32 0, align 4
@MACEPCI_ERROR_MASTER_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"read%d: reg=%08x,val=%02x\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @mace_pci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mace_pci_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @MACEPCI_CONTROL_MAR_INT, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @mkaddr(%struct.pci_bus* %23, i32 %24, i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %65 [
    i32 1, label %31
    i32 2, label %44
    i32 4, label %58
  ]

31:                                               ; preds = %5
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 3
  %39 = xor i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  br label %65

44:                                               ; preds = %5
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 1
  %52 = and i32 %51, 1
  %53 = xor i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %65

58:                                               ; preds = %5
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %5, %58, %44, %31
  %66 = load i32, i32* @MACEPCI_ERROR_MASTER_ABORT, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %78 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %65
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 64
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 16
  br i1 %92, label %93, label %97

93:                                               ; preds = %90, %87
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, 4096
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %93, %90, %84, %81, %65
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 %98, 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100, i32 %102)
  %104 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %104
}

declare dso_local i32 @mkaddr(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
