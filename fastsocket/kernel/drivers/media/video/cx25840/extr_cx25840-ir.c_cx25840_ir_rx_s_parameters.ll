; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_rx_s_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_rx_s_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_ir_parameters = type { i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.cx25840_ir_state = type { i32, i32, i32, i32, %struct.v4l2_subdev_ir_parameters, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@FIFO_RXTX = common dso_local global i32 0, align 4
@RX_FIFO_HALF_FULL = common dso_local global i32 0, align 4
@CNTRL_EDG_BOTH = common dso_local global i32 0, align 4
@IRQEN_RSE = common dso_local global i32 0, align 4
@IRQEN_RTE = common dso_local global i32 0, align 4
@IRQEN_ROE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* @cx25840_ir_rx_s_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_ir_rx_s_parameters(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_ir_parameters* %1) #0 {
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
  br label %222

17:                                               ; preds = %2
  %18 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %18, i32 0, i32 13
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = call i32 @cx25840_ir_rx_shutdown(%struct.v4l2_subdev* %23)
  store i32 %24, i32* %3, align 4
  br label %222

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
  br label %222

34:                                               ; preds = %25
  %35 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %36 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %35, i32 0, i32 5
  %37 = load %struct.i2c_client*, %struct.i2c_client** %36, align 8
  store %struct.i2c_client* %37, %struct.i2c_client** %7, align 8
  %38 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %39 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %38, i32 0, i32 4
  store %struct.v4l2_subdev_ir_parameters* %39, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %40 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %41 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %46, i32 0, i32 13
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
  %64 = call i32 @irqenable_rx(%struct.v4l2_subdev* %63, i32 0)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %66 = call i32 @control_rx_enable(%struct.i2c_client* %65, i32 0)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %68 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @control_rx_demodulation_enable(%struct.i2c_client* %67, i32 %70)
  %72 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 4
  %77 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %34
  %82 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %83 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @rxclk_rx_s_carrier(%struct.i2c_client* %82, i32 %85, i32* %9)
  %87 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 8
  %89 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %92, i32 0, i32 11
  store i32 %91, i32* %93, align 8
  %94 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %94, i32 0, i32 2
  store i32 50, i32* %95, align 4
  %96 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %100 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %102 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %105, i32 0, i32 10
  %107 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %107, i32 0, i32 9
  %109 = call i32 @control_rx_s_carrier_window(%struct.i2c_client* %101, i32 %104, i32* %106, i32* %108)
  %110 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %111 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %113, i32 0, i32 10
  store i32 %112, i32* %114, align 4
  %115 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %116 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %119 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %118, i32 0, i32 9
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @FIFO_RXTX, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @pulse_width_count_to_ns(i32 %120, i32 %121)
  %123 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %123, i32 0, i32 8
  store i64 %122, i64* %124, align 8
  br label %133

125:                                              ; preds = %34
  %126 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %127 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %128 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @rxclk_rx_s_max_pulse_width(%struct.i2c_client* %126, i64 %129, i32* %9)
  %131 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %132 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %131, i32 0, i32 8
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %125, %81
  %134 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %135 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %138 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %137, i32 0, i32 8
  store i64 %136, i64* %138, align 8
  %139 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %140 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %139, i32 0, i32 3
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @atomic_set(i32* %140, i32 %141)
  %143 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %144 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @filter_rx_s_min_width(%struct.i2c_client* %143, i32 %146)
  %148 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %149 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 8
  %150 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %151 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %154 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @clock_divider_to_resolution(i32 %155)
  %157 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %158 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 4
  %159 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %160 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %163 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 4
  %164 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %165 = load i32, i32* @RX_FIFO_HALF_FULL, align 4
  %166 = call i32 @control_rx_irq_watermark(%struct.i2c_client* %164, i32 %165)
  %167 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %168 = load i32, i32* @CNTRL_EDG_BOTH, align 4
  %169 = call i32 @control_rx_s_edge_detection(%struct.i2c_client* %167, i32 %168)
  %170 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %171 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %174 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  %175 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %176 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %175, i32 0, i32 2
  %177 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %178 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @atomic_set(i32* %176, i32 %179)
  %181 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %182 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %185 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  %186 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %187 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %190 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  %191 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %192 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %218

195:                                              ; preds = %133
  %196 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %197 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @kfifo_reset(i32 %198)
  %200 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %201 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %195
  %205 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %206 = load i32, i32* @IRQEN_RSE, align 4
  %207 = load i32, i32* @IRQEN_RTE, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @IRQEN_ROE, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @irqenable_rx(%struct.v4l2_subdev* %205, i32 %210)
  br label %212

212:                                              ; preds = %204, %195
  %213 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %214 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %215 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @control_rx_enable(%struct.i2c_client* %213, i32 %216)
  br label %218

218:                                              ; preds = %212, %133
  %219 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %220 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %219, i32 0, i32 0
  %221 = call i32 @mutex_unlock(i32* %220)
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %218, %31, %22, %14
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_ir_rx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqenable_rx(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @control_rx_enable(%struct.i2c_client*, i32) #1

declare dso_local i32 @control_rx_demodulation_enable(%struct.i2c_client*, i32) #1

declare dso_local i32 @rxclk_rx_s_carrier(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @control_rx_s_carrier_window(%struct.i2c_client*, i32, i32*, i32*) #1

declare dso_local i64 @pulse_width_count_to_ns(i32, i32) #1

declare dso_local i64 @rxclk_rx_s_max_pulse_width(%struct.i2c_client*, i64, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @filter_rx_s_min_width(%struct.i2c_client*, i32) #1

declare dso_local i32 @clock_divider_to_resolution(i32) #1

declare dso_local i32 @control_rx_irq_watermark(%struct.i2c_client*, i32) #1

declare dso_local i32 @control_rx_s_edge_detection(%struct.i2c_client*, i32) #1

declare dso_local i32 @kfifo_reset(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
