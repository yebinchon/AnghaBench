; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.mfd_cell = type { %struct.tmio_nand_data* }
%struct.tmio_nand_data = type { i32, %struct.mtd_partition*, i32 }
%struct.mtd_partition = type { i32 }
%struct.resource = type { i32, i32 }
%struct.tmio_nand = type { i32, i32, i8*, i8*, %struct.nand_chip, %struct.mtd_info, %struct.platform_device* }
%struct.nand_chip = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i8*, %struct.nand_chip* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NULL platform data!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"tmio-nand\00", align 1
@EIO = common dso_local global i32 0, align 4
@tmio_nand_hwcontrol = common dso_local global i32 0, align 4
@tmio_nand_dev_ready = common dso_local global i32 0, align 4
@tmio_nand_read_byte = common dso_local global i32 0, align 4
@tmio_nand_write_buf = common dso_local global i32 0, align 4
@tmio_nand_read_buf = common dso_local global i32 0, align 4
@tmio_nand_verify_buf = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@tmio_nand_enable_hwecc = common dso_local global i32 0, align 4
@tmio_nand_calculate_ecc = common dso_local global i32 0, align 4
@tmio_nand_correct_data = common dso_local global i32 0, align 4
@tmio_irq = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"request_irq error %d\0A\00", align 1
@tmio_nand_wait = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@part_probes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tmio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  %5 = alloca %struct.tmio_nand_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tmio_nand*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.nand_chip*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mfd_cell*
  store %struct.mfd_cell* %17, %struct.mfd_cell** %4, align 8
  %18 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %19 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %18, i32 0, i32 0
  %20 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %19, align 8
  store %struct.tmio_nand_data* %20, %struct.tmio_nand_data** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %6, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 1)
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @platform_get_irq(%struct.platform_device* %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %5, align 8
  %30 = icmp eq %struct.tmio_nand_data* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_warn(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.tmio_nand* @kzalloc(i32 128, i32 %36)
  store %struct.tmio_nand* %37, %struct.tmio_nand** %9, align 8
  %38 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %39 = icmp ne %struct.tmio_nand* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %243

43:                                               ; preds = %35
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %46 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %45, i32 0, i32 6
  store %struct.platform_device* %44, %struct.platform_device** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %49 = call i32 @platform_set_drvdata(%struct.platform_device* %47, %struct.tmio_nand* %48)
  %50 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %51 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %50, i32 0, i32 5
  store %struct.mtd_info* %51, %struct.mtd_info** %10, align 8
  %52 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %53 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %52, i32 0, i32 4
  store %struct.nand_chip* %53, %struct.nand_chip** %11, align 8
  %54 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %55 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 1
  store %struct.nand_chip* %54, %struct.nand_chip** %56, align 8
  %57 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.resource*, %struct.resource** %7, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.resource*, %struct.resource** %7, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = add nsw i32 %68, 1
  %70 = call i8* @ioremap(i32 %61, i32 %69)
  %71 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %72 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %74 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %43
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  br label %240

80:                                               ; preds = %43
  %81 = load %struct.resource*, %struct.resource** %6, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 1048575
  %85 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %86 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.resource*, %struct.resource** %6, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.resource*, %struct.resource** %6, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.resource*, %struct.resource** %6, align 8
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = add nsw i32 %96, 1
  %98 = call i8* @ioremap(i32 %89, i32 %97)
  %99 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %100 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %102 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %80
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %12, align 4
  br label %235

108:                                              ; preds = %80
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %111 = call i32 @tmio_hw_init(%struct.platform_device* %109, %struct.tmio_nand* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %230

115:                                              ; preds = %108
  %116 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %117 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %120 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %119, i32 0, i32 11
  store i8* %118, i8** %120, align 8
  %121 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %122 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %125 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %124, i32 0, i32 10
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* @tmio_nand_hwcontrol, align 4
  %127 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %128 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @tmio_nand_dev_ready, align 4
  %130 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %131 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @tmio_nand_read_byte, align 4
  %133 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %134 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @tmio_nand_write_buf, align 4
  %136 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %137 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @tmio_nand_read_buf, align 4
  %139 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %140 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @tmio_nand_verify_buf, align 4
  %142 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %143 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @NAND_ECC_HW, align 4
  %145 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %146 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  store i32 %144, i32* %147, align 4
  %148 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %149 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i32 512, i32* %150, align 4
  %151 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %152 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 6, i32* %153, align 4
  %154 = load i32, i32* @tmio_nand_enable_hwecc, align 4
  %155 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %156 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* @tmio_nand_calculate_ecc, align 4
  %159 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %160 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  store i32 %158, i32* %161, align 4
  %162 = load i32, i32* @tmio_nand_correct_data, align 4
  %163 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %164 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  store i32 %162, i32* %165, align 4
  %166 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %5, align 8
  %167 = icmp ne %struct.tmio_nand_data* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %115
  %169 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %5, align 8
  %170 = getelementptr inbounds %struct.tmio_nand_data, %struct.tmio_nand_data* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %173 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %168, %115
  %175 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %176 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %175, i32 0, i32 0
  store i32 15, i32* %176, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @IRQF_DISABLED, align 4
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 @dev_name(%struct.TYPE_6__* %180)
  %182 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %183 = call i32 @request_irq(i32 %177, i32* @tmio_irq, i32 %178, i32 %181, %struct.tmio_nand* %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %174
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @dev_err(%struct.TYPE_6__* %188, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %189)
  br label %226

191:                                              ; preds = %174
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %194 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @tmio_nand_wait, align 4
  %196 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %197 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %199 = call i64 @nand_scan(%struct.mtd_info* %198, i32 1)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %191
  %202 = load i32, i32* @ENODEV, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %12, align 4
  br label %214

204:                                              ; preds = %191
  %205 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %206 = call i32 @add_mtd_device(%struct.mtd_info* %205)
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %2, align 4
  br label %245

211:                                              ; preds = %204
  %212 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %213 = call i32 @nand_release(%struct.mtd_info* %212)
  br label %214

214:                                              ; preds = %211, %201
  %215 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %216 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %221 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %224 = call i32 @free_irq(i32 %222, %struct.tmio_nand* %223)
  br label %225

225:                                              ; preds = %219, %214
  br label %226

226:                                              ; preds = %225, %186
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %229 = call i32 @tmio_hw_stop(%struct.platform_device* %227, %struct.tmio_nand* %228)
  br label %230

230:                                              ; preds = %226, %114
  %231 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %232 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %231, i32 0, i32 3
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @iounmap(i8* %233)
  br label %235

235:                                              ; preds = %230, %105
  %236 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %237 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %236, i32 0, i32 2
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @iounmap(i8* %238)
  br label %240

240:                                              ; preds = %235, %77
  %241 = load %struct.tmio_nand*, %struct.tmio_nand** %9, align 8
  %242 = call i32 @kfree(%struct.tmio_nand* %241)
  br label %243

243:                                              ; preds = %240, %40
  %244 = load i32, i32* %12, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %243, %209
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.tmio_nand* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tmio_nand*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @tmio_hw_init(%struct.platform_device*, %struct.tmio_nand*) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.tmio_nand*) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @nand_scan(%struct.mtd_info*, i32) #1

declare dso_local i32 @add_mtd_device(%struct.mtd_info*) #1

declare dso_local i32 @nand_release(%struct.mtd_info*) #1

declare dso_local i32 @free_irq(i32, %struct.tmio_nand*) #1

declare dso_local i32 @tmio_hw_stop(%struct.platform_device*, %struct.tmio_nand*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @kfree(%struct.tmio_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
