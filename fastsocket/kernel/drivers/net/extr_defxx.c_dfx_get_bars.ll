; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_defxx.c_dfx_get_bars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_defxx.c_dfx_get_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DFX_MMIO = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_CMP_2 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_CMP_1 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_CMP_0 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_MASK_2 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_MASK_1 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_MASK_0 = common dso_local global i64 0, align 8
@PI_MEM_ADD_MASK_M = common dso_local global i32 0, align 4
@PI_ESIC_K_CSR_IO_LEN = common dso_local global i32 0, align 4
@PI_TC_K_CSR_OFFSET = common dso_local global i32 0, align 4
@PI_TC_K_CSR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32*, i32*)* @dfx_get_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfx_get_bars(%struct.device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @DFX_BUS_PCI(%struct.device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @DFX_BUS_EISA(%struct.device* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @DFX_BUS_TC(%struct.device* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* @DFX_MMIO, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i1 [ true, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  store i32 %34, i32* %11, align 4
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @to_pci_dev(%struct.device* %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @pci_resource_start(i32 %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @to_pci_dev(%struct.device* %40)
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @pci_resource_len(i32 %41, i32 %42)
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %30, %25
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %114

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call %struct.TYPE_6__* @to_eisa_device(%struct.device* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %107

55:                                               ; preds = %48
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @PI_ESIC_K_MEM_ADD_CMP_2, align 8
  %58 = add i64 %56, %57
  %59 = call i32 @inb(i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = shl i32 %60, 8
  store i32 %61, i32* %13, align 4
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @PI_ESIC_K_MEM_ADD_CMP_1, align 8
  %64 = add i64 %62, %63
  %65 = call i32 @inb(i64 %64)
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = shl i32 %68, 8
  store i32 %69, i32* %13, align 4
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @PI_ESIC_K_MEM_ADD_CMP_0, align 8
  %72 = add i64 %70, %71
  %73 = call i32 @inb(i64 %72)
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %76, 16
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @PI_ESIC_K_MEM_ADD_MASK_2, align 8
  %82 = add i64 %80, %81
  %83 = call i32 @inb(i64 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = shl i32 %84, 8
  store i32 %85, i32* %13, align 4
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @PI_ESIC_K_MEM_ADD_MASK_1, align 8
  %88 = add i64 %86, %87
  %89 = call i32 @inb(i64 %88)
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = shl i32 %92, 8
  store i32 %93, i32* %13, align 4
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @PI_ESIC_K_MEM_ADD_MASK_0, align 8
  %96 = add i64 %94, %95
  %97 = call i32 @inb(i64 %96)
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = shl i32 %100, 16
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @PI_MEM_ADD_MASK_M, align 4
  %104 = or i32 %102, %103
  %105 = add nsw i32 %104, 1
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  br label %113

107:                                              ; preds = %48
  %108 = load i64, i64* %12, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32*, i32** %5, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @PI_ESIC_K_CSR_IO_LEN, align 4
  %112 = load i32*, i32** %6, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %55
  br label %114

114:                                              ; preds = %113, %45
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = call %struct.TYPE_5__* @to_tc_dev(%struct.device* %118)
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @PI_TC_K_CSR_OFFSET, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32*, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @PI_TC_K_CSR_LEN, align 4
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %117, %114
  ret void
}

declare dso_local i32 @DFX_BUS_PCI(%struct.device*) #1

declare dso_local i32 @DFX_BUS_EISA(%struct.device*) #1

declare dso_local i32 @DFX_BUS_TC(%struct.device*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local %struct.TYPE_6__* @to_eisa_device(%struct.device*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local %struct.TYPE_5__* @to_tc_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
