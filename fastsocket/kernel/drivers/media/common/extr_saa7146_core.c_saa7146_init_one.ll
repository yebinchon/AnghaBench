; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_core.c_saa7146_init_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_core.c_saa7146_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.saa7146_pci_extension_data = type { %struct.saa7146_extension* }
%struct.saa7146_extension = type { i64 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)*, i64 (%struct.saa7146_dev.0*)* }
%struct.saa7146_dev = type opaque
%struct.saa7146_dev.0 = type opaque
%struct.saa7146_dev.1 = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7146_extension*, i32, %struct.pci_dev* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"out of memory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pci:%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"pci_enable_device() failed.\0A\00", align 1
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"pci_read_config_dword() failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"saa7146\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ioremap() failed.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@interrupt_hw = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"request_irq() failed.\0A\00", align 1
@SAA7146_RPS_MEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"saa7146 (%d)\00", align 1
@saa7146_num = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [63 x i8] c"found saa7146 @ mem %p (revision %d, irq %d) (0x%04x,0x%04x).\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@PCI_BT_V1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"ext->probe() failed for %p. skipping device.\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"ext->attach() failed for %p. skipping device.\0A\00", align 1
@saa7146_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @saa7146_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7146_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.saa7146_pci_extension_data*, align 8
  %6 = alloca %struct.saa7146_extension*, align 8
  %7 = alloca %struct.saa7146_dev.1*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %9 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %10 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.saa7146_pci_extension_data*
  store %struct.saa7146_pci_extension_data* %12, %struct.saa7146_pci_extension_data** %5, align 8
  %13 = load %struct.saa7146_pci_extension_data*, %struct.saa7146_pci_extension_data** %5, align 8
  %14 = getelementptr inbounds %struct.saa7146_pci_extension_data, %struct.saa7146_pci_extension_data* %13, i32 0, i32 0
  %15 = load %struct.saa7146_extension*, %struct.saa7146_extension** %14, align 8
  store %struct.saa7146_extension* %15, %struct.saa7146_extension** %6, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.saa7146_dev.1* @kzalloc(i32 112, i32 %18)
  store %struct.saa7146_dev.1* %19, %struct.saa7146_dev.1** %7, align 8
  %20 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %21 = icmp ne %struct.saa7146_dev.1* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %261

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = bitcast %struct.pci_dev* %25 to i8*
  %27 = call i32 @DEB_EE(i8* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = call i32 @pci_enable_device(%struct.pci_dev* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %317

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = call i32 @pci_set_master(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %39 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %38, i32 0, i32 15
  store %struct.pci_dev* %37, %struct.pci_dev** %39, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %42 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %43 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %42, i32 0, i32 0
  %44 = call i32 @pci_read_config_dword(%struct.pci_dev* %40, i32 %41, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %314

49:                                               ; preds = %34
  %50 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %51 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 15
  store i32 %53, i32* %51, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = call i32 @pci_request_region(%struct.pci_dev* %54, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %314

59:                                               ; preds = %49
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = call i32 @pci_resource_start(%struct.pci_dev* %60, i32 0)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = call i32 @pci_resource_len(%struct.pci_dev* %62, i32 0)
  %64 = call i32 @ioremap(i32 %61, i32 %63)
  %65 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %66 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %68 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %59
  %72 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %311

75:                                               ; preds = %59
  %76 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %77 = load i32, i32* @IER, align 4
  %78 = call i32 @saa7146_write(%struct.saa7146_dev.1* %76, i32 %77, i32 0)
  %79 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %80 = load i32, i32* @MC1, align 4
  %81 = call i32 @saa7146_write(%struct.saa7146_dev.1* %79, i32 %80, i32 822018048)
  %82 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %83 = load i32, i32* @MC2, align 4
  %84 = call i32 @saa7146_write(%struct.saa7146_dev.1* %82, i32 %83, i32 -134217728)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @interrupt_hw, align 4
  %89 = load i32, i32* @IRQF_SHARED, align 4
  %90 = load i32, i32* @IRQF_DISABLED, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %93 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %96 = call i32 @request_irq(i32 %87, i32 %88, i32 %91, i32 %94, %struct.saa7146_dev.1* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %75
  %100 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %306

101:                                              ; preds = %75
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  %104 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %105 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %106 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %107 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i8* @pci_alloc_consistent(%struct.pci_dev* %104, i32 %105, i32* %108)
  %110 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %111 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  %113 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %114 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %101
  br label %299

119:                                              ; preds = %101
  %120 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %121 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %125 = call i32 @memset(i8* %123, i32 0, i32 %124)
  %126 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %127 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %128 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %129 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = call i8* @pci_alloc_consistent(%struct.pci_dev* %126, i32 %127, i32* %130)
  %132 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %133 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  %135 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %136 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %119
  br label %287

141:                                              ; preds = %119
  %142 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %143 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %147 = call i32 @memset(i8* %145, i32 0, i32 %146)
  %148 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %149 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %150 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %151 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = call i8* @pci_alloc_consistent(%struct.pci_dev* %148, i32 %149, i32* %152)
  %154 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %155 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i8* %153, i8** %156, align 8
  %157 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %158 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %141
  br label %275

163:                                              ; preds = %141
  %164 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %165 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %169 = call i32 @memset(i8* %167, i32 0, i32 %168)
  %170 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %171 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %170, i32 0, i32 14
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @saa7146_num, align 4
  %174 = call i32 @sprintf(i32 %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %173)
  %175 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %176 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %179 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %185 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %188 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = call i32 @INFO(i8* %191)
  %193 = load %struct.saa7146_extension*, %struct.saa7146_extension** %6, align 8
  %194 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %195 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %194, i32 0, i32 13
  store %struct.saa7146_extension* %193, %struct.saa7146_extension** %195, align 8
  %196 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %197 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %196, i32 0, i32 12
  %198 = call i32 @mutex_init(i32* %197)
  %199 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %200 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %199, i32 0, i32 11
  %201 = call i32 @spin_lock_init(i32* %200)
  %202 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %203 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %202, i32 0, i32 10
  %204 = call i32 @spin_lock_init(i32* %203)
  %205 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %206 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %205, i32 0, i32 9
  %207 = call i32 @mutex_init(i32* %206)
  %208 = load i32, i32* @THIS_MODULE, align 4
  %209 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %210 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 4
  %211 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %212 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %211, i32 0, i32 7
  %213 = call i32 @init_waitqueue_head(i32* %212)
  %214 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %215 = load i32, i32* @PCI_BT_V1, align 4
  %216 = call i32 @saa7146_write(%struct.saa7146_dev.1* %214, i32 %215, i32 469766175)
  %217 = load i32, i32* @ENODEV, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %8, align 4
  %219 = load %struct.saa7146_extension*, %struct.saa7146_extension** %6, align 8
  %220 = getelementptr inbounds %struct.saa7146_extension, %struct.saa7146_extension* %219, i32 0, i32 1
  %221 = load i64 (%struct.saa7146_dev.0*)*, i64 (%struct.saa7146_dev.0*)** %220, align 8
  %222 = icmp ne i64 (%struct.saa7146_dev.0*)* %221, null
  br i1 %222, label %223, label %235

223:                                              ; preds = %163
  %224 = load %struct.saa7146_extension*, %struct.saa7146_extension** %6, align 8
  %225 = getelementptr inbounds %struct.saa7146_extension, %struct.saa7146_extension* %224, i32 0, i32 1
  %226 = load i64 (%struct.saa7146_dev.0*)*, i64 (%struct.saa7146_dev.0*)** %225, align 8
  %227 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %228 = bitcast %struct.saa7146_dev.1* %227 to %struct.saa7146_dev.0*
  %229 = call i64 %226(%struct.saa7146_dev.0* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %223
  %232 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %233 = bitcast %struct.saa7146_dev.1* %232 to i8*
  %234 = call i32 @DEB_D(i8* %233)
  br label %263

235:                                              ; preds = %223, %163
  %236 = load %struct.saa7146_extension*, %struct.saa7146_extension** %6, align 8
  %237 = getelementptr inbounds %struct.saa7146_extension, %struct.saa7146_extension* %236, i32 0, i32 0
  %238 = load i64 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)*, i64 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)** %237, align 8
  %239 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %240 = bitcast %struct.saa7146_dev.1* %239 to %struct.saa7146_dev*
  %241 = load %struct.saa7146_pci_extension_data*, %struct.saa7146_pci_extension_data** %5, align 8
  %242 = call i64 %238(%struct.saa7146_dev* %240, %struct.saa7146_pci_extension_data* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %235
  %245 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %246 = bitcast %struct.saa7146_dev.1* %245 to i8*
  %247 = call i32 @DEB_D(i8* %246)
  br label %263

248:                                              ; preds = %235
  %249 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %250 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %251 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %250, i32 0, i32 6
  %252 = call i32 @pci_set_drvdata(%struct.pci_dev* %249, i32* %251)
  %253 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %254 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %253, i32 0, i32 5
  %255 = call i32 @INIT_LIST_HEAD(i32* %254)
  %256 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %257 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %256, i32 0, i32 5
  %258 = call i32 @list_add_tail(i32* %257, i32* @saa7146_devices)
  %259 = load i32, i32* @saa7146_num, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* @saa7146_num, align 4
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %317, %248, %22
  %262 = load i32, i32* %8, align 4
  ret i32 %262

263:                                              ; preds = %244, %231
  %264 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %265 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %266 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %267 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %271 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @pci_free_consistent(%struct.pci_dev* %264, i32 %265, i8* %269, i32 %273)
  br label %275

275:                                              ; preds = %263, %162
  %276 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %277 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %278 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %279 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %283 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @pci_free_consistent(%struct.pci_dev* %276, i32 %277, i8* %281, i32 %285)
  br label %287

287:                                              ; preds = %275, %140
  %288 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %289 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %290 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %291 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %295 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @pci_free_consistent(%struct.pci_dev* %288, i32 %289, i8* %293, i32 %297)
  br label %299

299:                                              ; preds = %287, %118
  %300 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %301 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %304 = bitcast %struct.saa7146_dev.1* %303 to i8*
  %305 = call i32 @free_irq(i32 %302, i8* %304)
  br label %306

306:                                              ; preds = %299, %99
  %307 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %308 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @iounmap(i32 %309)
  br label %311

311:                                              ; preds = %306, %71
  %312 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %313 = call i32 @pci_release_region(%struct.pci_dev* %312, i32 0)
  br label %314

314:                                              ; preds = %311, %58, %47
  %315 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %316 = call i32 @pci_disable_device(%struct.pci_dev* %315)
  br label %317

317:                                              ; preds = %314, %32
  %318 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %319 = call i32 @kfree(%struct.saa7146_dev.1* %318)
  br label %261
}

declare dso_local %struct.saa7146_dev.1* @kzalloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev.1*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.saa7146_dev.1*) #1

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @INFO(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i8*, i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.saa7146_dev.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
