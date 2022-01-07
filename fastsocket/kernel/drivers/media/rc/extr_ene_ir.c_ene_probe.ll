; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_device_id = type { i32 }
%struct.rc_dev = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ene_device*, i32, i32 }
%struct.ene_device = type { i32, i32, i32, %struct.rc_dev*, i32, i32, %struct.pnp_dev*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENE_IO_SIZE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENE_DRIVER_NAME = common dso_local global i32 0, align 4
@ene_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@ENE_DEFAULT_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@txsim = common dso_local global i64 0, align 8
@ene_tx_irqsim = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Simulation of TX activated\00", align 1
@learning_mode_force = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@RC_TYPE_ALL = common dso_local global i32 0, align 4
@ene_open = common dso_local global i32 0, align 4
@ene_close = common dso_local global i32 0, align 4
@ene_set_idle = common dso_local global i32 0, align 4
@RC_MAP_RC6_MCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ENE eHome Infrared Remote Receiver\00", align 1
@ene_set_learning_mode = common dso_local global i32 0, align 4
@ene_transmit = common dso_local global i32 0, align 4
@ene_set_tx_mask = common dso_local global i32 0, align 4
@ene_set_tx_carrier = common dso_local global i32 0, align 4
@ene_set_tx_duty_cycle = common dso_local global i32 0, align 4
@ene_set_carrier_report = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"ENE eHome Infrared Remote Transceiver\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"driver has been succesfully loaded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @ene_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_probe(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca %struct.ene_device*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ene_device* @kzalloc(i32 48, i32 %11)
  store %struct.ene_device* %12, %struct.ene_device** %8, align 8
  %13 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %13, %struct.rc_dev** %7, align 8
  %14 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %15 = icmp ne %struct.ene_device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %18 = icmp ne %struct.rc_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %232

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %24 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %26 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  %27 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %28 = call i32 @pnp_port_valid(%struct.pnp_dev* %27, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %32 = call i64 @pnp_port_len(%struct.pnp_dev* %31, i32 0)
  %33 = load i64, i64* @ENE_IO_SIZE, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %20
  br label %203

36:                                               ; preds = %30
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %38 = call i32 @pnp_irq_valid(%struct.pnp_dev* %37, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %203

41:                                               ; preds = %36
  %42 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %43 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %42, i32 0, i32 7
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %48 = call i32 @pnp_port_start(%struct.pnp_dev* %47, i32 0)
  %49 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %50 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %52 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @ENE_IO_SIZE, align 8
  %55 = load i32, i32* @ENE_DRIVER_NAME, align 4
  %56 = call i32 @request_region(i32 %53, i64 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %41
  %59 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %60 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  %61 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %62 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %61, i32 0, i32 1
  store i32 -1, i32* %62, align 4
  br label %203

63:                                               ; preds = %41
  %64 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %65 = call i32 @pnp_irq(%struct.pnp_dev* %64, i32 0)
  %66 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %67 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %69 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ene_isr, align 4
  %72 = load i32, i32* @IRQF_SHARED, align 4
  %73 = load i32, i32* @ENE_DRIVER_NAME, align 4
  %74 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %75 = bitcast %struct.ene_device* %74 to i8*
  %76 = call i64 @request_irq(i32 %70, i32 %71, i32 %72, i32 %73, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %80 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  br label %203

81:                                               ; preds = %63
  %82 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %83 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %84 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %82, %struct.ene_device* %83)
  %85 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %86 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %87 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %86, i32 0, i32 6
  store %struct.pnp_dev* %85, %struct.pnp_dev** %87, align 8
  %88 = load i32, i32* @sample_period, align 4
  %89 = icmp slt i32 %88, 5
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @sample_period, align 4
  %92 = icmp sgt i32 %91, 127
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %81
  %94 = load i32, i32* @ENE_DEFAULT_SAMPLE_PERIOD, align 4
  store i32 %94, i32* @sample_period, align 4
  br label %95

95:                                               ; preds = %93, %90
  %96 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %97 = call i32 @ene_hw_detect(%struct.ene_device* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %203

101:                                              ; preds = %95
  %102 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %103 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %101
  %107 = load i64, i64* @txsim, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %111 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %113 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %112, i32 0, i32 5
  %114 = load i32, i32* @ene_tx_irqsim, align 4
  %115 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %116 = ptrtoint %struct.ene_device* %115 to i64
  %117 = call i32 @setup_timer(i32* %113, i32 %114, i64 %116)
  %118 = call i32 @ene_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %109, %106, %101
  %120 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %121 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  store i32 0, i32* @learning_mode_force, align 4
  br label %125

125:                                              ; preds = %124, %119
  %126 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %127 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %128 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %127, i32 0, i32 14
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @RC_TYPE_ALL, align 4
  %130 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %131 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %130, i32 0, i32 13
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %133 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %134 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %133, i32 0, i32 12
  store %struct.ene_device* %132, %struct.ene_device** %134, align 8
  %135 = load i32, i32* @ene_open, align 4
  %136 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %137 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %136, i32 0, i32 11
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @ene_close, align 4
  %139 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %140 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %139, i32 0, i32 10
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @ene_set_idle, align 4
  %142 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %143 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %142, i32 0, i32 9
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* @ENE_DRIVER_NAME, align 4
  %145 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %146 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @RC_MAP_RC6_MCE, align 4
  %148 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %149 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 8
  %150 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %151 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %150, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %151, align 8
  %152 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %153 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %180

156:                                              ; preds = %125
  %157 = load i32, i32* @ene_set_learning_mode, align 4
  %158 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %159 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 4
  %160 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %161 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %160, i32 0, i32 4
  %162 = call i32 @init_completion(i32* %161)
  %163 = load i32, i32* @ene_transmit, align 4
  %164 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %165 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @ene_set_tx_mask, align 4
  %167 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %168 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @ene_set_tx_carrier, align 4
  %170 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %171 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @ene_set_tx_duty_cycle, align 4
  %173 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %174 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @ene_set_carrier_report, align 4
  %176 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %177 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %179 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %178, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** %179, align 8
  br label %180

180:                                              ; preds = %156, %125
  %181 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %182 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %183 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %182, i32 0, i32 3
  store %struct.rc_dev* %181, %struct.rc_dev** %183, align 8
  %184 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %185 = call i32 @ene_rx_setup_hw_buffer(%struct.ene_device* %184)
  %186 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %187 = call i32 @ene_setup_default_settings(%struct.ene_device* %186)
  %188 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %189 = call i32 @ene_setup_hw_settings(%struct.ene_device* %188)
  %190 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %191 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %190, i32 0, i32 0
  %192 = call i32 @device_set_wakeup_capable(i32* %191, i32 1)
  %193 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %194 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %193, i32 0, i32 0
  %195 = call i32 @device_set_wakeup_enable(i32* %194, i32 1)
  %196 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %197 = call i32 @rc_register_device(%struct.rc_dev* %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %180
  br label %203

201:                                              ; preds = %180
  %202 = call i32 @ene_notice(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %238

203:                                              ; preds = %200, %100, %78, %58, %40, %35
  %204 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %205 = icmp ne %struct.ene_device* %204, null
  br i1 %205, label %206, label %217

206:                                              ; preds = %203
  %207 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %208 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %213 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %216 = call i32 @free_irq(i32 %214, %struct.ene_device* %215)
  br label %217

217:                                              ; preds = %211, %206, %203
  %218 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %219 = icmp ne %struct.ene_device* %218, null
  br i1 %219, label %220, label %231

220:                                              ; preds = %217
  %221 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %222 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %227 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i64, i64* @ENE_IO_SIZE, align 8
  %230 = call i32 @release_region(i32 %228, i64 %229)
  br label %231

231:                                              ; preds = %225, %220, %217
  br label %232

232:                                              ; preds = %231, %19
  %233 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %234 = call i32 @rc_free_device(%struct.rc_dev* %233)
  %235 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %236 = call i32 @kfree(%struct.ene_device* %235)
  %237 = load i32, i32* %6, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %232, %201
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.ene_device* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #1

declare dso_local i32 @pnp_port_valid(%struct.pnp_dev*, i32) #1

declare dso_local i64 @pnp_port_len(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq_valid(%struct.pnp_dev*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i32 @request_region(i32, i64, i32) #1

declare dso_local i32 @pnp_irq(%struct.pnp_dev*, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @pnp_set_drvdata(%struct.pnp_dev*, %struct.ene_device*) #1

declare dso_local i32 @ene_hw_detect(%struct.ene_device*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @ene_warn(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ene_rx_setup_hw_buffer(%struct.ene_device*) #1

declare dso_local i32 @ene_setup_default_settings(%struct.ene_device*) #1

declare dso_local i32 @ene_setup_hw_settings(%struct.ene_device*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @ene_notice(i8*) #1

declare dso_local i32 @free_irq(i32, %struct.ene_device*) #1

declare dso_local i32 @release_region(i32, i64) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.ene_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
