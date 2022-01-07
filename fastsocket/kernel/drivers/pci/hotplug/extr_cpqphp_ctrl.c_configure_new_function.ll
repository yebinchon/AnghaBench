; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_configure_new_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_configure_new_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.pci_bus* }
%struct.pci_bus = type { i32 }
%struct.pci_func = type { i32, i32, i32, i32, %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, i64, i64 }
%struct.pci_resource = type { i32, i32, %struct.pci_resource* }
%struct.resource_lists = type { %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, %struct.irq_mapping* }
%struct.irq_mapping = type { i32, i32*, i32 }

@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set Primary bus = %d\0A\00", align 1
@PCI_PRIMARY_BUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"find ranges of buses to use\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"set Secondary bus = %d\0A\00", align 1
@PCI_SECONDARY_BUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"set subordinate bus = %d\0A\00", align 1
@PCI_SUBORDINATE_BUS = common dso_local global i32 0, align 4
@PCI_SEC_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Setup the IO, memory, and prefetchable windows\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"io_node\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"(base, len, next) (%x, %x, %p)\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"mem_node\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"p_mem_node\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_IO_BASE = common dso_local global i32 0, align 4
@PCI_IO_LIMIT = common dso_local global i32 0, align 4
@PCI_MEMORY_BASE = common dso_local global i32 0, align 4
@PCI_MEMORY_LIMIT = common dso_local global i32 0, align 4
@PCI_PREF_MEMORY_BASE = common dso_local global i32 0, align 4
@PCI_PREF_MEMORY_LIMIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"configure_new_device rc=0x%x\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_NORMAL = common dso_local global i32 0, align 4
@PCI_BASE_CLASS_DISPLAY = common dso_local global i32 0, align 4
@DEVICE_TYPE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"CND: bus=%d, devfn=%d, offset=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"CND: base = 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"CND:      length = 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Got io_node start = %8.8x, length = %8.8x next (%p)\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"func (%p) io_head (%p)\0A\00", align 1
@NOT_ENOUGH_RESOURCES = common dso_local global i32 0, align 4
@cpqhp_legacy_mode = common dso_local global i64 0, align 8
@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@PCI_BASE_CLASS_STORAGE = common dso_local global i32 0, align 4
@cpqhp_disk_irq = common dso_local global i32 0, align 4
@cpqhp_nic_irq = common dso_local global i32 0, align 4
@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*, %struct.pci_func*, i32, %struct.resource_lists*)* @configure_new_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_new_function(%struct.controller* %0, %struct.pci_func* %1, i32 %2, %struct.resource_lists* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.controller*, align 8
  %7 = alloca %struct.pci_func*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource_lists*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.pci_resource*, align 8
  %24 = alloca %struct.pci_resource*, align 8
  %25 = alloca %struct.pci_resource*, align 8
  %26 = alloca %struct.pci_resource*, align 8
  %27 = alloca %struct.pci_resource*, align 8
  %28 = alloca %struct.pci_resource*, align 8
  %29 = alloca %struct.pci_resource*, align 8
  %30 = alloca %struct.pci_resource*, align 8
  %31 = alloca %struct.irq_mapping, align 8
  %32 = alloca %struct.pci_func*, align 8
  %33 = alloca %struct.pci_bus*, align 8
  %34 = alloca %struct.resource_lists, align 8
  store %struct.controller* %0, %struct.controller** %6, align 8
  store %struct.pci_func* %1, %struct.pci_func** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.resource_lists* %3, %struct.resource_lists** %9, align 8
  store i32 0, i32* %11, align 4
  %35 = load %struct.controller*, %struct.controller** %6, align 8
  %36 = getelementptr inbounds %struct.controller, %struct.controller* %35, i32 0, i32 0
  %37 = load %struct.pci_bus*, %struct.pci_bus** %36, align 8
  store %struct.pci_bus* %37, %struct.pci_bus** %33, align 8
  %38 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %39 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %42 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %44 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %47 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @PCI_DEVFN(i32 %45, i64 %48)
  store i32 %49, i32* %22, align 4
  %50 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %53 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %50, i32 %51, i32 %52, i32* %12)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %4
  %57 = load i32, i32* %18, align 4
  store i32 %57, i32* %5, align 4
  br label %1419

58:                                               ; preds = %4
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 127
  %61 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %1026

63:                                               ; preds = %58
  %64 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %65 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %71 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %72 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %68, i32 %69, i32 %70, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %18, align 4
  store i32 %78, i32* %5, align 4
  br label %1419

79:                                               ; preds = %63
  %80 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %82 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %81, i32 0, i32 3
  %83 = call %struct.pci_resource* @get_max_resource(%struct.pci_resource** %82, i32 1)
  store %struct.pci_resource* %83, %struct.pci_resource** %26, align 8
  %84 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %85 = icmp ne %struct.pci_resource* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %1419

89:                                               ; preds = %79
  %90 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %91 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %12, align 4
  %93 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %94 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* @PCI_SECONDARY_BUS, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load i32, i32* %18, align 4
  store i32 %105, i32* %5, align 4
  br label %1419

106:                                              ; preds = %89
  %107 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %108 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %111 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  %115 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %116 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %119 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = sub nsw i32 %121, 1
  %123 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* @PCI_SUBORDINATE_BUS, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %124, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %106
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %5, align 4
  br label %1419

133:                                              ; preds = %106
  store i32 64, i32* %12, align 4
  %134 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* @PCI_SEC_LATENCY_TIMER, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %134, i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %5, align 4
  br label %1419

143:                                              ; preds = %133
  %144 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %5, align 4
  br label %1419

153:                                              ; preds = %143
  store i32 8, i32* %12, align 4
  %154 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %154, i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %5, align 4
  br label %1419

163:                                              ; preds = %153
  %164 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %165 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %164, i32 0, i32 2
  %166 = call %struct.pci_resource* @get_max_resource(%struct.pci_resource** %165, i32 4096)
  store %struct.pci_resource* %166, %struct.pci_resource** %25, align 8
  %167 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %168 = icmp ne %struct.pci_resource* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %5, align 4
  br label %1419

172:                                              ; preds = %163
  %173 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %174 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %173, i32 0, i32 1
  %175 = call %struct.pci_resource* @get_max_resource(%struct.pci_resource** %174, i32 1048576)
  store %struct.pci_resource* %175, %struct.pci_resource** %23, align 8
  %176 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %177 = icmp ne %struct.pci_resource* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %1419

181:                                              ; preds = %172
  %182 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %183 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %182, i32 0, i32 0
  %184 = call %struct.pci_resource* @get_max_resource(%struct.pci_resource** %183, i32 1048576)
  store %struct.pci_resource* %184, %struct.pci_resource** %24, align 8
  %185 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %186 = icmp ne %struct.pci_resource* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %1419

190:                                              ; preds = %181
  %191 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %192 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %193 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %194 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %197 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %200 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %199, i32 0, i32 2
  %201 = load %struct.pci_resource*, %struct.pci_resource** %200, align 8
  %202 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %195, i32 %198, %struct.pci_resource* %201)
  %203 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %204 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %205 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %208 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %211 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %210, i32 0, i32 2
  %212 = load %struct.pci_resource*, %struct.pci_resource** %211, align 8
  %213 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %206, i32 %209, %struct.pci_resource* %212)
  %214 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %215 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %216 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %219 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %222 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %221, i32 0, i32 2
  %223 = load %struct.pci_resource*, %struct.pci_resource** %222, align 8
  %224 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %217, i32 %220, %struct.pci_resource* %223)
  %225 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %226 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %225, i32 0, i32 4
  %227 = load %struct.irq_mapping*, %struct.irq_mapping** %226, align 8
  %228 = icmp ne %struct.irq_mapping* %227, null
  br i1 %228, label %244, label %229

229:                                              ; preds = %190
  %230 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  store i32 0, i32* %230, align 8
  %231 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 0, i32* %233, align 4
  %234 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  store i32 0, i32* %236, align 4
  %237 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  store i32 0, i32* %239, align 4
  %240 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  store i32 0, i32* %242, align 4
  %243 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 2
  store i32 0, i32* %243, align 8
  br label %297

244:                                              ; preds = %190
  %245 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %246 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %245, i32 0, i32 4
  %247 = load %struct.irq_mapping*, %struct.irq_mapping** %246, align 8
  %248 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  store i32 %249, i32* %250, align 8
  %251 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %252 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %251, i32 0, i32 4
  %253 = load %struct.irq_mapping*, %struct.irq_mapping** %252, align 8
  %254 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  store i32 %257, i32* %260, align 4
  %261 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %262 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %261, i32 0, i32 4
  %263 = load %struct.irq_mapping*, %struct.irq_mapping** %262, align 8
  %264 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  store i32 %267, i32* %270, align 4
  %271 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %272 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %271, i32 0, i32 4
  %273 = load %struct.irq_mapping*, %struct.irq_mapping** %272, align 8
  %274 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 2
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  store i32 %277, i32* %280, align 4
  %281 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %282 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %281, i32 0, i32 4
  %283 = load %struct.irq_mapping*, %struct.irq_mapping** %282, align 8
  %284 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 3
  %287 = load i32, i32* %286, align 4
  %288 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 3
  store i32 %287, i32* %290, align 4
  %291 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %292 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %291, i32 0, i32 4
  %293 = load %struct.irq_mapping*, %struct.irq_mapping** %292, align 8
  %294 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 2
  store i32 %295, i32* %296, align 8
  br label %297

297:                                              ; preds = %244, %229
  %298 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %299 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  store %struct.pci_resource* %298, %struct.pci_resource** %299, align 8
  %300 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %301 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 2
  store %struct.pci_resource* %300, %struct.pci_resource** %301, align 8
  %302 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %303 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 1
  store %struct.pci_resource* %302, %struct.pci_resource** %303, align 8
  %304 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %305 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 0
  store %struct.pci_resource* %304, %struct.pci_resource** %305, align 8
  %306 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 4
  store %struct.irq_mapping* %31, %struct.irq_mapping** %306, align 8
  %307 = load i32, i32* @GFP_KERNEL, align 4
  %308 = call %struct.pci_resource* @kmalloc(i32 16, i32 %307)
  store %struct.pci_resource* %308, %struct.pci_resource** %30, align 8
  %309 = load i32, i32* @GFP_KERNEL, align 4
  %310 = call %struct.pci_resource* @kmalloc(i32 16, i32 %309)
  store %struct.pci_resource* %310, %struct.pci_resource** %29, align 8
  %311 = load i32, i32* @GFP_KERNEL, align 4
  %312 = call %struct.pci_resource* @kmalloc(i32 16, i32 %311)
  store %struct.pci_resource* %312, %struct.pci_resource** %27, align 8
  %313 = load i32, i32* @GFP_KERNEL, align 4
  %314 = call %struct.pci_resource* @kmalloc(i32 16, i32 %313)
  store %struct.pci_resource* %314, %struct.pci_resource** %28, align 8
  %315 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %316 = icmp ne %struct.pci_resource* %315, null
  br i1 %316, label %317, label %326

317:                                              ; preds = %297
  %318 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %319 = icmp ne %struct.pci_resource* %318, null
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %322 = icmp ne %struct.pci_resource* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %325 = icmp ne %struct.pci_resource* %324, null
  br i1 %325, label %335, label %326

326:                                              ; preds = %323, %320, %317, %297
  %327 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %328 = call i32 @kfree(%struct.pci_resource* %327)
  %329 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %330 = call i32 @kfree(%struct.pci_resource* %329)
  %331 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %332 = call i32 @kfree(%struct.pci_resource* %331)
  %333 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %334 = call i32 @kfree(%struct.pci_resource* %333)
  store i32 1, i32* %5, align 4
  br label %1419

335:                                              ; preds = %323
  %336 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %337 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %338 = call i32 @memcpy(%struct.pci_resource* %336, %struct.pci_resource* %337, i32 16)
  %339 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %340 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 8
  %343 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %344 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = sub nsw i32 %345, 1
  store i32 %346, i32* %344, align 4
  %347 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %348 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %347, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %348, align 8
  %349 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %350 = icmp ne %struct.pci_resource* %349, null
  br i1 %350, label %351, label %380

351:                                              ; preds = %335
  %352 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %353 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %354 = call i32 @memcpy(%struct.pci_resource* %352, %struct.pci_resource* %353, i32 16)
  %355 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %356 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %355, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %356, align 8
  %357 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %358 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = ashr i32 %359, 8
  store i32 %360, i32* %12, align 4
  %361 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %362 = load i32, i32* %22, align 4
  %363 = load i32, i32* @PCI_IO_BASE, align 4
  %364 = load i32, i32* %12, align 4
  %365 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %361, i32 %362, i32 %363, i32 %364)
  store i32 %365, i32* %18, align 4
  %366 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %367 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %370 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = add nsw i32 %368, %371
  %373 = sub nsw i32 %372, 1
  %374 = ashr i32 %373, 8
  store i32 %374, i32* %12, align 4
  %375 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %376 = load i32, i32* %22, align 4
  %377 = load i32, i32* @PCI_IO_LIMIT, align 4
  %378 = load i32, i32* %12, align 4
  %379 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %375, i32 %376, i32 %377, i32 %378)
  store i32 %379, i32* %18, align 4
  br label %383

380:                                              ; preds = %335
  %381 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %382 = call i32 @kfree(%struct.pci_resource* %381)
  store %struct.pci_resource* null, %struct.pci_resource** %29, align 8
  br label %383

383:                                              ; preds = %380, %351
  %384 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %385 = icmp ne %struct.pci_resource* %384, null
  br i1 %385, label %386, label %415

386:                                              ; preds = %383
  %387 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %388 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %389 = call i32 @memcpy(%struct.pci_resource* %387, %struct.pci_resource* %388, i32 16)
  %390 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %391 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %390, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %391, align 8
  %392 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %393 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = ashr i32 %394, 16
  store i32 %395, i32* %16, align 4
  %396 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %397 = load i32, i32* %22, align 4
  %398 = load i32, i32* @PCI_MEMORY_BASE, align 4
  %399 = load i32, i32* %16, align 4
  %400 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %396, i32 %397, i32 %398, i32 %399)
  store i32 %400, i32* %18, align 4
  %401 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %402 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %405 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %403, %406
  %408 = sub nsw i32 %407, 1
  %409 = ashr i32 %408, 16
  store i32 %409, i32* %16, align 4
  %410 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %411 = load i32, i32* %22, align 4
  %412 = load i32, i32* @PCI_MEMORY_LIMIT, align 4
  %413 = load i32, i32* %16, align 4
  %414 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %410, i32 %411, i32 %412, i32 %413)
  store i32 %414, i32* %18, align 4
  br label %428

415:                                              ; preds = %383
  store i32 65535, i32* %16, align 4
  %416 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %417 = load i32, i32* %22, align 4
  %418 = load i32, i32* @PCI_MEMORY_BASE, align 4
  %419 = load i32, i32* %16, align 4
  %420 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %416, i32 %417, i32 %418, i32 %419)
  store i32 %420, i32* %18, align 4
  store i32 0, i32* %16, align 4
  %421 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %422 = load i32, i32* %22, align 4
  %423 = load i32, i32* @PCI_MEMORY_LIMIT, align 4
  %424 = load i32, i32* %16, align 4
  %425 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %421, i32 %422, i32 %423, i32 %424)
  store i32 %425, i32* %18, align 4
  %426 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %427 = call i32 @kfree(%struct.pci_resource* %426)
  store %struct.pci_resource* null, %struct.pci_resource** %27, align 8
  br label %428

428:                                              ; preds = %415, %386
  %429 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %430 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %431 = call i32 @memcpy(%struct.pci_resource* %429, %struct.pci_resource* %430, i32 16)
  %432 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %433 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %432, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %433, align 8
  %434 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %435 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = ashr i32 %436, 16
  store i32 %437, i32* %16, align 4
  %438 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %439 = load i32, i32* %22, align 4
  %440 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %441 = load i32, i32* %16, align 4
  %442 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %438, i32 %439, i32 %440, i32 %441)
  store i32 %442, i32* %18, align 4
  %443 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %444 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %447 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = add nsw i32 %445, %448
  %450 = sub nsw i32 %449, 1
  %451 = ashr i32 %450, 16
  store i32 %451, i32* %16, align 4
  %452 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %453 = load i32, i32* %22, align 4
  %454 = load i32, i32* @PCI_PREF_MEMORY_LIMIT, align 4
  %455 = load i32, i32* %16, align 4
  %456 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %452, i32 %453, i32 %454, i32 %455)
  store i32 %456, i32* %18, align 4
  %457 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = add nsw i32 %458, -1
  store i32 %459, i32* %457, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %460

460:                                              ; preds = %522, %428
  %461 = load i32, i32* %13, align 4
  %462 = icmp sle i32 %461, 31
  br i1 %462, label %463, label %467

463:                                              ; preds = %460
  %464 = load i32, i32* %18, align 4
  %465 = icmp ne i32 %464, 0
  %466 = xor i1 %465, true
  br label %467

467:                                              ; preds = %463, %460
  %468 = phi i1 [ false, %460 ], [ %466, %463 ]
  br i1 %468, label %469, label %525

469:                                              ; preds = %467
  %470 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = add nsw i32 %471, 1
  %473 = and i32 %472, 3
  %474 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 0
  store i32 %473, i32* %474, align 8
  store i32 -1, i32* %21, align 4
  %475 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %476 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %479 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %478, i32 0, i32 0
  store i32 %477, i32* %479, align 4
  %480 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %481 = load i32, i32* %13, align 4
  %482 = call i32 @PCI_DEVFN(i32 %481, i64 0)
  %483 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %480, i32 %482, i32 0, i32* %21)
  %484 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %485 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %488 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %487, i32 0, i32 0
  store i32 %486, i32* %488, align 4
  %489 = load i32, i32* %21, align 4
  %490 = icmp ne i32 %489, -1
  br i1 %490, label %491, label %521

491:                                              ; preds = %469
  %492 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %493 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = call %struct.pci_func* @cpqhp_slot_create(i32 %494)
  store %struct.pci_func* %495, %struct.pci_func** %32, align 8
  %496 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %497 = icmp eq %struct.pci_func* %496, null
  br i1 %497, label %498, label %501

498:                                              ; preds = %491
  %499 = load i32, i32* @ENOMEM, align 4
  %500 = sub nsw i32 0, %499
  store i32 %500, i32* %18, align 4
  br label %522

501:                                              ; preds = %491
  %502 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %503 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %506 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %505, i32 0, i32 0
  store i32 %504, i32* %506, align 8
  %507 = load i32, i32* %13, align 4
  %508 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %509 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %508, i32 0, i32 1
  store i32 %507, i32* %509, align 4
  %510 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %511 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %510, i32 0, i32 9
  store i64 0, i64* %511, align 8
  %512 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %513 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %512, i32 0, i32 2
  store i32 1, i32* %513, align 8
  %514 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %515 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %514, i32 0, i32 8
  store i64 0, i64* %515, align 8
  %516 = load %struct.controller*, %struct.controller** %6, align 8
  %517 = load %struct.pci_func*, %struct.pci_func** %32, align 8
  %518 = call i32 @configure_new_device(%struct.controller* %516, %struct.pci_func* %517, i32 1, %struct.resource_lists* %34)
  store i32 %518, i32* %18, align 4
  %519 = load i32, i32* %18, align 4
  %520 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %519)
  br label %521

521:                                              ; preds = %501, %469
  br label %522

522:                                              ; preds = %521, %498
  %523 = load i32, i32* %13, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %13, align 4
  br label %460

525:                                              ; preds = %467
  %526 = load i32, i32* %18, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %525
  br label %1400

529:                                              ; preds = %525
  %530 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %531 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %530, i32 0, i32 4
  %532 = load %struct.irq_mapping*, %struct.irq_mapping** %531, align 8
  %533 = icmp ne %struct.irq_mapping* %532, null
  br i1 %533, label %534, label %581

534:                                              ; preds = %529
  %535 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %536 = load i32*, i32** %535, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 0
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %540 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %539, i32 0, i32 4
  %541 = load %struct.irq_mapping*, %struct.irq_mapping** %540, align 8
  %542 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %541, i32 0, i32 1
  %543 = load i32*, i32** %542, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 0
  store i32 %538, i32* %544, align 4
  %545 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %546 = load i32*, i32** %545, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 1
  %548 = load i32, i32* %547, align 4
  %549 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %550 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %549, i32 0, i32 4
  %551 = load %struct.irq_mapping*, %struct.irq_mapping** %550, align 8
  %552 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %551, i32 0, i32 1
  %553 = load i32*, i32** %552, align 8
  %554 = getelementptr inbounds i32, i32* %553, i64 1
  store i32 %548, i32* %554, align 4
  %555 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %556 = load i32*, i32** %555, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 2
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %560 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %559, i32 0, i32 4
  %561 = load %struct.irq_mapping*, %struct.irq_mapping** %560, align 8
  %562 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %561, i32 0, i32 1
  %563 = load i32*, i32** %562, align 8
  %564 = getelementptr inbounds i32, i32* %563, i64 2
  store i32 %558, i32* %564, align 4
  %565 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 3
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %570 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %569, i32 0, i32 4
  %571 = load %struct.irq_mapping*, %struct.irq_mapping** %570, align 8
  %572 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %571, i32 0, i32 1
  %573 = load i32*, i32** %572, align 8
  %574 = getelementptr inbounds i32, i32* %573, i64 3
  store i32 %568, i32* %574, align 4
  %575 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 2
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %578 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %577, i32 0, i32 4
  %579 = load %struct.irq_mapping*, %struct.irq_mapping** %578, align 8
  %580 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %579, i32 0, i32 2
  store i32 %576, i32* %580, align 8
  br label %621

581:                                              ; preds = %529
  %582 = load i32, i32* %8, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %620, label %584

584:                                              ; preds = %581
  store i32 0, i32* %10, align 4
  br label %585

585:                                              ; preds = %616, %584
  %586 = load i32, i32* %10, align 4
  %587 = icmp slt i32 %586, 4
  br i1 %587, label %588, label %619

588:                                              ; preds = %585
  %589 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 2
  %590 = load i32, i32* %589, align 8
  %591 = load i32, i32* %10, align 4
  %592 = shl i32 1, %591
  %593 = and i32 %590, %592
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %615

595:                                              ; preds = %588
  %596 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %597 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %600 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = load i32, i32* %10, align 4
  %603 = add nsw i32 %602, 1
  %604 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %31, i32 0, i32 1
  %605 = load i32*, i32** %604, align 8
  %606 = load i32, i32* %10, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %605, i64 %607
  %609 = load i32, i32* %608, align 4
  %610 = call i32 @cpqhp_set_irq(i32 %598, i32 %601, i32 %603, i32 %609)
  store i32 %610, i32* %18, align 4
  %611 = load i32, i32* %18, align 4
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %595
  br label %1400

614:                                              ; preds = %595
  br label %615

615:                                              ; preds = %614, %588
  br label %616

616:                                              ; preds = %615
  %617 = load i32, i32* %10, align 4
  %618 = add nsw i32 %617, 1
  store i32 %618, i32* %10, align 4
  br label %585

619:                                              ; preds = %585
  br label %620

620:                                              ; preds = %619, %581
  br label %621

621:                                              ; preds = %620, %534
  %622 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %623 = icmp ne %struct.pci_resource* %622, null
  br i1 %623, label %624, label %676

624:                                              ; preds = %621
  %625 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %626 = icmp ne %struct.pci_resource* %625, null
  br i1 %626, label %627, label %676

627:                                              ; preds = %624
  %628 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %629 = load %struct.pci_resource*, %struct.pci_resource** %628, align 8
  %630 = icmp ne %struct.pci_resource* %629, null
  br i1 %630, label %631, label %676

631:                                              ; preds = %627
  %632 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  %633 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %636 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = sub nsw i32 %634, %637
  %639 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %640 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %639, i32 0, i32 1
  store i32 %638, i32* %640, align 4
  %641 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %642 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %641, i32 0, i32 7
  %643 = load %struct.pci_resource*, %struct.pci_resource** %642, align 8
  %644 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %645 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %644, i32 0, i32 2
  store %struct.pci_resource* %643, %struct.pci_resource** %645, align 8
  %646 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %647 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %648 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %647, i32 0, i32 7
  store %struct.pci_resource* %646, %struct.pci_resource** %648, align 8
  %649 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %650 = load %struct.pci_resource*, %struct.pci_resource** %649, align 8
  %651 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = sub nsw i32 %652, 1
  store i32 %653, i32* %12, align 4
  %654 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %655 = load i32, i32* %22, align 4
  %656 = load i32, i32* @PCI_SUBORDINATE_BUS, align 4
  %657 = load i32, i32* %12, align 4
  %658 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %654, i32 %655, i32 %656, i32 %657)
  store i32 %658, i32* %18, align 4
  %659 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %660 = load %struct.pci_resource*, %struct.pci_resource** %659, align 8
  %661 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 4
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %669

664:                                              ; preds = %631
  %665 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %666 = load %struct.pci_resource*, %struct.pci_resource** %665, align 8
  %667 = call i32 @kfree(%struct.pci_resource* %666)
  %668 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  store %struct.pci_resource* null, %struct.pci_resource** %668, align 8
  br label %675

669:                                              ; preds = %631
  %670 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %671 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %670, i32 0, i32 3
  %672 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 3
  %673 = load %struct.pci_resource*, %struct.pci_resource** %672, align 8
  %674 = call i32 @return_resource(%struct.pci_resource** %671, %struct.pci_resource* %673)
  br label %675

675:                                              ; preds = %669, %664
  br label %676

676:                                              ; preds = %675, %627, %624, %621
  %677 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %678 = icmp ne %struct.pci_resource* %677, null
  br i1 %678, label %679, label %776

679:                                              ; preds = %676
  %680 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 2
  %681 = load %struct.pci_resource*, %struct.pci_resource** %680, align 8
  %682 = icmp ne %struct.pci_resource* %681, null
  br i1 %682, label %683, label %776

683:                                              ; preds = %679
  %684 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 2
  %685 = call %struct.pci_resource* @do_pre_bridge_resource_split(%struct.pci_resource** %684, %struct.pci_resource** %29, i32 4096)
  store %struct.pci_resource* %685, %struct.pci_resource** %25, align 8
  %686 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %687 = icmp ne %struct.pci_resource* %686, null
  br i1 %687, label %688, label %711

688:                                              ; preds = %683
  %689 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %690 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 8
  %692 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %693 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %692, i32 0, i32 1
  %694 = load i32, i32* %693, align 4
  %695 = add nsw i32 %691, %694
  %696 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %697 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %696, i32 0, i32 0
  store i32 %695, i32* %697, align 8
  %698 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %699 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 8
  %701 = ashr i32 %700, 8
  store i32 %701, i32* %12, align 4
  %702 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %703 = load i32, i32* %22, align 4
  %704 = load i32, i32* @PCI_IO_BASE, align 4
  %705 = load i32, i32* %12, align 4
  %706 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %702, i32 %703, i32 %704, i32 %705)
  store i32 %706, i32* %18, align 4
  %707 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %708 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %707, i32 0, i32 2
  %709 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %710 = call i32 @return_resource(%struct.pci_resource** %708, %struct.pci_resource* %709)
  br label %711

711:                                              ; preds = %688, %683
  %712 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 2
  %713 = call %struct.pci_resource* @do_bridge_resource_split(%struct.pci_resource** %712, i32 4096)
  store %struct.pci_resource* %713, %struct.pci_resource** %25, align 8
  %714 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %715 = icmp ne %struct.pci_resource* %714, null
  br i1 %715, label %716, label %766

716:                                              ; preds = %711
  %717 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %718 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %717, i32 0, i32 0
  %719 = load i32, i32* %718, align 8
  %720 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %721 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 8
  %723 = sub nsw i32 %719, %722
  %724 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %725 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %724, i32 0, i32 1
  store i32 %723, i32* %725, align 4
  %726 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %727 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 4
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %730, label %753

730:                                              ; preds = %716
  %731 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %732 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %731, i32 0, i32 6
  %733 = load %struct.pci_resource*, %struct.pci_resource** %732, align 8
  %734 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %735 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %734, i32 0, i32 2
  store %struct.pci_resource* %733, %struct.pci_resource** %735, align 8
  %736 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %737 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %738 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %737, i32 0, i32 6
  store %struct.pci_resource* %736, %struct.pci_resource** %738, align 8
  %739 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %740 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %739, i32 0, i32 0
  %741 = load i32, i32* %740, align 8
  %742 = sub nsw i32 %741, 1
  %743 = ashr i32 %742, 8
  store i32 %743, i32* %12, align 4
  %744 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %745 = load i32, i32* %22, align 4
  %746 = load i32, i32* @PCI_IO_LIMIT, align 4
  %747 = load i32, i32* %12, align 4
  %748 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %744, i32 %745, i32 %746, i32 %747)
  store i32 %748, i32* %18, align 4
  %749 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %750 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %749, i32 0, i32 2
  %751 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %752 = call i32 @return_resource(%struct.pci_resource** %750, %struct.pci_resource* %751)
  br label %765

753:                                              ; preds = %716
  store i32 0, i32* %16, align 4
  %754 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %755 = load i32, i32* %22, align 4
  %756 = load i32, i32* @PCI_IO_LIMIT, align 4
  %757 = load i32, i32* %16, align 4
  %758 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %754, i32 %755, i32 %756, i32 %757)
  store i32 %758, i32* %18, align 4
  %759 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %760 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %759, i32 0, i32 2
  %761 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %762 = call i32 @return_resource(%struct.pci_resource** %760, %struct.pci_resource* %761)
  %763 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %764 = call i32 @kfree(%struct.pci_resource* %763)
  br label %765

765:                                              ; preds = %753, %730
  br label %775

766:                                              ; preds = %711
  %767 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %768 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %767, i32 0, i32 6
  %769 = load %struct.pci_resource*, %struct.pci_resource** %768, align 8
  %770 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %771 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %770, i32 0, i32 2
  store %struct.pci_resource* %769, %struct.pci_resource** %771, align 8
  %772 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %773 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %774 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %773, i32 0, i32 6
  store %struct.pci_resource* %772, %struct.pci_resource** %774, align 8
  br label %775

775:                                              ; preds = %766, %765
  br label %789

776:                                              ; preds = %679, %676
  %777 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %778 = icmp ne %struct.pci_resource* %777, null
  br i1 %778, label %779, label %788

779:                                              ; preds = %776
  %780 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %781 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %780, i32 0, i32 6
  %782 = load %struct.pci_resource*, %struct.pci_resource** %781, align 8
  %783 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %784 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %783, i32 0, i32 2
  store %struct.pci_resource* %782, %struct.pci_resource** %784, align 8
  %785 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %786 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %787 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %786, i32 0, i32 6
  store %struct.pci_resource* %785, %struct.pci_resource** %787, align 8
  br label %788

788:                                              ; preds = %779, %776
  br label %789

789:                                              ; preds = %788, %775
  %790 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %791 = icmp ne %struct.pci_resource* %790, null
  br i1 %791, label %792, label %889

792:                                              ; preds = %789
  %793 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 1
  %794 = load %struct.pci_resource*, %struct.pci_resource** %793, align 8
  %795 = icmp ne %struct.pci_resource* %794, null
  br i1 %795, label %796, label %889

796:                                              ; preds = %792
  %797 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 1
  %798 = call %struct.pci_resource* @do_pre_bridge_resource_split(%struct.pci_resource** %797, %struct.pci_resource** %27, i32 1048576)
  store %struct.pci_resource* %798, %struct.pci_resource** %23, align 8
  %799 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %800 = icmp ne %struct.pci_resource* %799, null
  br i1 %800, label %801, label %824

801:                                              ; preds = %796
  %802 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %803 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 8
  %805 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %806 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %805, i32 0, i32 1
  %807 = load i32, i32* %806, align 4
  %808 = add nsw i32 %804, %807
  %809 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %810 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %809, i32 0, i32 0
  store i32 %808, i32* %810, align 8
  %811 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %812 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 8
  %814 = ashr i32 %813, 16
  store i32 %814, i32* %16, align 4
  %815 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %816 = load i32, i32* %22, align 4
  %817 = load i32, i32* @PCI_MEMORY_BASE, align 4
  %818 = load i32, i32* %16, align 4
  %819 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %815, i32 %816, i32 %817, i32 %818)
  store i32 %819, i32* %18, align 4
  %820 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %821 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %820, i32 0, i32 1
  %822 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %823 = call i32 @return_resource(%struct.pci_resource** %821, %struct.pci_resource* %822)
  br label %824

824:                                              ; preds = %801, %796
  %825 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 1
  %826 = call %struct.pci_resource* @do_bridge_resource_split(%struct.pci_resource** %825, i32 1048576)
  store %struct.pci_resource* %826, %struct.pci_resource** %23, align 8
  %827 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %828 = icmp ne %struct.pci_resource* %827, null
  br i1 %828, label %829, label %879

829:                                              ; preds = %824
  %830 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %831 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %830, i32 0, i32 0
  %832 = load i32, i32* %831, align 8
  %833 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %834 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %833, i32 0, i32 0
  %835 = load i32, i32* %834, align 8
  %836 = sub nsw i32 %832, %835
  %837 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %838 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %837, i32 0, i32 1
  store i32 %836, i32* %838, align 4
  %839 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %840 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %839, i32 0, i32 1
  %841 = load i32, i32* %840, align 4
  %842 = icmp ne i32 %841, 0
  br i1 %842, label %843, label %866

843:                                              ; preds = %829
  %844 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %845 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %844, i32 0, i32 4
  %846 = load %struct.pci_resource*, %struct.pci_resource** %845, align 8
  %847 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %848 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %847, i32 0, i32 2
  store %struct.pci_resource* %846, %struct.pci_resource** %848, align 8
  %849 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %850 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %851 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %850, i32 0, i32 4
  store %struct.pci_resource* %849, %struct.pci_resource** %851, align 8
  %852 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %853 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %852, i32 0, i32 0
  %854 = load i32, i32* %853, align 8
  %855 = sub nsw i32 %854, 1
  %856 = ashr i32 %855, 16
  store i32 %856, i32* %16, align 4
  %857 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %858 = load i32, i32* %22, align 4
  %859 = load i32, i32* @PCI_MEMORY_LIMIT, align 4
  %860 = load i32, i32* %16, align 4
  %861 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %857, i32 %858, i32 %859, i32 %860)
  store i32 %861, i32* %18, align 4
  %862 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %863 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %862, i32 0, i32 1
  %864 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %865 = call i32 @return_resource(%struct.pci_resource** %863, %struct.pci_resource* %864)
  br label %878

866:                                              ; preds = %829
  store i32 0, i32* %16, align 4
  %867 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %868 = load i32, i32* %22, align 4
  %869 = load i32, i32* @PCI_MEMORY_LIMIT, align 4
  %870 = load i32, i32* %16, align 4
  %871 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %867, i32 %868, i32 %869, i32 %870)
  store i32 %871, i32* %18, align 4
  %872 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %873 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %872, i32 0, i32 1
  %874 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %875 = call i32 @return_resource(%struct.pci_resource** %873, %struct.pci_resource* %874)
  %876 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %877 = call i32 @kfree(%struct.pci_resource* %876)
  br label %878

878:                                              ; preds = %866, %843
  br label %888

879:                                              ; preds = %824
  %880 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %881 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %880, i32 0, i32 4
  %882 = load %struct.pci_resource*, %struct.pci_resource** %881, align 8
  %883 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %884 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %883, i32 0, i32 2
  store %struct.pci_resource* %882, %struct.pci_resource** %884, align 8
  %885 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %886 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %887 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %886, i32 0, i32 4
  store %struct.pci_resource* %885, %struct.pci_resource** %887, align 8
  br label %888

888:                                              ; preds = %879, %878
  br label %902

889:                                              ; preds = %792, %789
  %890 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %891 = icmp ne %struct.pci_resource* %890, null
  br i1 %891, label %892, label %901

892:                                              ; preds = %889
  %893 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %894 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %893, i32 0, i32 4
  %895 = load %struct.pci_resource*, %struct.pci_resource** %894, align 8
  %896 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %897 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %896, i32 0, i32 2
  store %struct.pci_resource* %895, %struct.pci_resource** %897, align 8
  %898 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %899 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %900 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %899, i32 0, i32 4
  store %struct.pci_resource* %898, %struct.pci_resource** %900, align 8
  br label %901

901:                                              ; preds = %892, %889
  br label %902

902:                                              ; preds = %901, %888
  %903 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %904 = icmp ne %struct.pci_resource* %903, null
  br i1 %904, label %905, label %1002

905:                                              ; preds = %902
  %906 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 0
  %907 = load %struct.pci_resource*, %struct.pci_resource** %906, align 8
  %908 = icmp ne %struct.pci_resource* %907, null
  br i1 %908, label %909, label %1002

909:                                              ; preds = %905
  %910 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 0
  %911 = call %struct.pci_resource* @do_pre_bridge_resource_split(%struct.pci_resource** %910, %struct.pci_resource** %28, i32 1048576)
  store %struct.pci_resource* %911, %struct.pci_resource** %24, align 8
  %912 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %913 = icmp ne %struct.pci_resource* %912, null
  br i1 %913, label %914, label %937

914:                                              ; preds = %909
  %915 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %916 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %915, i32 0, i32 0
  %917 = load i32, i32* %916, align 8
  %918 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %919 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %918, i32 0, i32 1
  %920 = load i32, i32* %919, align 4
  %921 = add nsw i32 %917, %920
  %922 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %923 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %922, i32 0, i32 0
  store i32 %921, i32* %923, align 8
  %924 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %925 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %924, i32 0, i32 0
  %926 = load i32, i32* %925, align 8
  %927 = ashr i32 %926, 16
  store i32 %927, i32* %16, align 4
  %928 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %929 = load i32, i32* %22, align 4
  %930 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %931 = load i32, i32* %16, align 4
  %932 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %928, i32 %929, i32 %930, i32 %931)
  store i32 %932, i32* %18, align 4
  %933 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %934 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %933, i32 0, i32 0
  %935 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %936 = call i32 @return_resource(%struct.pci_resource** %934, %struct.pci_resource* %935)
  br label %937

937:                                              ; preds = %914, %909
  %938 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %34, i32 0, i32 0
  %939 = call %struct.pci_resource* @do_bridge_resource_split(%struct.pci_resource** %938, i32 1048576)
  store %struct.pci_resource* %939, %struct.pci_resource** %24, align 8
  %940 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %941 = icmp ne %struct.pci_resource* %940, null
  br i1 %941, label %942, label %992

942:                                              ; preds = %937
  %943 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %944 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %943, i32 0, i32 0
  %945 = load i32, i32* %944, align 8
  %946 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %947 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %946, i32 0, i32 0
  %948 = load i32, i32* %947, align 8
  %949 = sub nsw i32 %945, %948
  %950 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %951 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %950, i32 0, i32 1
  store i32 %949, i32* %951, align 4
  %952 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %953 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %952, i32 0, i32 1
  %954 = load i32, i32* %953, align 4
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %979

956:                                              ; preds = %942
  %957 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %958 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %957, i32 0, i32 5
  %959 = load %struct.pci_resource*, %struct.pci_resource** %958, align 8
  %960 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %961 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %960, i32 0, i32 2
  store %struct.pci_resource* %959, %struct.pci_resource** %961, align 8
  %962 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %963 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %964 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %963, i32 0, i32 5
  store %struct.pci_resource* %962, %struct.pci_resource** %964, align 8
  %965 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %966 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %965, i32 0, i32 0
  %967 = load i32, i32* %966, align 8
  %968 = sub nsw i32 %967, 1
  %969 = ashr i32 %968, 16
  store i32 %969, i32* %16, align 4
  %970 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %971 = load i32, i32* %22, align 4
  %972 = load i32, i32* @PCI_PREF_MEMORY_LIMIT, align 4
  %973 = load i32, i32* %16, align 4
  %974 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %970, i32 %971, i32 %972, i32 %973)
  store i32 %974, i32* %18, align 4
  %975 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %976 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %975, i32 0, i32 0
  %977 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %978 = call i32 @return_resource(%struct.pci_resource** %976, %struct.pci_resource* %977)
  br label %991

979:                                              ; preds = %942
  store i32 0, i32* %16, align 4
  %980 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %981 = load i32, i32* %22, align 4
  %982 = load i32, i32* @PCI_PREF_MEMORY_LIMIT, align 4
  %983 = load i32, i32* %16, align 4
  %984 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %980, i32 %981, i32 %982, i32 %983)
  store i32 %984, i32* %18, align 4
  %985 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %986 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %985, i32 0, i32 0
  %987 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %988 = call i32 @return_resource(%struct.pci_resource** %986, %struct.pci_resource* %987)
  %989 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %990 = call i32 @kfree(%struct.pci_resource* %989)
  br label %991

991:                                              ; preds = %979, %956
  br label %1001

992:                                              ; preds = %937
  %993 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %994 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %993, i32 0, i32 5
  %995 = load %struct.pci_resource*, %struct.pci_resource** %994, align 8
  %996 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %997 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %996, i32 0, i32 2
  store %struct.pci_resource* %995, %struct.pci_resource** %997, align 8
  %998 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %999 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1000 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %999, i32 0, i32 5
  store %struct.pci_resource* %998, %struct.pci_resource** %1000, align 8
  br label %1001

1001:                                             ; preds = %992, %991
  br label %1015

1002:                                             ; preds = %905, %902
  %1003 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %1004 = icmp ne %struct.pci_resource* %1003, null
  br i1 %1004, label %1005, label %1014

1005:                                             ; preds = %1002
  %1006 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1007 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1006, i32 0, i32 5
  %1008 = load %struct.pci_resource*, %struct.pci_resource** %1007, align 8
  %1009 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %1010 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1009, i32 0, i32 2
  store %struct.pci_resource* %1008, %struct.pci_resource** %1010, align 8
  %1011 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %1012 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1013 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1012, i32 0, i32 5
  store %struct.pci_resource* %1011, %struct.pci_resource** %1013, align 8
  br label %1014

1014:                                             ; preds = %1005, %1002
  br label %1015

1015:                                             ; preds = %1014, %1001
  store i32 343, i32* %15, align 4
  %1016 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1017 = load i32, i32* %22, align 4
  %1018 = load i32, i32* @PCI_COMMAND, align 4
  %1019 = load i32, i32* %15, align 4
  %1020 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %1016, i32 %1017, i32 %1018, i32 %1019)
  store i32 %1020, i32* %18, align 4
  store i32 7, i32* %15, align 4
  %1021 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1022 = load i32, i32* %22, align 4
  %1023 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %1024 = load i32, i32* %15, align 4
  %1025 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %1021, i32 %1022, i32 %1023, i32 %1024)
  store i32 %1025, i32* %18, align 4
  br label %1397

1026:                                             ; preds = %58
  %1027 = load i32, i32* %12, align 4
  %1028 = and i32 %1027, 127
  %1029 = load i32, i32* @PCI_HEADER_TYPE_NORMAL, align 4
  %1030 = icmp eq i32 %1028, %1029
  br i1 %1030, label %1031, label %1394

1031:                                             ; preds = %1026
  %1032 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1033 = load i32, i32* %22, align 4
  %1034 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %1032, i32 %1033, i32 11, i32* %14)
  store i32 %1034, i32* %18, align 4
  %1035 = load i32, i32* %14, align 4
  %1036 = load i32, i32* @PCI_BASE_CLASS_DISPLAY, align 4
  %1037 = icmp eq i32 %1035, %1036
  br i1 %1037, label %1038, label %1040

1038:                                             ; preds = %1031
  %1039 = load i32, i32* @DEVICE_TYPE_NOT_SUPPORTED, align 4
  store i32 %1039, i32* %5, align 4
  br label %1419

1040:                                             ; preds = %1031
  store i32 16, i32* %10, align 4
  br label %1041

1041:                                             ; preds = %1250, %1040
  %1042 = load i32, i32* %10, align 4
  %1043 = icmp sle i32 %1042, 36
  br i1 %1043, label %1044, label %1253

1044:                                             ; preds = %1041
  store i32 -1, i32* %19, align 4
  %1045 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1046 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1045, i32 0, i32 0
  %1047 = load i32, i32* %1046, align 4
  %1048 = load i32, i32* %22, align 4
  %1049 = load i32, i32* %10, align 4
  %1050 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %1047, i32 %1048, i32 %1049)
  %1051 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1052 = load i32, i32* %22, align 4
  %1053 = load i32, i32* %10, align 4
  %1054 = load i32, i32* %19, align 4
  %1055 = call i32 @pci_bus_write_config_dword(%struct.pci_bus* %1051, i32 %1052, i32 %1053, i32 %1054)
  store i32 %1055, i32* %18, align 4
  %1056 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1057 = load i32, i32* %22, align 4
  %1058 = load i32, i32* %10, align 4
  %1059 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %1056, i32 %1057, i32 %1058, i32* %19)
  store i32 %1059, i32* %18, align 4
  %1060 = load i32, i32* %19, align 4
  %1061 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %1060)
  %1062 = load i32, i32* %19, align 4
  %1063 = icmp ne i32 %1062, 0
  br i1 %1063, label %1064, label %1249

1064:                                             ; preds = %1044
  %1065 = load i32, i32* %19, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = and i64 %1066, 3
  %1068 = icmp eq i64 %1067, 1
  br i1 %1068, label %1069, label %1114

1069:                                             ; preds = %1064
  %1070 = load i32, i32* %19, align 4
  %1071 = and i32 %1070, -4
  store i32 %1071, i32* %20, align 4
  %1072 = load i32, i32* %20, align 4
  %1073 = xor i32 %1072, -1
  %1074 = add nsw i32 %1073, 1
  store i32 %1074, i32* %20, align 4
  %1075 = load i32, i32* %20, align 4
  %1076 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %1075)
  %1077 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1078 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1077, i32 0, i32 2
  %1079 = load i32, i32* %20, align 4
  %1080 = call %struct.pci_resource* @get_io_resource(%struct.pci_resource** %1078, i32 %1079)
  store %struct.pci_resource* %1080, %struct.pci_resource** %25, align 8
  %1081 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1082 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1081, i32 0, i32 0
  %1083 = load i32, i32* %1082, align 8
  %1084 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1085 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1084, i32 0, i32 1
  %1086 = load i32, i32* %1085, align 4
  %1087 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1088 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1087, i32 0, i32 2
  %1089 = load %struct.pci_resource*, %struct.pci_resource** %1088, align 8
  %1090 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %1083, i32 %1086, %struct.pci_resource* %1089)
  %1091 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1092 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1093 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1092, i32 0, i32 6
  %1094 = load %struct.pci_resource*, %struct.pci_resource** %1093, align 8
  %1095 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), %struct.pci_func* %1091, %struct.pci_resource* %1094)
  %1096 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1097 = icmp ne %struct.pci_resource* %1096, null
  br i1 %1097, label %1098, label %1110

1098:                                             ; preds = %1069
  %1099 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1100 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1099, i32 0, i32 0
  %1101 = load i32, i32* %1100, align 8
  store i32 %1101, i32* %20, align 4
  %1102 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1103 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1102, i32 0, i32 6
  %1104 = load %struct.pci_resource*, %struct.pci_resource** %1103, align 8
  %1105 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1106 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1105, i32 0, i32 2
  store %struct.pci_resource* %1104, %struct.pci_resource** %1106, align 8
  %1107 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %1108 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1109 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1108, i32 0, i32 6
  store %struct.pci_resource* %1107, %struct.pci_resource** %1109, align 8
  br label %1113

1110:                                             ; preds = %1069
  %1111 = load i32, i32* @ENOMEM, align 4
  %1112 = sub nsw i32 0, %1111
  store i32 %1112, i32* %5, align 4
  br label %1419

1113:                                             ; preds = %1098
  br label %1230

1114:                                             ; preds = %1064
  %1115 = load i32, i32* %19, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = and i64 %1116, 11
  %1118 = icmp eq i64 %1117, 8
  br i1 %1118, label %1119, label %1149

1119:                                             ; preds = %1114
  %1120 = load i32, i32* %19, align 4
  %1121 = and i32 %1120, -16
  store i32 %1121, i32* %20, align 4
  %1122 = load i32, i32* %20, align 4
  %1123 = xor i32 %1122, -1
  %1124 = add nsw i32 %1123, 1
  store i32 %1124, i32* %20, align 4
  %1125 = load i32, i32* %20, align 4
  %1126 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %1125)
  %1127 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1128 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1127, i32 0, i32 0
  %1129 = load i32, i32* %20, align 4
  %1130 = call %struct.pci_resource* @get_resource(%struct.pci_resource** %1128, i32 %1129)
  store %struct.pci_resource* %1130, %struct.pci_resource** %24, align 8
  %1131 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %1132 = icmp ne %struct.pci_resource* %1131, null
  br i1 %1132, label %1133, label %1145

1133:                                             ; preds = %1119
  %1134 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %1135 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1134, i32 0, i32 0
  %1136 = load i32, i32* %1135, align 8
  store i32 %1136, i32* %20, align 4
  %1137 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1138 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1137, i32 0, i32 5
  %1139 = load %struct.pci_resource*, %struct.pci_resource** %1138, align 8
  %1140 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %1141 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1140, i32 0, i32 2
  store %struct.pci_resource* %1139, %struct.pci_resource** %1141, align 8
  %1142 = load %struct.pci_resource*, %struct.pci_resource** %24, align 8
  %1143 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1144 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1143, i32 0, i32 5
  store %struct.pci_resource* %1142, %struct.pci_resource** %1144, align 8
  br label %1148

1145:                                             ; preds = %1119
  %1146 = load i32, i32* @ENOMEM, align 4
  %1147 = sub nsw i32 0, %1146
  store i32 %1147, i32* %5, align 4
  br label %1419

1148:                                             ; preds = %1133
  br label %1229

1149:                                             ; preds = %1114
  %1150 = load i32, i32* %19, align 4
  %1151 = sext i32 %1150 to i64
  %1152 = and i64 %1151, 11
  %1153 = icmp eq i64 %1152, 0
  br i1 %1153, label %1154, label %1184

1154:                                             ; preds = %1149
  %1155 = load i32, i32* %19, align 4
  %1156 = and i32 %1155, -16
  store i32 %1156, i32* %20, align 4
  %1157 = load i32, i32* %20, align 4
  %1158 = xor i32 %1157, -1
  %1159 = add nsw i32 %1158, 1
  store i32 %1159, i32* %20, align 4
  %1160 = load i32, i32* %20, align 4
  %1161 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %1160)
  %1162 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1163 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1162, i32 0, i32 1
  %1164 = load i32, i32* %20, align 4
  %1165 = call %struct.pci_resource* @get_resource(%struct.pci_resource** %1163, i32 %1164)
  store %struct.pci_resource* %1165, %struct.pci_resource** %23, align 8
  %1166 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1167 = icmp ne %struct.pci_resource* %1166, null
  br i1 %1167, label %1168, label %1180

1168:                                             ; preds = %1154
  %1169 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1170 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1169, i32 0, i32 0
  %1171 = load i32, i32* %1170, align 8
  store i32 %1171, i32* %20, align 4
  %1172 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1173 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1172, i32 0, i32 4
  %1174 = load %struct.pci_resource*, %struct.pci_resource** %1173, align 8
  %1175 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1176 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1175, i32 0, i32 2
  store %struct.pci_resource* %1174, %struct.pci_resource** %1176, align 8
  %1177 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1178 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1179 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1178, i32 0, i32 4
  store %struct.pci_resource* %1177, %struct.pci_resource** %1179, align 8
  br label %1183

1180:                                             ; preds = %1154
  %1181 = load i32, i32* @ENOMEM, align 4
  %1182 = sub nsw i32 0, %1181
  store i32 %1182, i32* %5, align 4
  br label %1419

1183:                                             ; preds = %1168
  br label %1228

1184:                                             ; preds = %1149
  %1185 = load i32, i32* %19, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = and i64 %1186, 11
  %1188 = icmp eq i64 %1187, 4
  br i1 %1188, label %1189, label %1219

1189:                                             ; preds = %1184
  %1190 = load i32, i32* %19, align 4
  %1191 = and i32 %1190, -16
  store i32 %1191, i32* %20, align 4
  %1192 = load i32, i32* %20, align 4
  %1193 = xor i32 %1192, -1
  %1194 = add nsw i32 %1193, 1
  store i32 %1194, i32* %20, align 4
  %1195 = load i32, i32* %20, align 4
  %1196 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %1195)
  %1197 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1198 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1197, i32 0, i32 1
  %1199 = load i32, i32* %20, align 4
  %1200 = call %struct.pci_resource* @get_resource(%struct.pci_resource** %1198, i32 %1199)
  store %struct.pci_resource* %1200, %struct.pci_resource** %23, align 8
  %1201 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1202 = icmp ne %struct.pci_resource* %1201, null
  br i1 %1202, label %1203, label %1215

1203:                                             ; preds = %1189
  %1204 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1205 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1204, i32 0, i32 0
  %1206 = load i32, i32* %1205, align 8
  store i32 %1206, i32* %20, align 4
  %1207 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1208 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1207, i32 0, i32 4
  %1209 = load %struct.pci_resource*, %struct.pci_resource** %1208, align 8
  %1210 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1211 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %1210, i32 0, i32 2
  store %struct.pci_resource* %1209, %struct.pci_resource** %1211, align 8
  %1212 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %1213 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1214 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1213, i32 0, i32 4
  store %struct.pci_resource* %1212, %struct.pci_resource** %1214, align 8
  br label %1218

1215:                                             ; preds = %1189
  %1216 = load i32, i32* @ENOMEM, align 4
  %1217 = sub nsw i32 0, %1216
  store i32 %1217, i32* %5, align 4
  br label %1419

1218:                                             ; preds = %1203
  br label %1227

1219:                                             ; preds = %1184
  %1220 = load i32, i32* %19, align 4
  %1221 = sext i32 %1220 to i64
  %1222 = and i64 %1221, 11
  %1223 = icmp eq i64 %1222, 6
  br i1 %1223, label %1224, label %1225

1224:                                             ; preds = %1219
  store i32 1, i32* %5, align 4
  br label %1419

1225:                                             ; preds = %1219
  %1226 = load i32, i32* @NOT_ENOUGH_RESOURCES, align 4
  store i32 %1226, i32* %5, align 4
  br label %1419

1227:                                             ; preds = %1218
  br label %1228

1228:                                             ; preds = %1227, %1183
  br label %1229

1229:                                             ; preds = %1228, %1148
  br label %1230

1230:                                             ; preds = %1229, %1113
  %1231 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1232 = load i32, i32* %22, align 4
  %1233 = load i32, i32* %10, align 4
  %1234 = load i32, i32* %20, align 4
  %1235 = call i32 @pci_bus_write_config_dword(%struct.pci_bus* %1231, i32 %1232, i32 %1233, i32 %1234)
  store i32 %1235, i32* %18, align 4
  %1236 = load i32, i32* %19, align 4
  %1237 = sext i32 %1236 to i64
  %1238 = and i64 %1237, 7
  %1239 = icmp eq i64 %1238, 4
  br i1 %1239, label %1240, label %1248

1240:                                             ; preds = %1230
  %1241 = load i32, i32* %10, align 4
  %1242 = add nsw i32 %1241, 4
  store i32 %1242, i32* %10, align 4
  store i32 0, i32* %20, align 4
  %1243 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1244 = load i32, i32* %22, align 4
  %1245 = load i32, i32* %10, align 4
  %1246 = load i32, i32* %20, align 4
  %1247 = call i32 @pci_bus_write_config_dword(%struct.pci_bus* %1243, i32 %1244, i32 %1245, i32 %1246)
  store i32 %1247, i32* %18, align 4
  br label %1248

1248:                                             ; preds = %1240, %1230
  br label %1249

1249:                                             ; preds = %1248, %1044
  br label %1250

1250:                                             ; preds = %1249
  %1251 = load i32, i32* %10, align 4
  %1252 = add nsw i32 %1251, 4
  store i32 %1252, i32* %10, align 4
  br label %1041

1253:                                             ; preds = %1041
  %1254 = load i64, i64* @cpqhp_legacy_mode, align 8
  %1255 = icmp ne i64 %1254, 0
  br i1 %1255, label %1256, label %1322

1256:                                             ; preds = %1253
  %1257 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1258 = load i32, i32* %22, align 4
  %1259 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %1260 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %1257, i32 %1258, i32 %1259, i32* %12)
  store i32 %1260, i32* %18, align 4
  %1261 = load i32, i32* %12, align 4
  %1262 = icmp ne i32 %1261, 0
  br i1 %1262, label %1263, label %1304

1263:                                             ; preds = %1256
  %1264 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1265 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1264, i32 0, i32 4
  %1266 = load %struct.irq_mapping*, %struct.irq_mapping** %1265, align 8
  %1267 = icmp ne %struct.irq_mapping* %1266, null
  br i1 %1267, label %1268, label %1304

1268:                                             ; preds = %1263
  %1269 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1270 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1269, i32 0, i32 4
  %1271 = load %struct.irq_mapping*, %struct.irq_mapping** %1270, align 8
  %1272 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1271, i32 0, i32 2
  %1273 = load i32, i32* %1272, align 8
  %1274 = load i32, i32* %12, align 4
  %1275 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1276 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1275, i32 0, i32 4
  %1277 = load %struct.irq_mapping*, %struct.irq_mapping** %1276, align 8
  %1278 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1277, i32 0, i32 0
  %1279 = load i32, i32* %1278, align 8
  %1280 = add nsw i32 %1274, %1279
  %1281 = sub nsw i32 %1280, 1
  %1282 = and i32 %1281, 3
  %1283 = shl i32 1, %1282
  %1284 = and i32 %1273, %1283
  %1285 = icmp ne i32 %1284, 0
  br i1 %1285, label %1286, label %1304

1286:                                             ; preds = %1268
  %1287 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1288 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1287, i32 0, i32 4
  %1289 = load %struct.irq_mapping*, %struct.irq_mapping** %1288, align 8
  %1290 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1289, i32 0, i32 1
  %1291 = load i32*, i32** %1290, align 8
  %1292 = load i32, i32* %12, align 4
  %1293 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1294 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1293, i32 0, i32 4
  %1295 = load %struct.irq_mapping*, %struct.irq_mapping** %1294, align 8
  %1296 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1295, i32 0, i32 0
  %1297 = load i32, i32* %1296, align 8
  %1298 = add nsw i32 %1292, %1297
  %1299 = sub nsw i32 %1298, 1
  %1300 = and i32 %1299, 3
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds i32, i32* %1291, i64 %1301
  %1303 = load i32, i32* %1302, align 4
  store i32 %1303, i32* %11, align 4
  br label %1316

1304:                                             ; preds = %1268, %1263, %1256
  %1305 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1306 = load i32, i32* %22, align 4
  %1307 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %1305, i32 %1306, i32 11, i32* %14)
  store i32 %1307, i32* %18, align 4
  %1308 = load i32, i32* %14, align 4
  %1309 = load i32, i32* @PCI_BASE_CLASS_STORAGE, align 4
  %1310 = icmp eq i32 %1308, %1309
  br i1 %1310, label %1311, label %1313

1311:                                             ; preds = %1304
  %1312 = load i32, i32* @cpqhp_disk_irq, align 4
  store i32 %1312, i32* %11, align 4
  br label %1315

1313:                                             ; preds = %1304
  %1314 = load i32, i32* @cpqhp_nic_irq, align 4
  store i32 %1314, i32* %11, align 4
  br label %1315

1315:                                             ; preds = %1313, %1311
  br label %1316

1316:                                             ; preds = %1315, %1286
  %1317 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1318 = load i32, i32* %22, align 4
  %1319 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %1320 = load i32, i32* %11, align 4
  %1321 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %1317, i32 %1318, i32 %1319, i32 %1320)
  store i32 %1321, i32* %18, align 4
  br label %1322

1322:                                             ; preds = %1316, %1253
  %1323 = load i32, i32* %8, align 4
  %1324 = icmp ne i32 %1323, 0
  br i1 %1324, label %1339, label %1325

1325:                                             ; preds = %1322
  %1326 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1327 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1326, i32 0, i32 0
  %1328 = load i32, i32* %1327, align 8
  %1329 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1330 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1329, i32 0, i32 1
  %1331 = load i32, i32* %1330, align 4
  %1332 = load i32, i32* %12, align 4
  %1333 = load i32, i32* %11, align 4
  %1334 = call i32 @cpqhp_set_irq(i32 %1328, i32 %1331, i32 %1332, i32 %1333)
  store i32 %1334, i32* %18, align 4
  %1335 = load i32, i32* %18, align 4
  %1336 = icmp ne i32 %1335, 0
  br i1 %1336, label %1337, label %1338

1337:                                             ; preds = %1325
  store i32 1, i32* %5, align 4
  br label %1419

1338:                                             ; preds = %1325
  br label %1373

1339:                                             ; preds = %1322
  %1340 = load i32, i32* %11, align 4
  %1341 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1342 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1341, i32 0, i32 4
  %1343 = load %struct.irq_mapping*, %struct.irq_mapping** %1342, align 8
  %1344 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1343, i32 0, i32 1
  %1345 = load i32*, i32** %1344, align 8
  %1346 = load i32, i32* %12, align 4
  %1347 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1348 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1347, i32 0, i32 4
  %1349 = load %struct.irq_mapping*, %struct.irq_mapping** %1348, align 8
  %1350 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1349, i32 0, i32 0
  %1351 = load i32, i32* %1350, align 8
  %1352 = add nsw i32 %1346, %1351
  %1353 = sub nsw i32 %1352, 1
  %1354 = and i32 %1353, 3
  %1355 = sext i32 %1354 to i64
  %1356 = getelementptr inbounds i32, i32* %1345, i64 %1355
  store i32 %1340, i32* %1356, align 4
  %1357 = load i32, i32* %12, align 4
  %1358 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1359 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1358, i32 0, i32 4
  %1360 = load %struct.irq_mapping*, %struct.irq_mapping** %1359, align 8
  %1361 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1360, i32 0, i32 0
  %1362 = load i32, i32* %1361, align 8
  %1363 = add nsw i32 %1357, %1362
  %1364 = sub nsw i32 %1363, 1
  %1365 = shl i32 1, %1364
  %1366 = and i32 %1365, 3
  %1367 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1368 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1367, i32 0, i32 4
  %1369 = load %struct.irq_mapping*, %struct.irq_mapping** %1368, align 8
  %1370 = getelementptr inbounds %struct.irq_mapping, %struct.irq_mapping* %1369, i32 0, i32 2
  %1371 = load i32, i32* %1370, align 8
  %1372 = or i32 %1371, %1366
  store i32 %1372, i32* %1370, align 8
  br label %1373

1373:                                             ; preds = %1339, %1338
  store i32 64, i32* %12, align 4
  %1374 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1375 = load i32, i32* %22, align 4
  %1376 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %1377 = load i32, i32* %12, align 4
  %1378 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %1374, i32 %1375, i32 %1376, i32 %1377)
  store i32 %1378, i32* %18, align 4
  store i32 8, i32* %12, align 4
  %1379 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1380 = load i32, i32* %22, align 4
  %1381 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %1382 = load i32, i32* %12, align 4
  %1383 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %1379, i32 %1380, i32 %1381, i32 %1382)
  store i32 %1383, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %1384 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1385 = load i32, i32* %22, align 4
  %1386 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %1387 = load i32, i32* %17, align 4
  %1388 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %1384, i32 %1385, i32 %1386, i32 %1387)
  store i32 %1388, i32* %18, align 4
  store i32 343, i32* %16, align 4
  %1389 = load %struct.pci_bus*, %struct.pci_bus** %33, align 8
  %1390 = load i32, i32* %22, align 4
  %1391 = load i32, i32* @PCI_COMMAND, align 4
  %1392 = load i32, i32* %16, align 4
  %1393 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %1389, i32 %1390, i32 %1391, i32 %1392)
  store i32 %1393, i32* %18, align 4
  br label %1396

1394:                                             ; preds = %1026
  %1395 = load i32, i32* @DEVICE_TYPE_NOT_SUPPORTED, align 4
  store i32 %1395, i32* %5, align 4
  br label %1419

1396:                                             ; preds = %1373
  br label %1397

1397:                                             ; preds = %1396, %1015
  %1398 = load %struct.pci_func*, %struct.pci_func** %7, align 8
  %1399 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %1398, i32 0, i32 3
  store i32 1, i32* %1399, align 4
  store i32 0, i32* %5, align 4
  br label %1419

1400:                                             ; preds = %613, %528
  %1401 = call i32 @cpqhp_destroy_resource_list(%struct.resource_lists* %34)
  %1402 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1403 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1402, i32 0, i32 3
  %1404 = load %struct.pci_resource*, %struct.pci_resource** %30, align 8
  %1405 = call i32 @return_resource(%struct.pci_resource** %1403, %struct.pci_resource* %1404)
  %1406 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1407 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1406, i32 0, i32 2
  %1408 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %1409 = call i32 @return_resource(%struct.pci_resource** %1407, %struct.pci_resource* %1408)
  %1410 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1411 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1410, i32 0, i32 1
  %1412 = load %struct.pci_resource*, %struct.pci_resource** %27, align 8
  %1413 = call i32 @return_resource(%struct.pci_resource** %1411, %struct.pci_resource* %1412)
  %1414 = load %struct.resource_lists*, %struct.resource_lists** %9, align 8
  %1415 = getelementptr inbounds %struct.resource_lists, %struct.resource_lists* %1414, i32 0, i32 0
  %1416 = load %struct.pci_resource*, %struct.pci_resource** %28, align 8
  %1417 = call i32 @return_resource(%struct.pci_resource** %1415, %struct.pci_resource* %1416)
  %1418 = load i32, i32* %18, align 4
  store i32 %1418, i32* %5, align 4
  br label %1419

1419:                                             ; preds = %1400, %1397, %1394, %1337, %1225, %1224, %1215, %1180, %1145, %1110, %1038, %326, %187, %178, %169, %161, %151, %141, %131, %104, %86, %77, %56
  %1420 = load i32, i32* %5, align 4
  ret i32 %1420
}

declare dso_local i32 @PCI_DEVFN(i32, i64) #1

declare dso_local i32 @pci_bus_read_config_byte(%struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @pci_bus_write_config_byte(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local %struct.pci_resource* @get_max_resource(%struct.pci_resource**, i32) #1

declare dso_local %struct.pci_resource* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.pci_resource*) #1

declare dso_local i32 @memcpy(%struct.pci_resource*, %struct.pci_resource*, i32) #1

declare dso_local i32 @pci_bus_write_config_word(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local i32 @pci_bus_read_config_dword(%struct.pci_bus*, i32, i32, i32*) #1

declare dso_local %struct.pci_func* @cpqhp_slot_create(i32) #1

declare dso_local i32 @configure_new_device(%struct.controller*, %struct.pci_func*, i32, %struct.resource_lists*) #1

declare dso_local i32 @cpqhp_set_irq(i32, i32, i32, i32) #1

declare dso_local i32 @return_resource(%struct.pci_resource**, %struct.pci_resource*) #1

declare dso_local %struct.pci_resource* @do_pre_bridge_resource_split(%struct.pci_resource**, %struct.pci_resource**, i32) #1

declare dso_local %struct.pci_resource* @do_bridge_resource_split(%struct.pci_resource**, i32) #1

declare dso_local i32 @pci_bus_write_config_dword(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local %struct.pci_resource* @get_io_resource(%struct.pci_resource**, i32) #1

declare dso_local %struct.pci_resource* @get_resource(%struct.pci_resource**, i32) #1

declare dso_local i32 @cpqhp_destroy_resource_list(%struct.resource_lists*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
