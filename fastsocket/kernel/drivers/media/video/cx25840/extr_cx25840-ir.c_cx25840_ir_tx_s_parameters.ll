; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_tx_s_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_tx_s_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_ir_parameters = type { i64, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64 }
%struct.cx25840_ir_state = type { i32, i32, %struct.v4l2_subdev_ir_parameters, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@FIFO_RXTX = common dso_local global i32 0, align 4
@TX_FIFO_HALF_EMPTY = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* @cx25840_ir_tx_s_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_ir_tx_s_parameters(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_ir_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_ir_parameters*, align 8
  %6 = alloca %struct.cx25840_ir_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.v4l2_subdev_ir_parameters*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_ir_parameters* %1, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev* %10)
  store %struct.cx25840_ir_state* %11, %struct.cx25840_ir_state** %6, align 8
  %12 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %13 = icmp eq %struct.cx25840_ir_state* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %189

17:                                               ; preds = %2
  %18 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %18, i32 0, i32 11
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = call i32 @cx25840_ir_tx_shutdown(%struct.v4l2_subdev* %23)
  store i32 %24, i32* %3, align 4
  br label %189

25:                                               ; preds = %17
  %26 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %189

34:                                               ; preds = %25
  %35 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %36 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %35, i32 0, i32 3
  %37 = load %struct.i2c_client*, %struct.i2c_client** %36, align 8
  store %struct.i2c_client* %37, %struct.i2c_client** %7, align 8
  %38 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %39 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %38, i32 0, i32 2
  store %struct.v4l2_subdev_ir_parameters* %39, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %40 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %41 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %43, i32 0, i32 11
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %46, i32 0, i32 11
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %49 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %56, i32 0, i32 1
  store i32 4, i32* %57, align 8
  %58 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %64 = call i32 @irqenable_tx(%struct.v4l2_subdev* %63, i32 0)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %66 = call i32 @control_tx_enable(%struct.i2c_client* %65, i32 0)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %68 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @control_tx_modulation_enable(%struct.i2c_client* %67, i32 %70)
  %72 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %34
  %82 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %83 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @txclk_tx_s_carrier(%struct.i2c_client* %82, i32 %85, i32* %9)
  %87 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 4
  %89 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 4
  %94 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %95 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cduty_tx_s_duty_cycle(%struct.i2c_client* %94, i32 %97)
  %99 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %102 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %105 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @FIFO_RXTX, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @pulse_width_count_to_ns(i32 %106, i32 %107)
  %109 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %109, i32 0, i32 7
  store i64 %108, i64* %110, align 8
  br label %119

111:                                              ; preds = %34
  %112 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %113 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @txclk_tx_s_max_pulse_width(%struct.i2c_client* %112, i64 %115, i32* %9)
  %117 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %117, i32 0, i32 7
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %111, %81
  %120 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %123, i32 0, i32 7
  store i64 %122, i64* %124, align 8
  %125 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %126 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %125, i32 0, i32 1
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @atomic_set(i32* %126, i32 %127)
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @clock_divider_to_resolution(i32 %129)
  %131 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %132 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  %133 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %134 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %137 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %139 = load i32, i32* @TX_FIFO_HALF_EMPTY, align 4
  %140 = call i32 @control_tx_irq_watermark(%struct.i2c_client* %138, i32 %139)
  %141 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %142 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %143 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @control_tx_polarity_invert(%struct.i2c_client* %141, i32 %144)
  %146 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %147 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %150 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %152 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %155 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %157 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %160 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  %161 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %162 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %165 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %167 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %119
  %171 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %172 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %177 = load i32, i32* @IRQEN_TSE, align 4
  %178 = call i32 @irqenable_tx(%struct.v4l2_subdev* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %170
  %180 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %181 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %182 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @control_tx_enable(%struct.i2c_client* %180, i32 %183)
  br label %185

185:                                              ; preds = %179, %119
  %186 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %187 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %186, i32 0, i32 0
  %188 = call i32 @mutex_unlock(i32* %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %185, %31, %22, %14
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_ir_tx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqenable_tx(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @control_tx_enable(%struct.i2c_client*, i32) #1

declare dso_local i32 @control_tx_modulation_enable(%struct.i2c_client*, i32) #1

declare dso_local i32 @txclk_tx_s_carrier(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @cduty_tx_s_duty_cycle(%struct.i2c_client*, i32) #1

declare dso_local i64 @pulse_width_count_to_ns(i32, i32) #1

declare dso_local i64 @txclk_tx_s_max_pulse_width(%struct.i2c_client*, i64, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @clock_divider_to_resolution(i32) #1

declare dso_local i32 @control_tx_irq_watermark(%struct.i2c_client*, i32) #1

declare dso_local i32 @control_tx_polarity_invert(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
