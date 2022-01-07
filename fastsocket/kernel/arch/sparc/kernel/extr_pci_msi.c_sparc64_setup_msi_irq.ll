; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_msi.c_sparc64_setup_msi_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_msi.c_sparc64_setup_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pci_pbm_info* }
%struct.pci_pbm_info = type { i32*, i32, i32, i32, %struct.sparc64_msiq_ops* }
%struct.sparc64_msiq_ops = type { i32 (%struct.pci_pbm_info.0*, i32, i32, i32)* }
%struct.pci_pbm_info.0 = type opaque
%struct.msi_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.msi_msg = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@msi_irq = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.pci_dev*, %struct.msi_desc*)* @sparc64_setup_msi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc64_setup_msi_irq(i32* %0, %struct.pci_dev* %1, %struct.msi_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.msi_desc*, align 8
  %8 = alloca %struct.pci_pbm_info*, align 8
  %9 = alloca %struct.sparc64_msiq_ops*, align 8
  %10 = alloca %struct.msi_msg, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.msi_desc* %2, %struct.msi_desc** %7, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %17, align 8
  store %struct.pci_pbm_info* %18, %struct.pci_pbm_info** %8, align 8
  %19 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %20 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %19, i32 0, i32 4
  %21 = load %struct.sparc64_msiq_ops*, %struct.sparc64_msiq_ops** %20, align 8
  store %struct.sparc64_msiq_ops* %21, %struct.sparc64_msiq_ops** %9, align 8
  %22 = call i32 @virt_irq_alloc(i32 0, i32 0)
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %121

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @handle_simple_irq, align 4
  %34 = call i32 @set_irq_chip_and_handler_name(i32 %32, i32* @msi_irq, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %36 = call i32 @alloc_msi(%struct.pci_pbm_info* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %113

43:                                               ; preds = %30
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %46 = call i32 @pick_msiq(%struct.pci_pbm_info* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.sparc64_msiq_ops*, %struct.sparc64_msiq_ops** %9, align 8
  %48 = getelementptr inbounds %struct.sparc64_msiq_ops, %struct.sparc64_msiq_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.pci_pbm_info.0*, i32, i32, i32)*, i32 (%struct.pci_pbm_info.0*, i32, i32, i32)** %48, align 8
  %50 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %51 = bitcast %struct.pci_pbm_info* %50 to %struct.pci_pbm_info.0*
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %55 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = call i32 %49(%struct.pci_pbm_info.0* %51, i32 %52, i32 %53, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %43
  br label %109

65:                                               ; preds = %43
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %69 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %73 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  store i32 %67, i32* %77, align 4
  %78 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %79 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %65
  %84 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %85 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 32
  %88 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %10, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %90 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %10, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  br label %99

93:                                               ; preds = %65
  %94 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %10, i32 0, i32 0
  store i32 0, i32* %94, align 4
  %95 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %96 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %10, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %83
  %100 = load i32, i32* %11, align 4
  %101 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %10, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %105 = call i32 @set_irq_msi(i32 %103, %struct.msi_desc* %104)
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @write_msi_msg(i32 %107, %struct.msi_msg* %10)
  store i32 0, i32* %4, align 4
  br label %123

109:                                              ; preds = %64
  %110 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @free_msi(%struct.pci_pbm_info* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %42
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @set_irq_chip(i32 %115, i32* null)
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @virt_irq_free(i32 %118)
  %120 = load i32*, i32** %5, align 8
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %113, %29
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %99
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @virt_irq_alloc(i32, i32) #1

declare dso_local i32 @set_irq_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @alloc_msi(%struct.pci_pbm_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pick_msiq(%struct.pci_pbm_info*) #1

declare dso_local i32 @set_irq_msi(i32, %struct.msi_desc*) #1

declare dso_local i32 @write_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @free_msi(%struct.pci_pbm_info*, i32) #1

declare dso_local i32 @set_irq_chip(i32, i32*) #1

declare dso_local i32 @virt_irq_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
