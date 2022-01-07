; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_ali.c_ali_init_chipset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_ali.c_ali_init_chipset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64 }

@PCI_VENDOR_ID_AL = common dso_local global i64 0, align 8
@ali_isa_bridge = common dso_local global %struct.pci_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ali_init_chipset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_init_chipset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sle i32 %7, 32
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @pci_read_config_byte(%struct.pci_dev* %10, i32 83, i32* %3)
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, 3
  store i32 %13, i32* %3, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pci_write_config_byte(%struct.pci_dev* %14, i32 83, i32 %15)
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_read_config_byte(%struct.pci_dev* %18, i32 74, i32* %3)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, 32
  %23 = call i32 @pci_write_config_byte(%struct.pci_dev* %20, i32 74, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_read_config_byte(%struct.pci_dev* %24, i32 75, i32* %3)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 194
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 127
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %17
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 194
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, 8
  %45 = call i32 @pci_write_config_byte(%struct.pci_dev* %42, i32 75, i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = call i32 @pci_read_config_byte(%struct.pci_dev* %46, i32 83, i32* %3)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 199
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, 3
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @pci_write_config_byte(%struct.pci_dev* %59, i32 83, i32 %60)
  br label %62

62:                                               ; preds = %58, %9
  %63 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %64 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 %63)
  store %struct.pci_dev* %64, %struct.pci_dev** %4, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = icmp ne %struct.pci_dev* %65, null
  br i1 %66, label %67, label %105

67:                                               ; preds = %62
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCI_VENDOR_ID_AL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %67
  %74 = load %struct.pci_dev*, %struct.pci_dev** @ali_isa_bridge, align 8
  %75 = icmp ne %struct.pci_dev* %74, null
  br i1 %75, label %76, label %105

76:                                               ; preds = %73
  %77 = load %struct.pci_dev*, %struct.pci_dev** @ali_isa_bridge, align 8
  %78 = call i32 @pci_read_config_byte(%struct.pci_dev* %77, i32 121, i32* %3)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 194
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.pci_dev*, %struct.pci_dev** @ali_isa_bridge, align 8
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, 4
  %87 = call i32 @pci_write_config_byte(%struct.pci_dev* %84, i32 121, i32 %86)
  br label %104

88:                                               ; preds = %76
  %89 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 194
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %96, 197
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.pci_dev*, %struct.pci_dev** @ali_isa_bridge, align 8
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, 2
  %102 = call i32 @pci_write_config_byte(%struct.pci_dev* %99, i32 121, i32 %101)
  br label %103

103:                                              ; preds = %98, %93, %88
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %104, %73, %67, %62
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = call i32 @pci_dev_put(%struct.pci_dev* %106)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %109 = call i32 @ata_pci_bmdma_clear_simplex(%struct.pci_dev* %108)
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @ata_pci_bmdma_clear_simplex(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
