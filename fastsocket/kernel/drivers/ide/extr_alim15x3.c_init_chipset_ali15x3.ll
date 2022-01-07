; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_alim15x3.c_init_chipset_ali15x3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_alim15x3.c_init_chipset_ali15x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, i32 }

@m5229_revision = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AL = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AL_M1533 = common dso_local global i32 0, align 4
@isa_dev = common dso_local global %struct.pci_dev* null, align 8
@chip_is_1543c_e = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @init_chipset_ali15x3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_chipset_ali15x3(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %10 = call %struct.pci_dev* @pci_get_slot(i32 %8, i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* @m5229_revision, align 4
  %14 = load i64, i64* @PCI_VENDOR_ID_AL, align 8
  %15 = load i32, i32* @PCI_DEVICE_ID_AL_M1533, align 4
  %16 = call %struct.pci_dev* @pci_get_device(i64 %14, i32 %15, i32* null)
  store %struct.pci_dev* %16, %struct.pci_dev** @isa_dev, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load i32, i32* @m5229_revision, align 4
  %20 = icmp slt i32 %19, 194
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @pci_read_config_byte(%struct.pci_dev* %22, i32 75, i32* %4)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 127
  %27 = call i32 @pci_write_config_byte(%struct.pci_dev* %24, i32 75, i32 %26)
  %28 = load i32, i32* @m5229_revision, align 4
  %29 = icmp sge i32 %28, 32
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load %struct.pci_dev*, %struct.pci_dev** @isa_dev, align 8
  %32 = icmp ne %struct.pci_dev* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.pci_dev*, %struct.pci_dev** @isa_dev, align 8
  %35 = call i32 @pci_read_config_byte(%struct.pci_dev* %34, i32 94, i32* %4)
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 30
  %38 = icmp eq i32 %37, 18
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* @chip_is_1543c_e, align 4
  br label %41

41:                                               ; preds = %33, %30, %21
  br label %85

42:                                               ; preds = %1
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i32 @pci_read_config_byte(%struct.pci_dev* %43, i32 75, i32* %4)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, 8
  %48 = call i32 @pci_write_config_byte(%struct.pci_dev* %45, i32 75, i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = icmp ne %struct.pci_dev* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCI_VENDOR_ID_AL, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %85

58:                                               ; preds = %51, %42
  %59 = load i32, i32* @m5229_revision, align 4
  %60 = icmp slt i32 %59, 197
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load %struct.pci_dev*, %struct.pci_dev** @isa_dev, align 8
  %63 = icmp ne %struct.pci_dev* %62, null
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = load %struct.pci_dev*, %struct.pci_dev** @isa_dev, align 8
  %66 = call i32 @pci_read_config_byte(%struct.pci_dev* %65, i32 121, i32* %4)
  %67 = load i32, i32* @m5229_revision, align 4
  %68 = icmp eq i32 %67, 194
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.pci_dev*, %struct.pci_dev** @isa_dev, align 8
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, 4
  %73 = call i32 @pci_write_config_byte(%struct.pci_dev* %70, i32 121, i32 %72)
  br label %83

74:                                               ; preds = %64
  %75 = load i32, i32* @m5229_revision, align 4
  %76 = icmp sge i32 %75, 195
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.pci_dev*, %struct.pci_dev** @isa_dev, align 8
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, 2
  %81 = call i32 @pci_write_config_byte(%struct.pci_dev* %78, i32 121, i32 %80)
  br label %82

82:                                               ; preds = %77, %74
  br label %83

83:                                               ; preds = %82, %69
  br label %84

84:                                               ; preds = %83, %61, %58
  br label %85

85:                                               ; preds = %84, %57, %41
  %86 = load i32, i32* @m5229_revision, align 4
  %87 = icmp sge i32 %86, 32
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %90 = call i32 @pci_read_config_byte(%struct.pci_dev* %89, i32 83, i32* %4)
  %91 = load i32, i32* @m5229_revision, align 4
  %92 = icmp sle i32 %91, 32
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, -3
  %96 = or i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %110

97:                                               ; preds = %88
  %98 = load i32, i32* @m5229_revision, align 4
  %99 = icmp eq i32 %98, 199
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @m5229_revision, align 4
  %102 = icmp eq i32 %101, 200
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, 3
  store i32 %105, i32* %4, align 4
  br label %109

106:                                              ; preds = %100
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %93
  %111 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @pci_write_config_byte(%struct.pci_dev* %111, i32 83, i32 %112)
  br label %114

114:                                              ; preds = %110, %85
  %115 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %116 = call i32 @pci_dev_put(%struct.pci_dev* %115)
  %117 = load %struct.pci_dev*, %struct.pci_dev** @isa_dev, align 8
  %118 = call i32 @pci_dev_put(%struct.pci_dev* %117)
  %119 = load i64, i64* %3, align 8
  %120 = call i32 @local_irq_restore(i64 %119)
  ret i32 0
}

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i64, i32, i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
