; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_rx_s_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_rx_s_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_ir_parameters = type { i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.cx23888_ir_state = type { i32, i32, i32, i32, %struct.v4l2_subdev_ir_parameters, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }

@V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@FIFO_RXTX = common dso_local global i32 0, align 4
@RX_FIFO_HALF_FULL = common dso_local global i32 0, align 4
@CNTRL_EDG_BOTH = common dso_local global i32 0, align 4
@IRQEN_RSE = common dso_local global i32 0, align 4
@IRQEN_RTE = common dso_local global i32 0, align 4
@IRQEN_ROE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* @cx23888_ir_rx_s_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23888_ir_rx_s_parameters(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_ir_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_ir_parameters*, align 8
  %6 = alloca %struct.cx23888_ir_state*, align 8
  %7 = alloca %struct.cx23885_dev*, align 8
  %8 = alloca %struct.v4l2_subdev_ir_parameters*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_ir_parameters* %1, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.cx23888_ir_state* %11, %struct.cx23888_ir_state** %6, align 8
  %12 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %13 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %12, i32 0, i32 5
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %13, align 8
  store %struct.cx23885_dev* %14, %struct.cx23885_dev** %7, align 8
  %15 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %16 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %15, i32 0, i32 4
  store %struct.v4l2_subdev_ir_parameters* %16, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %17 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %17, i32 0, i32 13
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = call i32 @cx23888_ir_rx_shutdown(%struct.v4l2_subdev* %22)
  store i32 %23, i32* %3, align 4
  br label %207

24:                                               ; preds = %2
  %25 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %207

33:                                               ; preds = %24
  %34 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %35 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %37, i32 0, i32 13
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %40, i32 0, i32 13
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %43 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %45, i32 0, i32 0
  store i64 %42, i64* %46, align 8
  %47 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %47, i32 0, i32 1
  store i32 4, i32* %48, align 8
  %49 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %49, i32 0, i32 1
  store i32 4, i32* %50, align 8
  %51 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %52 = call i32 @irqenable_rx(%struct.cx23885_dev* %51, i32 0)
  %53 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %54 = call i32 @control_rx_enable(%struct.cx23885_dev* %53, i32 0)
  %55 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %56 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @control_rx_demodulation_enable(%struct.cx23885_dev* %55, i32 %58)
  %60 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %63, i32 0, i32 12
  store i32 %62, i32* %64, align 4
  %65 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %33
  %70 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %71 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @rxclk_rx_s_carrier(%struct.cx23885_dev* %70, i32 %73, i32* %9)
  %75 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 8
  %77 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %80, i32 0, i32 11
  store i32 %79, i32* %81, align 8
  %82 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %82, i32 0, i32 2
  store i32 50, i32* %83, align 4
  %84 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %84, i32 0, i32 2
  store i32 50, i32* %85, align 4
  %86 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %87 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %90, i32 0, i32 10
  %92 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %92, i32 0, i32 9
  %94 = call i32 @control_rx_s_carrier_window(%struct.cx23885_dev* %86, i32 %89, i32* %91, i32* %93)
  %95 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 4
  %100 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @FIFO_RXTX, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i64 @pulse_width_count_to_ns(i32 %105, i32 %106)
  %108 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %109 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %108, i32 0, i32 8
  store i64 %107, i64* %109, align 8
  br label %118

110:                                              ; preds = %33
  %111 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %112 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %113 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @rxclk_rx_s_max_pulse_width(%struct.cx23885_dev* %111, i64 %114, i32* %9)
  %116 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %117 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %116, i32 0, i32 8
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %110, %69
  %119 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %120 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %119, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %123 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %122, i32 0, i32 8
  store i64 %121, i64* %123, align 8
  %124 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %125 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %124, i32 0, i32 3
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @atomic_set(i32* %125, i32 %126)
  %128 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %129 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %130 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @filter_rx_s_min_width(%struct.cx23885_dev* %128, i32 %131)
  %133 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %134 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 8
  %135 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %136 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %139 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @clock_divider_to_resolution(i32 %140)
  %142 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %143 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 4
  %144 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %148 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 4
  %149 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %150 = load i32, i32* @RX_FIFO_HALF_FULL, align 4
  %151 = call i32 @control_rx_irq_watermark(%struct.cx23885_dev* %149, i32 %150)
  %152 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %153 = load i32, i32* @CNTRL_EDG_BOTH, align 4
  %154 = call i32 @control_rx_s_edge_detection(%struct.cx23885_dev* %152, i32 %153)
  %155 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %156 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %159 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 8
  %160 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %161 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %160, i32 0, i32 2
  %162 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %163 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @atomic_set(i32* %161, i32 %164)
  %166 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %167 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %170 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %169, i32 0, i32 4
  store i64 %168, i64* %170, align 8
  %171 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %172 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %175 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 8
  %176 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %177 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %203

180:                                              ; preds = %118
  %181 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %182 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @kfifo_reset(i32 %183)
  %185 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %186 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %180
  %190 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %191 = load i32, i32* @IRQEN_RSE, align 4
  %192 = load i32, i32* @IRQEN_RTE, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @IRQEN_ROE, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @irqenable_rx(%struct.cx23885_dev* %190, i32 %195)
  br label %197

197:                                              ; preds = %189, %180
  %198 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %199 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %200 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @control_rx_enable(%struct.cx23885_dev* %198, i32 %201)
  br label %203

203:                                              ; preds = %197, %118
  %204 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %205 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %204, i32 0, i32 0
  %206 = call i32 @mutex_unlock(i32* %205)
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %203, %30, %21
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx23888_ir_rx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqenable_rx(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_rx_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_rx_demodulation_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @rxclk_rx_s_carrier(%struct.cx23885_dev*, i32, i32*) #1

declare dso_local i32 @control_rx_s_carrier_window(%struct.cx23885_dev*, i32, i32*, i32*) #1

declare dso_local i64 @pulse_width_count_to_ns(i32, i32) #1

declare dso_local i64 @rxclk_rx_s_max_pulse_width(%struct.cx23885_dev*, i64, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @filter_rx_s_min_width(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @clock_divider_to_resolution(i32) #1

declare dso_local i32 @control_rx_irq_watermark(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_rx_s_edge_detection(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @kfifo_reset(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
