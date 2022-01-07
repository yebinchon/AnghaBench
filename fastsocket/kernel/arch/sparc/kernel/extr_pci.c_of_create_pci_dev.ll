; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci.c_of_create_pci_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci.c_of_create_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.pci_bus*, %struct.TYPE_4__, i32, i8*, i8*, i8*, i8*, i64, %struct.device_node* }
%struct.TYPE_4__ = type { i32*, i32, %struct.dev_archdata }
%struct.dev_archdata = type { %struct.of_device*, i32, i32*, i32, %struct.device_node*, %struct.pci_pbm_info* }
%struct.of_device = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dev_archdata }
%struct.pci_pbm_info = type { i32, i32, i32 }
%struct.device_node = type { i8* }
%struct.pci_bus = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ebus\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ofpci_verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"    create device, devfn: %x, type: %s\0A\00", align 1
@pci_bus_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"vendor-id\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"subsystem-vendor-id\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"subsystem-id\00", align 1
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"%04x:%02x:%02x.%d\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"    class: 0x%x device name: %s\0A\00", align 1
@PCI_CLASS_STORAGE_IDE = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"cardbus\00", align 1
@PCI_HEADER_TYPE_CARDBUS = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_NORMAL = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4
@PCI_IRQ_NONE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"    adding to system ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.pci_pbm_info*, %struct.device_node*, %struct.pci_bus*, i32)* @of_create_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @of_create_pci_dev(%struct.pci_pbm_info* %0, %struct.device_node* %1, %struct.pci_bus* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dev_archdata*, align 8
  %11 = alloca %struct.of_device*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pci_bus* %2, %struct.pci_bus** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call %struct.pci_dev* (...) @alloc_pci_dev()
  store %struct.pci_dev* %15, %struct.pci_dev** %12, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %17 = icmp ne %struct.pci_dev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  br label %238

19:                                               ; preds = %4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store %struct.dev_archdata* %22, %struct.dev_archdata** %10, align 8
  %23 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %24 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %27 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %29 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %28, i32 0, i32 1
  %30 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %31 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %33 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %34 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %33, i32 0, i32 5
  store %struct.pci_pbm_info* %32, %struct.pci_pbm_info** %34, align 8
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %37 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %36, i32 0, i32 4
  store %struct.device_node* %35, %struct.device_node** %37, align 8
  %38 = load %struct.device_node*, %struct.device_node** %7, align 8
  %39 = call %struct.of_device* @of_find_device_by_node(%struct.device_node* %38)
  store %struct.of_device* %39, %struct.of_device** %11, align 8
  %40 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %41 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %40, i32 0, i32 0
  store %struct.of_device* %39, %struct.of_device** %41, align 8
  %42 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %43 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %46 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.of_device*, %struct.of_device** %11, align 8
  %48 = getelementptr inbounds %struct.of_device, %struct.of_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.dev_archdata* %49, %struct.dev_archdata** %10, align 8
  %50 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %51 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %54 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %56 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %55, i32 0, i32 1
  %57 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %58 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %60 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %63 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.device_node*, %struct.device_node** %7, align 8
  %65 = getelementptr inbounds %struct.device_node, %struct.device_node* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %19
  %70 = load %struct.of_device*, %struct.of_device** %11, align 8
  %71 = call i32 @of_propagate_archdata(%struct.of_device* %70)
  br label %72

72:                                               ; preds = %69, %19
  %73 = load %struct.device_node*, %struct.device_node** %7, align 8
  %74 = call i8* @of_get_property(%struct.device_node* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %78

78:                                               ; preds = %77, %72
  %79 = load i64, i64* @ofpci_verbose, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %87 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 8
  store %struct.pci_bus* %86, %struct.pci_bus** %88, align 8
  %89 = load %struct.device_node*, %struct.device_node** %7, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 16
  store %struct.device_node* %89, %struct.device_node** %91, align 8
  %92 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %93 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32* @pci_bus_type, i32** %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 15
  store i64 0, i64* %105, align 8
  %106 = load %struct.device_node*, %struct.device_node** %7, align 8
  %107 = call i8* @of_getintprop_default(%struct.device_node* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 65535)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 14
  store i8* %107, i8** %109, align 8
  %110 = load %struct.device_node*, %struct.device_node** %7, align 8
  %111 = call i8* @of_getintprop_default(%struct.device_node* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 65535)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 13
  store i8* %111, i8** %113, align 8
  %114 = load %struct.device_node*, %struct.device_node** %7, align 8
  %115 = call i8* @of_getintprop_default(%struct.device_node* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 12
  store i8* %115, i8** %117, align 8
  %118 = load %struct.device_node*, %struct.device_node** %7, align 8
  %119 = call i8* @of_getintprop_default(%struct.device_node* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %120 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 11
  store i8* %119, i8** %121, align 8
  %122 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %123 = call i32 @pci_cfg_space_size(%struct.pci_dev* %122)
  %124 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 10
  store i32 %123, i32* %125, align 8
  %126 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %127 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %128 = call i32 @pci_read_config_dword(%struct.pci_dev* %126, i32 %127, i32* %14)
  %129 = load i32, i32* %14, align 4
  %130 = ashr i32 %129, 8
  %131 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %14, align 4
  %134 = and i32 %133, 255
  %135 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 9
  %139 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %140 = call i32 @pci_domain_nr(%struct.pci_bus* %139)
  %141 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 8
  %143 = load %struct.pci_bus*, %struct.pci_bus** %142, align 8
  %144 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @PCI_SLOT(i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @PCI_FUNC(i32 %148)
  %150 = call i32 @dev_set_name(%struct.TYPE_4__* %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %140, i32 %145, i32 %147, i32 %149)
  %151 = load i64, i64* @ofpci_verbose, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %85
  %154 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %155 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %158 = call i32 @pci_name(%struct.pci_dev* %157)
  %159 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %156, i32 %158)
  br label %160

160:                                              ; preds = %153, %85
  %161 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = ashr i32 %163, 8
  %165 = load i32, i32* @PCI_CLASS_STORAGE_IDE, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %169 = call i32 @pci_set_master(%struct.pci_dev* %168)
  br label %170

170:                                              ; preds = %167, %160
  %171 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %172 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 3
  store i32 4, i32* %172, align 4
  %173 = load i32, i32* @pci_channel_io_normal, align 4
  %174 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %175 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 4
  %176 = load %struct.device_node*, %struct.device_node** %7, align 8
  %177 = getelementptr inbounds %struct.device_node, %struct.device_node* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %170
  %182 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %183 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %184 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @PCI_ROM_ADDRESS1, align 4
  %186 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %187 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 4
  br label %222

188:                                              ; preds = %170
  %189 = load i8*, i8** %13, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* @PCI_HEADER_TYPE_CARDBUS, align 4
  %194 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %195 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %194, i32 0, i32 6
  store i32 %193, i32* %195, align 8
  br label %221

196:                                              ; preds = %188
  %197 = load i32, i32* @PCI_HEADER_TYPE_NORMAL, align 4
  %198 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %199 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %201 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %202 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 4
  %203 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %204 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %203, i32 0, i32 0
  %205 = load %struct.of_device*, %struct.of_device** %204, align 8
  %206 = getelementptr inbounds %struct.of_device, %struct.of_device* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %211 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 8
  %212 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %213 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %220

216:                                              ; preds = %196
  %217 = load i32, i32* @PCI_IRQ_NONE, align 4
  %218 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %219 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %216, %196
  br label %221

221:                                              ; preds = %220, %192
  br label %222

222:                                              ; preds = %221, %181
  %223 = load %struct.dev_archdata*, %struct.dev_archdata** %10, align 8
  %224 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %223, i32 0, i32 0
  %225 = load %struct.of_device*, %struct.of_device** %224, align 8
  %226 = load %struct.device_node*, %struct.device_node** %7, align 8
  %227 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %228 = call i32 @pci_parse_of_addrs(%struct.of_device* %225, %struct.device_node* %226, %struct.pci_dev* %227)
  %229 = load i64, i64* @ofpci_verbose, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %222
  %232 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %222
  %234 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %235 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %236 = call i32 @pci_device_add(%struct.pci_dev* %234, %struct.pci_bus* %235)
  %237 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %237, %struct.pci_dev** %5, align 8
  br label %238

238:                                              ; preds = %233, %18
  %239 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  ret %struct.pci_dev* %239
}

declare dso_local %struct.pci_dev* @alloc_pci_dev(...) #1

declare dso_local %struct.of_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @of_propagate_archdata(%struct.of_device*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i8* @of_getintprop_default(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @pci_cfg_space_size(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_parse_of_addrs(%struct.of_device*, %struct.device_node*, %struct.pci_dev*) #1

declare dso_local i32 @pci_device_add(%struct.pci_dev*, %struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
