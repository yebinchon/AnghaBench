; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_tx_s_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_tx_s_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_ir_parameters = type { i64, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64 }
%struct.cx23888_ir_state = type { i32, i32, %struct.v4l2_subdev_ir_parameters, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }

@V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@FIFO_RXTX = common dso_local global i32 0, align 4
@TX_FIFO_HALF_EMPTY = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* @cx23888_ir_tx_s_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23888_ir_tx_s_parameters(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_ir_parameters* %1) #0 {
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
  %13 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %12, i32 0, i32 3
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %13, align 8
  store %struct.cx23885_dev* %14, %struct.cx23885_dev** %7, align 8
  %15 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %16 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %15, i32 0, i32 2
  store %struct.v4l2_subdev_ir_parameters* %16, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %17 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %17, i32 0, i32 11
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = call i32 @cx23888_ir_tx_shutdown(%struct.v4l2_subdev* %22)
  store i32 %23, i32* %3, align 4
  br label %182

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
  br label %182

33:                                               ; preds = %24
  %34 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %35 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %37, i32 0, i32 11
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %40, i32 0, i32 11
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
  %52 = call i32 @irqenable_tx(%struct.cx23885_dev* %51, i32 0)
  %53 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %54 = call i32 @control_tx_enable(%struct.cx23885_dev* %53, i32 0)
  %55 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %56 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @control_tx_modulation_enable(%struct.cx23885_dev* %55, i32 %58)
  %60 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  %65 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %33
  %70 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %71 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @txclk_tx_s_carrier(%struct.cx23885_dev* %70, i32 %73, i32* %9)
  %75 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  %77 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 4
  %82 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %83 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @cduty_tx_s_duty_cycle(%struct.cx23885_dev* %82, i32 %85)
  %87 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %92, i32 0, i32 8
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @FIFO_RXTX, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @pulse_width_count_to_ns(i32 %94, i32 %95)
  %97 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %97, i32 0, i32 7
  store i64 %96, i64* %98, align 8
  br label %107

99:                                               ; preds = %33
  %100 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %101 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %102 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @txclk_tx_s_max_pulse_width(%struct.cx23885_dev* %100, i64 %103, i32* %9)
  %105 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %105, i32 0, i32 7
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %99, %69
  %108 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %109 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %112 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %111, i32 0, i32 7
  store i64 %110, i64* %112, align 8
  %113 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %114 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %113, i32 0, i32 1
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @atomic_set(i32* %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @clock_divider_to_resolution(i32 %117)
  %119 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %120 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %122 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %125 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %127 = load i32, i32* @TX_FIFO_HALF_EMPTY, align 4
  %128 = call i32 @control_tx_irq_watermark(%struct.cx23885_dev* %126, i32 %127)
  %129 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %130 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %131 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @control_tx_polarity_invert(%struct.cx23885_dev* %129, i32 %132)
  %134 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %135 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %138 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %140 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @control_tx_level_invert(%struct.cx23885_dev* %139, i32 %142)
  %144 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %148 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %150 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %153 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %155 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %158 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %160 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %107
  %164 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %165 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %170 = load i32, i32* @IRQEN_TSE, align 4
  %171 = call i32 @irqenable_tx(%struct.cx23885_dev* %169, i32 %170)
  br label %172

172:                                              ; preds = %168, %163
  %173 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %174 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %175 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @control_tx_enable(%struct.cx23885_dev* %173, i32 %176)
  br label %178

178:                                              ; preds = %172, %107
  %179 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %180 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %179, i32 0, i32 0
  %181 = call i32 @mutex_unlock(i32* %180)
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %178, %30, %21
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx23888_ir_tx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqenable_tx(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_tx_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_tx_modulation_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @txclk_tx_s_carrier(%struct.cx23885_dev*, i32, i32*) #1

declare dso_local i32 @cduty_tx_s_duty_cycle(%struct.cx23885_dev*, i32) #1

declare dso_local i64 @pulse_width_count_to_ns(i32, i32) #1

declare dso_local i64 @txclk_tx_s_max_pulse_width(%struct.cx23885_dev*, i64, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @clock_divider_to_resolution(i32) #1

declare dso_local i32 @control_tx_irq_watermark(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_tx_polarity_invert(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_tx_level_invert(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
