; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_pci_mem_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_pci_mem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_3__, i8*, i8*, i8*, %struct.pci_dev* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@LPFC_SLI_INTF = common dso_local global i32 0, align 4
@lpfc_sli_intf_valid = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_VALID = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"2894 SLI_INTF reg contents invalid sli_intf reg 0x%x\0A\00", align 1
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"ioremap failed for SLI4 PCI config registers.\0A\00", align 1
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"FATAL - No BAR0 mapping for SLI4, if_type 2\0A\00", align 1
@LPFC_SLI_INTF_IF_TYPE_0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"ioremap failed for SLI4 HBA control registers.\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"ioremap failed for SLI4 HBA doorbell registers.\0A\00", align 1
@LPFC_VF0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_pci_mem_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_pci_mem_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %239

18:                                               ; preds = %1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %4, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @DMA_BIT_MASK(i32 64)
  %25 = call i64 @pci_set_dma_mask(%struct.pci_dev* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @DMA_BIT_MASK(i32 32)
  %30 = call i64 @pci_set_dma_mask(%struct.pci_dev* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %239

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* @LPFC_SLI_INTF, align 4
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i64 @pci_read_config_dword(%struct.pci_dev* %36, i32 %37, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %239

46:                                               ; preds = %35
  %47 = load i32, i32* @lpfc_sli_intf_valid, align 4
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = call i64 @bf_get(i32 %47, %struct.TYPE_4__* %50)
  %52 = load i64, i64* @LPFC_SLI_INTF_VALID, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load i32, i32* @LOG_INIT, align 4
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %239

65:                                               ; preds = %46
  %66 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = call i64 @bf_get(i32 %66, %struct.TYPE_4__* %69)
  store i64 %70, i64* %9, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = call i8* @pci_resource_start(%struct.pci_dev* %71, i32 0)
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %103

74:                                               ; preds = %65
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i8* @pci_resource_start(%struct.pci_dev* %75, i32 0)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = call i64 @pci_resource_len(%struct.pci_dev* %79, i32 0)
  store i64 %80, i64* %5, align 8
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i8* @ioremap(i8* %83, i64 %84)
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %74
  %95 = load i32, i32* @KERN_ERR, align 4
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = call i32 @dev_printk(i32 %95, i32* %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %237

99:                                               ; preds = %74
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @lpfc_sli4_bar0_register_memmap(%struct.lpfc_hba* %100, i64 %101)
  br label %141

103:                                              ; preds = %65
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = call i8* @pci_resource_start(%struct.pci_dev* %104, i32 1)
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = call i64 @pci_resource_len(%struct.pci_dev* %108, i32 1)
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = call i32 @dev_printk(i32 %114, i32* %116, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %237

118:                                              ; preds = %103
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i8* @ioremap(i8* %121, i64 %122)
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %118
  %133 = load i32, i32* @KERN_ERR, align 4
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = call i32 @dev_printk(i32 %133, i32* %135, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %237

137:                                              ; preds = %118
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @lpfc_sli4_bar0_register_memmap(%struct.lpfc_hba* %138, i64 %139)
  br label %141

141:                                              ; preds = %137, %99
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_0, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %177

145:                                              ; preds = %141
  %146 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %147 = call i8* @pci_resource_start(%struct.pci_dev* %146, i32 2)
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %177

149:                                              ; preds = %145
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = call i8* @pci_resource_start(%struct.pci_dev* %150, i32 2)
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = call i64 @pci_resource_len(%struct.pci_dev* %154, i32 2)
  store i64 %155, i64* %6, align 8
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load i64, i64* %6, align 8
  %160 = call i8* @ioremap(i8* %158, i64 %159)
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %162 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %149
  %170 = load i32, i32* @KERN_ERR, align 4
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 0
  %173 = call i32 @dev_printk(i32 %170, i32* %172, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %231

174:                                              ; preds = %149
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %176 = call i32 @lpfc_sli4_bar1_register_memmap(%struct.lpfc_hba* %175)
  br label %177

177:                                              ; preds = %174, %145, %141
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_0, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %218

181:                                              ; preds = %177
  %182 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %183 = call i8* @pci_resource_start(%struct.pci_dev* %182, i32 4)
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %218

185:                                              ; preds = %181
  %186 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %187 = call i8* @pci_resource_start(%struct.pci_dev* %186, i32 4)
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %189 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %191 = call i64 @pci_resource_len(%struct.pci_dev* %190, i32 4)
  store i64 %191, i64* %7, align 8
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %193 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i64, i64* %7, align 8
  %196 = call i8* @ioremap(i8* %194, i64 %195)
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %198 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  store i8* %196, i8** %199, align 8
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %185
  %206 = load i32, i32* @KERN_ERR, align 4
  %207 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %208 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %207, i32 0, i32 0
  %209 = call i32 @dev_printk(i32 %206, i32* %208, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %225

210:                                              ; preds = %185
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %212 = load i32, i32* @LPFC_VF0, align 4
  %213 = call i32 @lpfc_sli4_bar2_register_memmap(%struct.lpfc_hba* %211, i32 %212)
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %8, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %219

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %181, %177
  store i32 0, i32* %2, align 4
  br label %239

219:                                              ; preds = %216
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %221 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 2
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @iounmap(i8* %223)
  br label %225

225:                                              ; preds = %219, %205
  %226 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %227 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @iounmap(i8* %229)
  br label %231

231:                                              ; preds = %225, %169
  %232 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %233 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @iounmap(i8* %235)
  br label %237

237:                                              ; preds = %231, %132, %113, %94
  %238 = load i32, i32* %8, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %237, %218, %54, %44, %32, %16
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @bf_get(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap(i8*, i64) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @lpfc_sli4_bar0_register_memmap(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_sli4_bar1_register_memmap(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_bar2_register_memmap(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
