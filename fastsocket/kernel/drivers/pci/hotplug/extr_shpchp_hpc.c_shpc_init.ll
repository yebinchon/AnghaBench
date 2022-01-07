; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, i32, i32*, i32, i32, i32 }
%struct.pci_dev = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Hotplug Controller:\0A\00", align 1
@PCI_VENDOR_ID_AMD = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AMD_GOLAM_7450 = common dso_local global i64 0, align 8
@PCI_CAP_ID_SHPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot find PCI capability\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" cap_offset = %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot read base_offset\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Cannot read slot config\0A\00", align 1
@SLOT_NUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c" num_slots (indirect) %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Cannot read creg (index = %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" offset %d: value %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"HPC vendor_id %x device_id %x ss_vid %x ss_did %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"pci_enable_device failed\0A\00", align 1
@MY_NAME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"Cannot reserve MMIO region\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Cannot remap MMIO region %lx @ %lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"ctrl->creg %p\0A\00", align 1
@shpchp_hpc_ops = common dso_local global i32 0, align 4
@SLOT_CONFIG = common dso_local global i32 0, align 4
@FIRST_DEV_NUM = common dso_local global i32 0, align 4
@PSN = common dso_local global i32 0, align 4
@UPDOWN = common dso_local global i32 0, align 4
@SERR_INTR_ENABLE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"SERR_INTR_ENABLE = %x\0A\00", align 1
@GLOBAL_INTR_MASK = common dso_local global i32 0, align 4
@GLOBAL_SERR_MASK = common dso_local global i32 0, align 4
@COMMAND_INTR_MASK = common dso_local global i32 0, align 4
@ARBITER_SERR_MASK = common dso_local global i32 0, align 4
@SERR_INTR_RSVDZ_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"Default Logical Slot Register %d value %x\0A\00", align 1
@PRSNT_CHANGE_INTR_MASK = common dso_local global i32 0, align 4
@ISO_PFAULT_INTR_MASK = common dso_local global i32 0, align 4
@BUTTON_PRESS_INTR_MASK = common dso_local global i32 0, align 4
@MRL_CHANGE_INTR_MASK = common dso_local global i32 0, align 4
@CON_PFAULT_INTR_MASK = common dso_local global i32 0, align 4
@MRL_CHANGE_SERR_MASK = common dso_local global i32 0, align 4
@CON_PFAULT_SERR_MASK = common dso_local global i32 0, align 4
@SLOT_REG_RSVDZ_MASK = common dso_local global i32 0, align 4
@shpchp_poll_mode = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [42 x i8] c"Can't get msi for the hotplug controller\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Use INTx for the hotplug controller\0A\00", align 1
@shpc_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"request_irq %d for hpc%d (returns %d)\0A\00", align 1
@shpchp_num_controllers = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [45 x i8] c"Can't get irq %d for the hotplug controller\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"HPC at %s irq=%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"shpchpd\00", align 1
@shpchp_wq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shpc_init(%struct.controller* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.controller*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load %struct.controller*, %struct.controller** %4, align 8
  %16 = getelementptr inbounds %struct.controller, %struct.controller* %15, i32 0, i32 8
  store %struct.pci_dev* %14, %struct.pci_dev** %16, align 8
  %17 = load %struct.controller*, %struct.controller** %4, align 8
  %18 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI_DEVICE_ID_AMD_GOLAM_7450, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i32 @pci_resource_start(%struct.pci_dev* %31, i32 0)
  %33 = load %struct.controller*, %struct.controller** %4, align 8
  %34 = getelementptr inbounds %struct.controller, %struct.controller* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = call i32 @pci_resource_len(%struct.pci_dev* %35, i32 0)
  %37 = load %struct.controller*, %struct.controller** %4, align 8
  %38 = getelementptr inbounds %struct.controller, %struct.controller* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %115

39:                                               ; preds = %24, %2
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = load i32, i32* @PCI_CAP_ID_SHPC, align 4
  %42 = call i32 @pci_find_capability(%struct.pci_dev* %40, i32 %41)
  %43 = load %struct.controller*, %struct.controller** %4, align 8
  %44 = getelementptr inbounds %struct.controller, %struct.controller* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.controller*, %struct.controller** %4, align 8
  %46 = getelementptr inbounds %struct.controller, %struct.controller* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load %struct.controller*, %struct.controller** %4, align 8
  %51 = call i32 (%struct.controller*, i8*, ...) @ctrl_err(%struct.controller* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %435

52:                                               ; preds = %39
  %53 = load %struct.controller*, %struct.controller** %4, align 8
  %54 = load %struct.controller*, %struct.controller** %4, align 8
  %55 = getelementptr inbounds %struct.controller, %struct.controller* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.controller*, %struct.controller** %4, align 8
  %59 = call i32 @shpc_indirect_read(%struct.controller* %58, i32 0, i32* %9)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.controller*, %struct.controller** %4, align 8
  %64 = call i32 (%struct.controller*, i8*, ...) @ctrl_err(%struct.controller* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %435

65:                                               ; preds = %52
  %66 = load %struct.controller*, %struct.controller** %4, align 8
  %67 = call i32 @shpc_indirect_read(%struct.controller* %66, i32 3, i32* %10)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.controller*, %struct.controller** %4, align 8
  %72 = call i32 (%struct.controller*, i8*, ...) @ctrl_err(%struct.controller* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %435

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @SLOT_NUM, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %7, align 4
  %77 = load %struct.controller*, %struct.controller** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %100, %73
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 9, %82
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load %struct.controller*, %struct.controller** %4, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @shpc_indirect_read(%struct.controller* %86, i32 %87, i32* %10)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.controller*, %struct.controller** %4, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (%struct.controller*, i8*, ...) @ctrl_err(%struct.controller* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  br label %435

95:                                               ; preds = %85
  %96 = load %struct.controller*, %struct.controller** %4, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %80

103:                                              ; preds = %80
  %104 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %105 = call i32 @pci_resource_start(%struct.pci_dev* %104, i32 0)
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %105, %106
  %108 = load %struct.controller*, %struct.controller** %4, align 8
  %109 = getelementptr inbounds %struct.controller, %struct.controller* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %7, align 4
  %111 = mul nsw i32 4, %110
  %112 = add nsw i32 36, %111
  %113 = load %struct.controller*, %struct.controller** %4, align 8
  %114 = getelementptr inbounds %struct.controller, %struct.controller* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %103, %30
  %116 = load %struct.controller*, %struct.controller** %4, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %116, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i64 %119, i64 %122, i32 %125, i32 %128)
  %130 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %131 = call i32 @pci_enable_device(%struct.pci_dev* %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %115
  %135 = load %struct.controller*, %struct.controller** %4, align 8
  %136 = call i32 (%struct.controller*, i8*, ...) @ctrl_err(%struct.controller* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %435

137:                                              ; preds = %115
  %138 = load %struct.controller*, %struct.controller** %4, align 8
  %139 = getelementptr inbounds %struct.controller, %struct.controller* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.controller*, %struct.controller** %4, align 8
  %142 = getelementptr inbounds %struct.controller, %struct.controller* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MY_NAME, align 4
  %145 = call i32 @request_mem_region(i32 %140, i32 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %137
  %148 = load %struct.controller*, %struct.controller** %4, align 8
  %149 = call i32 (%struct.controller*, i8*, ...) @ctrl_err(%struct.controller* %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %435

150:                                              ; preds = %137
  %151 = load %struct.controller*, %struct.controller** %4, align 8
  %152 = getelementptr inbounds %struct.controller, %struct.controller* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.controller*, %struct.controller** %4, align 8
  %155 = getelementptr inbounds %struct.controller, %struct.controller* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ioremap(i32 %153, i32 %156)
  %158 = load %struct.controller*, %struct.controller** %4, align 8
  %159 = getelementptr inbounds %struct.controller, %struct.controller* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.controller*, %struct.controller** %4, align 8
  %161 = getelementptr inbounds %struct.controller, %struct.controller* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %150
  %165 = load %struct.controller*, %struct.controller** %4, align 8
  %166 = load %struct.controller*, %struct.controller** %4, align 8
  %167 = getelementptr inbounds %struct.controller, %struct.controller* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.controller*, %struct.controller** %4, align 8
  %170 = getelementptr inbounds %struct.controller, %struct.controller* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (%struct.controller*, i8*, ...) @ctrl_err(%struct.controller* %165, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %168, i32 %171)
  %173 = load %struct.controller*, %struct.controller** %4, align 8
  %174 = getelementptr inbounds %struct.controller, %struct.controller* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.controller*, %struct.controller** %4, align 8
  %177 = getelementptr inbounds %struct.controller, %struct.controller* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @release_mem_region(i32 %175, i32 %178)
  store i32 -1, i32* %6, align 4
  br label %435

180:                                              ; preds = %150
  %181 = load %struct.controller*, %struct.controller** %4, align 8
  %182 = load %struct.controller*, %struct.controller** %4, align 8
  %183 = getelementptr inbounds %struct.controller, %struct.controller* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %184)
  %186 = load %struct.controller*, %struct.controller** %4, align 8
  %187 = getelementptr inbounds %struct.controller, %struct.controller* %186, i32 0, i32 13
  %188 = call i32 @mutex_init(i32* %187)
  %189 = load %struct.controller*, %struct.controller** %4, align 8
  %190 = getelementptr inbounds %struct.controller, %struct.controller* %189, i32 0, i32 12
  %191 = call i32 @mutex_init(i32* %190)
  %192 = load %struct.controller*, %struct.controller** %4, align 8
  %193 = getelementptr inbounds %struct.controller, %struct.controller* %192, i32 0, i32 11
  %194 = call i32 @init_waitqueue_head(i32* %193)
  %195 = load %struct.controller*, %struct.controller** %4, align 8
  %196 = getelementptr inbounds %struct.controller, %struct.controller* %195, i32 0, i32 10
  store i32* @shpchp_hpc_ops, i32** %196, align 8
  %197 = load %struct.controller*, %struct.controller** %4, align 8
  %198 = load i32, i32* @SLOT_CONFIG, align 4
  %199 = call i32 @shpc_readl(%struct.controller* %197, i32 %198)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @FIRST_DEV_NUM, align 4
  %202 = and i32 %200, %201
  %203 = ashr i32 %202, 8
  %204 = load %struct.controller*, %struct.controller** %4, align 8
  %205 = getelementptr inbounds %struct.controller, %struct.controller* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* @SLOT_NUM, align 4
  %208 = and i32 %206, %207
  %209 = load %struct.controller*, %struct.controller** %4, align 8
  %210 = getelementptr inbounds %struct.controller, %struct.controller* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* @PSN, align 4
  %213 = and i32 %211, %212
  %214 = ashr i32 %213, 16
  %215 = load %struct.controller*, %struct.controller** %4, align 8
  %216 = getelementptr inbounds %struct.controller, %struct.controller* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* @UPDOWN, align 4
  %219 = and i32 %217, %218
  %220 = ashr i32 %219, 29
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 1, i32 -1
  %224 = load %struct.controller*, %struct.controller** %4, align 8
  %225 = getelementptr inbounds %struct.controller, %struct.controller* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 4
  %226 = load %struct.controller*, %struct.controller** %4, align 8
  %227 = load i32, i32* @SERR_INTR_ENABLE, align 4
  %228 = call i32 @shpc_readl(%struct.controller* %226, i32 %227)
  store i32 %228, i32* %10, align 4
  %229 = load %struct.controller*, %struct.controller** %4, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %229, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @GLOBAL_INTR_MASK, align 4
  %233 = load i32, i32* @GLOBAL_SERR_MASK, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @COMMAND_INTR_MASK, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @ARBITER_SERR_MASK, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* %10, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* @SERR_INTR_RSVDZ_MASK, align 4
  %242 = xor i32 %241, -1
  %243 = load i32, i32* %10, align 4
  %244 = and i32 %243, %242
  store i32 %244, i32* %10, align 4
  %245 = load %struct.controller*, %struct.controller** %4, align 8
  %246 = load i32, i32* @SERR_INTR_ENABLE, align 4
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @shpc_writel(%struct.controller* %245, i32 %246, i32 %247)
  %249 = load %struct.controller*, %struct.controller** %4, align 8
  %250 = load i32, i32* @SERR_INTR_ENABLE, align 4
  %251 = call i32 @shpc_readl(%struct.controller* %249, i32 %250)
  store i32 %251, i32* %10, align 4
  %252 = load %struct.controller*, %struct.controller** %4, align 8
  %253 = load i32, i32* %10, align 4
  %254 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %252, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %253)
  store i32 0, i32* %8, align 4
  br label %255

255:                                              ; preds = %294, %180
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.controller*, %struct.controller** %4, align 8
  %258 = getelementptr inbounds %struct.controller, %struct.controller* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %297

261:                                              ; preds = %255
  %262 = load %struct.controller*, %struct.controller** %4, align 8
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @SLOT_REG(i32 %263)
  %265 = call i32 @shpc_readl(%struct.controller* %262, i32 %264)
  store i32 %265, i32* %11, align 4
  %266 = load %struct.controller*, %struct.controller** %4, align 8
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* %11, align 4
  %269 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %266, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %267, i32 %268)
  %270 = load i32, i32* @PRSNT_CHANGE_INTR_MASK, align 4
  %271 = load i32, i32* @ISO_PFAULT_INTR_MASK, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @BUTTON_PRESS_INTR_MASK, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @MRL_CHANGE_INTR_MASK, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @CON_PFAULT_INTR_MASK, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @MRL_CHANGE_SERR_MASK, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @CON_PFAULT_SERR_MASK, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* %11, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* @SLOT_REG_RSVDZ_MASK, align 4
  %286 = xor i32 %285, -1
  %287 = load i32, i32* %11, align 4
  %288 = and i32 %287, %286
  store i32 %288, i32* %11, align 4
  %289 = load %struct.controller*, %struct.controller** %4, align 8
  %290 = load i32, i32* %8, align 4
  %291 = call i32 @SLOT_REG(i32 %290)
  %292 = load i32, i32* %11, align 4
  %293 = call i32 @shpc_writel(%struct.controller* %289, i32 %291, i32 %292)
  br label %294

294:                                              ; preds = %261
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %8, align 4
  br label %255

297:                                              ; preds = %255
  %298 = load i64, i64* @shpchp_poll_mode, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %297
  %301 = load %struct.controller*, %struct.controller** %4, align 8
  %302 = getelementptr inbounds %struct.controller, %struct.controller* %301, i32 0, i32 9
  %303 = call i32 @init_timer(i32* %302)
  %304 = load %struct.controller*, %struct.controller** %4, align 8
  %305 = call i32 @start_int_poll_timer(%struct.controller* %304, i32 10)
  br label %348

306:                                              ; preds = %297
  %307 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %308 = call i32 @pci_enable_msi(%struct.pci_dev* %307)
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %6, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load %struct.controller*, %struct.controller** %4, align 8
  %313 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %312, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %314 = load %struct.controller*, %struct.controller** %4, align 8
  %315 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %314, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  br label %316

316:                                              ; preds = %311, %306
  %317 = load %struct.controller*, %struct.controller** %4, align 8
  %318 = getelementptr inbounds %struct.controller, %struct.controller* %317, i32 0, i32 8
  %319 = load %struct.pci_dev*, %struct.pci_dev** %318, align 8
  %320 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @shpc_isr, align 4
  %323 = load i32, i32* @IRQF_SHARED, align 4
  %324 = load i32, i32* @MY_NAME, align 4
  %325 = load %struct.controller*, %struct.controller** %4, align 8
  %326 = bitcast %struct.controller* %325 to i8*
  %327 = call i32 @request_irq(i32 %321, i32 %322, i32 %323, i32 %324, i8* %326)
  store i32 %327, i32* %6, align 4
  %328 = load %struct.controller*, %struct.controller** %4, align 8
  %329 = load %struct.controller*, %struct.controller** %4, align 8
  %330 = getelementptr inbounds %struct.controller, %struct.controller* %329, i32 0, i32 8
  %331 = load %struct.pci_dev*, %struct.pci_dev** %330, align 8
  %332 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @atomic_read(i32* @shpchp_num_controllers)
  %335 = load i32, i32* %6, align 4
  %336 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %328, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 %333, i32 %334, i32 %335)
  %337 = load i32, i32* %6, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %316
  %340 = load %struct.controller*, %struct.controller** %4, align 8
  %341 = load %struct.controller*, %struct.controller** %4, align 8
  %342 = getelementptr inbounds %struct.controller, %struct.controller* %341, i32 0, i32 8
  %343 = load %struct.pci_dev*, %struct.pci_dev** %342, align 8
  %344 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = call i32 (%struct.controller*, i8*, ...) @ctrl_err(%struct.controller* %340, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i32 %345)
  br label %430

347:                                              ; preds = %316
  br label %348

348:                                              ; preds = %347, %300
  %349 = load %struct.controller*, %struct.controller** %4, align 8
  %350 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %351 = call i32 @pci_name(%struct.pci_dev* %350)
  %352 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %353 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %349, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %351, i32 %354)
  %356 = call i32 @atomic_add_return(i32 1, i32* @shpchp_num_controllers)
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %358, label %366

358:                                              ; preds = %348
  %359 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  store i32 %359, i32* @shpchp_wq, align 4
  %360 = load i32, i32* @shpchp_wq, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %358
  %363 = load i32, i32* @ENOMEM, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %6, align 4
  br label %430

365:                                              ; preds = %358
  br label %366

366:                                              ; preds = %365, %348
  store i32 0, i32* %8, align 4
  br label %367

367:                                              ; preds = %401, %366
  %368 = load i32, i32* %8, align 4
  %369 = load %struct.controller*, %struct.controller** %4, align 8
  %370 = getelementptr inbounds %struct.controller, %struct.controller* %369, i32 0, i32 5
  %371 = load i32, i32* %370, align 4
  %372 = icmp slt i32 %368, %371
  br i1 %372, label %373, label %404

373:                                              ; preds = %367
  %374 = load %struct.controller*, %struct.controller** %4, align 8
  %375 = load i32, i32* %8, align 4
  %376 = call i32 @SLOT_REG(i32 %375)
  %377 = call i32 @shpc_readl(%struct.controller* %374, i32 %376)
  store i32 %377, i32* %11, align 4
  %378 = load %struct.controller*, %struct.controller** %4, align 8
  %379 = load i32, i32* %8, align 4
  %380 = load i32, i32* %11, align 4
  %381 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %378, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %379, i32 %380)
  %382 = load i32, i32* @PRSNT_CHANGE_INTR_MASK, align 4
  %383 = load i32, i32* @ISO_PFAULT_INTR_MASK, align 4
  %384 = or i32 %382, %383
  %385 = load i32, i32* @BUTTON_PRESS_INTR_MASK, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @MRL_CHANGE_INTR_MASK, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @CON_PFAULT_INTR_MASK, align 4
  %390 = or i32 %388, %389
  %391 = load i32, i32* @SLOT_REG_RSVDZ_MASK, align 4
  %392 = or i32 %390, %391
  %393 = xor i32 %392, -1
  %394 = load i32, i32* %11, align 4
  %395 = and i32 %394, %393
  store i32 %395, i32* %11, align 4
  %396 = load %struct.controller*, %struct.controller** %4, align 8
  %397 = load i32, i32* %8, align 4
  %398 = call i32 @SLOT_REG(i32 %397)
  %399 = load i32, i32* %11, align 4
  %400 = call i32 @shpc_writel(%struct.controller* %396, i32 %398, i32 %399)
  br label %401

401:                                              ; preds = %373
  %402 = load i32, i32* %8, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %8, align 4
  br label %367

404:                                              ; preds = %367
  %405 = load i64, i64* @shpchp_poll_mode, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %429, label %407

407:                                              ; preds = %404
  %408 = load %struct.controller*, %struct.controller** %4, align 8
  %409 = load i32, i32* @SERR_INTR_ENABLE, align 4
  %410 = call i32 @shpc_readl(%struct.controller* %408, i32 %409)
  store i32 %410, i32* %10, align 4
  %411 = load i32, i32* @GLOBAL_INTR_MASK, align 4
  %412 = load i32, i32* @COMMAND_INTR_MASK, align 4
  %413 = or i32 %411, %412
  %414 = load i32, i32* @SERR_INTR_RSVDZ_MASK, align 4
  %415 = or i32 %413, %414
  %416 = xor i32 %415, -1
  %417 = load i32, i32* %10, align 4
  %418 = and i32 %417, %416
  store i32 %418, i32* %10, align 4
  %419 = load %struct.controller*, %struct.controller** %4, align 8
  %420 = load i32, i32* @SERR_INTR_ENABLE, align 4
  %421 = load i32, i32* %10, align 4
  %422 = call i32 @shpc_writel(%struct.controller* %419, i32 %420, i32 %421)
  %423 = load %struct.controller*, %struct.controller** %4, align 8
  %424 = load i32, i32* @SERR_INTR_ENABLE, align 4
  %425 = call i32 @shpc_readl(%struct.controller* %423, i32 %424)
  store i32 %425, i32* %10, align 4
  %426 = load %struct.controller*, %struct.controller** %4, align 8
  %427 = load i32, i32* %10, align 4
  %428 = call i32 (%struct.controller*, i8*, ...) @ctrl_dbg(%struct.controller* %426, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %427)
  br label %429

429:                                              ; preds = %407, %404
  store i32 0, i32* %3, align 4
  br label %437

430:                                              ; preds = %362, %339
  %431 = load %struct.controller*, %struct.controller** %4, align 8
  %432 = getelementptr inbounds %struct.controller, %struct.controller* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @iounmap(i32 %433)
  br label %435

435:                                              ; preds = %430, %164, %147, %134, %91, %70, %62, %49
  %436 = load i32, i32* %6, align 4
  store i32 %436, i32* %3, align 4
  br label %437

437:                                              ; preds = %435, %429
  %438 = load i32, i32* %3, align 4
  ret i32 %438
}

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*, ...) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, ...) #1

declare dso_local i32 @shpc_indirect_read(%struct.controller*, i32, i32*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, ...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @shpc_readl(%struct.controller*, i32) #1

declare dso_local i32 @shpc_writel(%struct.controller*, i32, i32) #1

declare dso_local i32 @SLOT_REG(i32) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @start_int_poll_timer(%struct.controller*, i32) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
