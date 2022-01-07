; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_allocate_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_allocate_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, %struct.TYPE_2__*, %struct.resource* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32, i32, i32, i32, i64 }
%struct.pci_bus_region = type { i32, i32 }

@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@override_bios = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Preassigned resource %d busy or not available, reconfiguring...\0A\00", align 1
@BRIDGE_IO_MAX = common dso_local global i32 0, align 4
@BRIDGE_IO_ACC = common dso_local global i32 0, align 4
@BRIDGE_IO_MIN = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@BRIDGE_MEM_MAX = common dso_local global i32 0, align 4
@BRIDGE_MEM_ACC = common dso_local global i32 0, align 4
@BRIDGE_MEM_MIN = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"no resource of type %x available, trying to continue...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.yenta_socket*, i32, i32, i32, i32)* @yenta_allocate_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yenta_allocate_res(%struct.yenta_socket* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.yenta_socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca %struct.pci_bus_region, align 4
  %15 = alloca i32, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %17 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %12, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 2
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  %22 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %21, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %24, i64 %26
  store %struct.resource* %27, %struct.resource** %13, align 8
  %28 = load %struct.resource*, %struct.resource** %13, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %177

33:                                               ; preds = %5
  store i32 -4096, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IORESOURCE_IO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -4, i32* %15, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.resource*, %struct.resource** %13, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.resource*, %struct.resource** %13, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @config_readl(%struct.yenta_socket* %50, i32 %51)
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %52, %53
  %55 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @config_readl(%struct.yenta_socket* %56, i32 %57)
  %59 = load i32, i32* %15, align 4
  %60 = xor i32 %59, -1
  %61 = or i32 %58, %60
  %62 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %39
  %67 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ugt i32 %68, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %66
  %73 = load i32, i32* @override_bios, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %72
  %76 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %77 = load %struct.resource*, %struct.resource** %13, align 8
  %78 = call i32 @pcibios_bus_to_resource(%struct.pci_dev* %76, %struct.resource* %77, %struct.pci_bus_region* %14)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %80 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i64 @pci_claim_resource(%struct.pci_dev* %79, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %177

86:                                               ; preds = %75
  %87 = load i32, i32* @KERN_INFO, align 4
  %88 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @dev_printk(i32 %87, i32* %89, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %72, %66, %39
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @IORESOURCE_IO, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %92
  %98 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %99 = load %struct.resource*, %struct.resource** %13, align 8
  %100 = load i32, i32* @BRIDGE_IO_MAX, align 4
  %101 = call i64 @yenta_search_res(%struct.yenta_socket* %98, %struct.resource* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %97
  %104 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %105 = load %struct.resource*, %struct.resource** %13, align 8
  %106 = load i32, i32* @BRIDGE_IO_ACC, align 4
  %107 = call i64 @yenta_search_res(%struct.yenta_socket* %104, %struct.resource* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %111 = load %struct.resource*, %struct.resource** %13, align 8
  %112 = load i32, i32* @BRIDGE_IO_MIN, align 4
  %113 = call i64 @yenta_search_res(%struct.yenta_socket* %110, %struct.resource* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %103, %97
  store i32 1, i32* %6, align 4
  br label %177

116:                                              ; preds = %109
  br label %165

117:                                              ; preds = %92
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %117
  %123 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %124 = load %struct.resource*, %struct.resource** %13, align 8
  %125 = load i32, i32* @BRIDGE_MEM_MAX, align 4
  %126 = call i64 @yenta_search_res(%struct.yenta_socket* %123, %struct.resource* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %130 = load %struct.resource*, %struct.resource** %13, align 8
  %131 = load i32, i32* @BRIDGE_MEM_ACC, align 4
  %132 = call i64 @yenta_search_res(%struct.yenta_socket* %129, %struct.resource* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %136 = load %struct.resource*, %struct.resource** %13, align 8
  %137 = load i32, i32* @BRIDGE_MEM_MIN, align 4
  %138 = call i64 @yenta_search_res(%struct.yenta_socket* %135, %struct.resource* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %128, %122
  store i32 1, i32* %6, align 4
  br label %177

141:                                              ; preds = %134
  %142 = load i32, i32* @IORESOURCE_MEM, align 4
  %143 = load %struct.resource*, %struct.resource** %13, align 8
  %144 = getelementptr inbounds %struct.resource, %struct.resource* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %141, %117
  %146 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %147 = load %struct.resource*, %struct.resource** %13, align 8
  %148 = load i32, i32* @BRIDGE_MEM_MAX, align 4
  %149 = call i64 @yenta_search_res(%struct.yenta_socket* %146, %struct.resource* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %145
  %152 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %153 = load %struct.resource*, %struct.resource** %13, align 8
  %154 = load i32, i32* @BRIDGE_MEM_ACC, align 4
  %155 = call i64 @yenta_search_res(%struct.yenta_socket* %152, %struct.resource* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %159 = load %struct.resource*, %struct.resource** %13, align 8
  %160 = load i32, i32* @BRIDGE_MEM_MIN, align 4
  %161 = call i64 @yenta_search_res(%struct.yenta_socket* %158, %struct.resource* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157, %151, %145
  store i32 1, i32* %6, align 4
  br label %177

164:                                              ; preds = %157
  br label %165

165:                                              ; preds = %164, %116
  %166 = load i32, i32* @KERN_INFO, align 4
  %167 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %167, i32 0, i32 0
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @dev_printk(i32 %166, i32* %168, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  %171 = load %struct.resource*, %struct.resource** %13, align 8
  %172 = getelementptr inbounds %struct.resource, %struct.resource* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  %173 = load %struct.resource*, %struct.resource** %13, align 8
  %174 = getelementptr inbounds %struct.resource, %struct.resource* %173, i32 0, i32 2
  store i32 0, i32* %174, align 8
  %175 = load %struct.resource*, %struct.resource** %13, align 8
  %176 = getelementptr inbounds %struct.resource, %struct.resource* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  store i32 0, i32* %6, align 4
  br label %177

177:                                              ; preds = %165, %163, %140, %115, %85, %32
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @config_readl(%struct.yenta_socket*, i32) #1

declare dso_local i32 @pcibios_bus_to_resource(%struct.pci_dev*, %struct.resource*, %struct.pci_bus_region*) #1

declare dso_local i64 @pci_claim_resource(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i64 @yenta_search_res(%struct.yenta_socket*, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
