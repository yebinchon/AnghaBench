; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_device_id = type { i32 }
%struct.nvt_dev = type { i8*, i64, i8*, i64, %struct.rc_dev*, i32, i32, %struct.TYPE_3__, %struct.pnp_dev*, i32, i32, i32, i32 }
%struct.rc_dev = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.nvt_dev* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CIR_IOREG_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"IR PNP Port not valid!\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PNP IRQ not valid!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Wake PNP Port not valid!\0A\00", align 1
@CR_EFIR = common dso_local global i32 0, align 4
@CR_EFDR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NVT_DRIVER_NAME = common dso_local global i32 0, align 4
@nvt_cir_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@nvt_cir_wake_isr = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@RC_TYPE_ALL = common dso_local global i32 0, align 4
@nvt_open = common dso_local global i32 0, align 4
@nvt_close = common dso_local global i32 0, align 4
@nvt_tx_ir = common dso_local global i32 0, align 4
@nvt_set_tx_carrier = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Nuvoton w836x7hg Infrared Remote Transceiver\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_WINBOND2 = common dso_local global i32 0, align 4
@RC_MAP_RC6_MCE = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"driver has been successfully loaded\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@XYZ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @nvt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_probe(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca %struct.nvt_dev*, align 8
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nvt_dev* @kzalloc(i32 80, i32 %11)
  store %struct.nvt_dev* %12, %struct.nvt_dev** %6, align 8
  %13 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %14 = icmp ne %struct.nvt_dev* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %288

17:                                               ; preds = %2
  %18 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %18, %struct.rc_dev** %7, align 8
  %19 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %20 = icmp ne %struct.rc_dev* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %238

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %26 = call i32 @pnp_port_valid(%struct.pnp_dev* %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %30 = call i64 @pnp_port_len(%struct.pnp_dev* %29, i32 0)
  %31 = load i64, i64* @CIR_IOREG_LENGTH, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %22
  %34 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %238

37:                                               ; preds = %28
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %39 = call i32 @pnp_irq_valid(%struct.pnp_dev* %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %238

45:                                               ; preds = %37
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %47 = call i32 @pnp_port_valid(%struct.pnp_dev* %46, i32 1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %51 = call i64 @pnp_port_len(%struct.pnp_dev* %50, i32 1)
  %52 = load i64, i64* @CIR_IOREG_LENGTH, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %45
  %55 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %238

58:                                               ; preds = %49
  %59 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %60 = call i8* @pnp_port_start(%struct.pnp_dev* %59, i32 0)
  %61 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %62 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %64 = call i64 @pnp_irq(%struct.pnp_dev* %63, i32 0)
  %65 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %66 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %68 = call i8* @pnp_port_start(%struct.pnp_dev* %67, i32 1)
  %69 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %70 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %72 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %75 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @CR_EFIR, align 4
  %77 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %78 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %77, i32 0, i32 12
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @CR_EFDR, align 4
  %80 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %81 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %80, i32 0, i32 11
  store i32 %79, i32* %81, align 8
  %82 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %83 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %82, i32 0, i32 10
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %86 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %90 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %89, i32 0, i32 9
  %91 = call i32 @init_ir_raw_event(i32* %90)
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %95 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i64, i64* @CIR_IOREG_LENGTH, align 8
  %98 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %99 = call i32 @request_region(i8* %96, i64 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %58
  br label %238

102:                                              ; preds = %58
  %103 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %104 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @nvt_cir_isr, align 4
  %107 = load i32, i32* @IRQF_SHARED, align 4
  %108 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %109 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %110 = bitcast %struct.nvt_dev* %109 to i8*
  %111 = call i64 @request_irq(i64 %105, i32 %106, i32 %107, i32 %108, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %238

114:                                              ; preds = %102
  %115 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %116 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i64, i64* @CIR_IOREG_LENGTH, align 8
  %119 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %120 = call i32 @request_region(i8* %117, i64 %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  br label %238

123:                                              ; preds = %114
  %124 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %125 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @nvt_cir_wake_isr, align 4
  %128 = load i32, i32* @IRQF_SHARED, align 4
  %129 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %130 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %131 = bitcast %struct.nvt_dev* %130 to i8*
  %132 = call i64 @request_irq(i64 %126, i32 %127, i32 %128, i32 %129, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %238

135:                                              ; preds = %123
  %136 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %137 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %138 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %136, %struct.nvt_dev* %137)
  %139 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %140 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %141 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %140, i32 0, i32 8
  store %struct.pnp_dev* %139, %struct.pnp_dev** %141, align 8
  %142 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %143 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = call i32 @init_waitqueue_head(i32* %144)
  %146 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %147 = call i32 @nvt_hw_detect(%struct.nvt_dev* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %135
  br label %238

151:                                              ; preds = %135
  %152 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %153 = call i32 @nvt_efm_enable(%struct.nvt_dev* %152)
  %154 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %155 = call i32 @nvt_cir_ldev_init(%struct.nvt_dev* %154)
  %156 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %157 = call i32 @nvt_cir_wake_ldev_init(%struct.nvt_dev* %156)
  %158 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %159 = call i32 @nvt_efm_disable(%struct.nvt_dev* %158)
  %160 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %161 = call i32 @nvt_cir_regs_init(%struct.nvt_dev* %160)
  %162 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %163 = call i32 @nvt_cir_wake_regs_init(%struct.nvt_dev* %162)
  %164 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %165 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %166 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %165, i32 0, i32 15
  store %struct.nvt_dev* %164, %struct.nvt_dev** %166, align 8
  %167 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %168 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %169 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %168, i32 0, i32 14
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @RC_TYPE_ALL, align 4
  %171 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %172 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %171, i32 0, i32 13
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @nvt_open, align 4
  %174 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %175 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %174, i32 0, i32 12
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @nvt_close, align 4
  %177 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %178 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %177, i32 0, i32 11
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @nvt_tx_ir, align 4
  %180 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %181 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %180, i32 0, i32 10
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @nvt_set_tx_carrier, align 4
  %183 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %184 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %183, i32 0, i32 9
  store i32 %182, i32* %184, align 8
  %185 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %186 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8** %186, align 8
  %187 = load i32, i32* @BUS_HOST, align 4
  %188 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %189 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %188, i32 0, i32 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* @PCI_VENDOR_ID_WINBOND2, align 4
  %192 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %193 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %192, i32 0, i32 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 8
  %195 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %196 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %199 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %198, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  %201 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %202 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %205 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %204, i32 0, i32 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  %207 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %208 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %209 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %208, i32 0, i32 7
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @RC_MAP_RC6_MCE, align 4
  %211 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %212 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %211, i32 0, i32 6
  store i32 %210, i32* %212, align 8
  %213 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %214 = call i32 @rc_register_device(%struct.rc_dev* %213)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %151
  br label %238

218:                                              ; preds = %151
  %219 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %220 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %219, i32 0, i32 0
  %221 = call i32 @device_set_wakeup_capable(i32* %220, i32 1)
  %222 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %223 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %222, i32 0, i32 0
  %224 = call i32 @device_set_wakeup_enable(i32* %223, i32 1)
  %225 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %226 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %227 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %226, i32 0, i32 4
  store %struct.rc_dev* %225, %struct.rc_dev** %227, align 8
  %228 = load i32, i32* @KERN_NOTICE, align 4
  %229 = call i32 @nvt_pr(i32 %228, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %230 = load i64, i64* @debug, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %218
  %233 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %234 = call i32 @cir_dump_regs(%struct.nvt_dev* %233)
  %235 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %236 = call i32 @cir_wake_dump_regs(%struct.nvt_dev* %235)
  br label %237

237:                                              ; preds = %232, %218
  store i32 0, i32* %3, align 4
  br label %288

238:                                              ; preds = %217, %150, %134, %122, %113, %101, %54, %41, %33, %21
  %239 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %240 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %245 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %248 = call i32 @free_irq(i64 %246, %struct.nvt_dev* %247)
  br label %249

249:                                              ; preds = %243, %238
  %250 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %251 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %250, i32 0, i32 2
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %260

254:                                              ; preds = %249
  %255 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %256 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %255, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = load i64, i64* @CIR_IOREG_LENGTH, align 8
  %259 = call i32 @release_region(i8* %257, i64 %258)
  br label %260

260:                                              ; preds = %254, %249
  %261 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %262 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %267 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %270 = call i32 @free_irq(i64 %268, %struct.nvt_dev* %269)
  br label %271

271:                                              ; preds = %265, %260
  %272 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %273 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %282

276:                                              ; preds = %271
  %277 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %278 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = load i64, i64* @CIR_IOREG_LENGTH, align 8
  %281 = call i32 @release_region(i8* %279, i64 %280)
  br label %282

282:                                              ; preds = %276, %271
  %283 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %284 = call i32 @rc_free_device(%struct.rc_dev* %283)
  %285 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %286 = call i32 @kfree(%struct.nvt_dev* %285)
  %287 = load i32, i32* %8, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %282, %237, %15
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local %struct.nvt_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #1

declare dso_local i32 @pnp_port_valid(%struct.pnp_dev*, i32) #1

declare dso_local i64 @pnp_port_len(%struct.pnp_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pnp_irq_valid(%struct.pnp_dev*, i32) #1

declare dso_local i8* @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i64 @pnp_irq(%struct.pnp_dev*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_ir_raw_event(i32*) #1

declare dso_local i32 @request_region(i8*, i64, i32) #1

declare dso_local i64 @request_irq(i64, i32, i32, i32, i8*) #1

declare dso_local i32 @pnp_set_drvdata(%struct.pnp_dev*, %struct.nvt_dev*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @nvt_hw_detect(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_efm_enable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_cir_ldev_init(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_cir_wake_ldev_init(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_efm_disable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_cir_regs_init(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_cir_wake_regs_init(%struct.nvt_dev*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @nvt_pr(i32, i8*) #1

declare dso_local i32 @cir_dump_regs(%struct.nvt_dev*) #1

declare dso_local i32 @cir_wake_dump_regs(%struct.nvt_dev*) #1

declare dso_local i32 @free_irq(i64, %struct.nvt_dev*) #1

declare dso_local i32 @release_region(i8*, i64) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.nvt_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
