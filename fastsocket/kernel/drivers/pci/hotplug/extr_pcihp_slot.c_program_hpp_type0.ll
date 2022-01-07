; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pcihp_slot.c_program_hpp_type0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pcihp_slot.c_program_hpp_type0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpp_type0 = type { i32, i64, i64, i32, i32 }
%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"using default PCI settings\0A\00", align 1
@pci_default_type0 = common dso_local global %struct.hpp_type0 zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"PCI settings rev %d not supported; using defaults\0A\00", align 1
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCI_SEC_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_SERR = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.hpp_type0*)* @program_hpp_type0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_hpp_type0(%struct.pci_dev* %0, %struct.hpp_type0* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hpp_type0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.hpp_type0* %1, %struct.hpp_type0** %4, align 8
  %7 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %8 = icmp ne %struct.hpp_type0* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i64 @pci_is_pcie(%struct.pci_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %126

14:                                               ; preds = %9
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = call i32 @dev_info(i32* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.hpp_type0* @pci_default_type0, %struct.hpp_type0** %4, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %20 = getelementptr inbounds %struct.hpp_type0, %struct.hpp_type0* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %27 = getelementptr inbounds %struct.hpp_type0, %struct.hpp_type0* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store %struct.hpp_type0* @pci_default_type0, %struct.hpp_type0** %4, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %33 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %34 = getelementptr inbounds %struct.hpp_type0, %struct.hpp_type0* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_write_config_byte(%struct.pci_dev* %31, i32 %32, i32 %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %39 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %40 = getelementptr inbounds %struct.hpp_type0, %struct.hpp_type0* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pci_write_config_byte(%struct.pci_dev* %37, i32 %38, i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load i32, i32* @PCI_COMMAND, align 4
  %45 = call i32 @pci_read_config_word(%struct.pci_dev* %43, i32 %44, i32* %5)
  %46 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %47 = getelementptr inbounds %struct.hpp_type0, %struct.hpp_type0* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %59

54:                                               ; preds = %30
  %55 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %61 = getelementptr inbounds %struct.hpp_type0, %struct.hpp_type0* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %73

68:                                               ; preds = %59
  %69 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = load i32, i32* @PCI_COMMAND, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @pci_write_config_word(%struct.pci_dev* %74, i32 %75, i32 %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 8
  %82 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %126

84:                                               ; preds = %73
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = load i32, i32* @PCI_SEC_LATENCY_TIMER, align 4
  %87 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %88 = getelementptr inbounds %struct.hpp_type0, %struct.hpp_type0* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pci_write_config_byte(%struct.pci_dev* %85, i32 %86, i32 %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %92 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %93 = call i32 @pci_read_config_word(%struct.pci_dev* %91, i32 %92, i32* %6)
  %94 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %95 = getelementptr inbounds %struct.hpp_type0, %struct.hpp_type0* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load i32, i32* @PCI_BRIDGE_CTL_SERR, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %107

102:                                              ; preds = %84
  %103 = load i32, i32* @PCI_BRIDGE_CTL_SERR, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %102, %98
  %108 = load %struct.hpp_type0*, %struct.hpp_type0** %4, align 8
  %109 = getelementptr inbounds %struct.hpp_type0, %struct.hpp_type0* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @PCI_BRIDGE_CTL_PARITY, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %121

116:                                              ; preds = %107
  %117 = load i32, i32* @PCI_BRIDGE_CTL_PARITY, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %6, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %116, %112
  %122 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %123 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @pci_write_config_word(%struct.pci_dev* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %13, %121, %73
  ret void
}

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
