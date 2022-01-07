; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-res.c_pci_update_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-res.c_pci_update_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, %struct.resource* }
%struct.resource = type { i32 }
%struct.pci_bus_region = type { i32, i64 }
%struct.pci_dev_rh1 = type { i32 }

@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@PCI_REGION_FLAG_MASK = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_IO_MASK = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i64 0, align 8
@pci_bar_unknown = common dso_local global i32 0, align 4
@IORESOURCE_ROM_ENABLE = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS_ENABLE = common dso_local global i32 0, align 4
@IORESOURCE_MEM_64 = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BAR %d: error updating (%#08x != %#08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"BAR %d: error updating (high %#08x != %#08x)\0A\00", align 1
@IORESOURCE_UNSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"BAR %d: set to %pR (PCI address [%#llx-%#llx]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_update_resource(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus_region, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 2
  %16 = load %struct.resource*, %struct.resource** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %16, i64 %18
  store %struct.resource* %19, %struct.resource** %13, align 8
  %20 = load %struct.resource*, %struct.resource** %13, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %190

25:                                               ; preds = %2
  %26 = load %struct.resource*, %struct.resource** %13, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %190

33:                                               ; preds = %25
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load %struct.resource*, %struct.resource** %13, align 8
  %36 = call i32 @pcibios_resource_to_bus(%struct.pci_dev* %34, %struct.pci_bus_region* %5, %struct.resource* %35)
  %37 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.resource*, %struct.resource** %13, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PCI_REGION_FLAG_MASK, align 4
  %43 = and i32 %41, %42
  %44 = or i32 %38, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.resource*, %struct.resource** %13, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IORESOURCE_IO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %33
  %52 = load i64, i64* @PCI_BASE_ADDRESS_IO_MASK, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  br label %57

54:                                               ; preds = %33
  %55 = load i64, i64* @PCI_BASE_ADDRESS_MEM_MASK, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @pci_resource_bar(%struct.pci_dev* %58, i32 %59, i32* %12)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %190

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @pci_bar_unknown, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.resource*, %struct.resource** %13, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IORESOURCE_ROM_ENABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %190

76:                                               ; preds = %68
  %77 = load i32, i32* @PCI_ROM_ADDRESS_ENABLE, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %64
  %81 = load %struct.resource*, %struct.resource** %13, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.pci_dev_rh1*
  %92 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %87, %80
  %97 = phi i1 [ false, %80 ], [ %95, %87 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %103 = load i32, i32* @PCI_COMMAND, align 4
  %104 = call i32 @pci_read_config_word(%struct.pci_dev* %102, i32 %103, i32* %7)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %106 = load i32, i32* @PCI_COMMAND, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = call i32 @pci_write_config_word(%struct.pci_dev* %105, i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %101, %96
  %113 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @pci_write_config_dword(%struct.pci_dev* %113, i32 %114, i32 %115)
  %117 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @pci_read_config_dword(%struct.pci_dev* %117, i32 %118, i32* %9)
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = xor i32 %120, %121
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %112
  %127 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %112
  %134 = load %struct.resource*, %struct.resource** %13, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = ashr i32 %142, 16
  %144 = ashr i32 %143, 16
  store i32 %144, i32* %8, align 4
  %145 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @pci_write_config_dword(%struct.pci_dev* %145, i32 %147, i32 %148)
  %150 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 4
  %153 = call i32 @pci_read_config_dword(%struct.pci_dev* %150, i32 %152, i32* %9)
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %140
  %158 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @dev_err(i32* %159, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %157, %140
  br label %165

165:                                              ; preds = %164, %133
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %170 = load i32, i32* @PCI_COMMAND, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @pci_write_config_word(%struct.pci_dev* %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %165
  %174 = load i32, i32* @IORESOURCE_UNSET, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.resource*, %struct.resource** %13, align 8
  %177 = getelementptr inbounds %struct.resource, %struct.resource* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %181 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %180, i32 0, i32 0
  %182 = load i32, i32* %4, align 4
  %183 = load %struct.resource*, %struct.resource** %13, align 8
  %184 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @dev_info(i32* %181, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %182, %struct.resource* %183, i64 %186, i64 %188)
  br label %190

190:                                              ; preds = %173, %75, %63, %32, %24
  ret void
}

declare dso_local i32 @pcibios_resource_to_bus(%struct.pci_dev*, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_resource_bar(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, %struct.resource*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
