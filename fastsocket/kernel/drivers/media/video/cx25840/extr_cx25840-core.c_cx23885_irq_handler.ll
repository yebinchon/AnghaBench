; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx23885_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx23885_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.i2c_client = type { i32 }

@CX23885_PIN_CTRL_IRQ_REG = common dso_local global i32 0, align 4
@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"AV Core IRQ status (entry): %s %s %s\0A\00", align 1
@CX23885_PIN_CTRL_IRQ_IR_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@CX23885_PIN_CTRL_IRQ_AUD_STAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@CX23885_PIN_CTRL_IRQ_VID_STAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"vid\00", align 1
@CX25840_IR_STATS_REG = common dso_local global i32 0, align 4
@CX25840_IR_IRQEN_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"AV Core ir IRQ status: %#04x disables: %#04x\0A\00", align 1
@CX25840_AUD_INT_STAT_REG = common dso_local global i32 0, align 4
@CX25840_AUD_INT_CTRL_REG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"AV Core audio IRQ status: %#04x disables: %#04x\0A\00", align 1
@CX23885_AUD_MC_INT_MASK_REG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"AV Core audio MC IRQ status: %#06x enables: %#06x\0A\00", align 1
@CX23885_AUD_MC_INT_STAT_SHFT = common dso_local global i32 0, align 4
@CX23885_AUD_MC_INT_CTRL_BITS = common dso_local global i32 0, align 4
@CX25840_VID_INT_STAT_REG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"AV Core video IRQ status: %#06x disables: %#06x\0A\00", align 1
@CX25840_VID_INT_STAT_BITS = common dso_local global i32 0, align 4
@CX25840_VID_INT_MASK_SHFT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"AV Core IRQ status (exit): %s %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32*)* @cx23885_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_irq_handler(%struct.v4l2_subdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cx25840_state*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %18)
  store %struct.cx25840_state* %19, %struct.cx25840_state** %7, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %20)
  store %struct.i2c_client* %21, %struct.i2c_client** %8, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %23 = load i32, i32* @CX23885_PIN_CTRL_IRQ_REG, align 4
  %24 = call i32 @cx25840_read(%struct.i2c_client* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @cx25840_debug, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @CX23885_PIN_CTRL_IRQ_IR_STAT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CX23885_PIN_CTRL_IRQ_AUD_STAT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @CX23885_PIN_CTRL_IRQ_VID_STAT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %45 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i32 %25, %struct.i2c_client* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %38, i8* %44)
  %46 = load %struct.cx25840_state*, %struct.cx25840_state** %7, align 8
  %47 = call i64 @is_cx23885(%struct.cx25840_state* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %3
  %50 = load %struct.cx25840_state*, %struct.cx25840_state** %7, align 8
  %51 = call i64 @is_cx23887(%struct.cx25840_state* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %49, %3
  %54 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %55 = load i32, i32* @CX25840_IR_STATS_REG, align 4
  %56 = call i32 @cx25840_read(%struct.i2c_client* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %58 = load i32, i32* @CX25840_IR_IRQEN_REG, align 4
  %59 = call i32 @cx25840_read(%struct.i2c_client* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* @cx25840_debug, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i32 %60, %struct.i2c_client* %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @CX23885_PIN_CTRL_IRQ_IR_STAT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %53
  store i32 0, i32* %16, align 4
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @cx25840_ir_irq_handler(%struct.v4l2_subdev* %70, i32 %71, i32* %16)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32*, i32** %6, align 8
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %69
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78, %49
  %80 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %81 = load i32, i32* @CX25840_AUD_INT_STAT_REG, align 4
  %82 = call i32 @cx25840_read(%struct.i2c_client* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %84 = load i32, i32* @CX25840_AUD_INT_CTRL_REG, align 4
  %85 = call i32 @cx25840_read(%struct.i2c_client* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @cx25840_debug, align 4
  %87 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i32 %86, %struct.i2c_client* %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %92 = load i32, i32* @CX23885_AUD_MC_INT_MASK_REG, align 4
  %93 = call i32 @cx25840_read4(%struct.i2c_client* %91, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* @cx25840_debug, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @CX23885_AUD_MC_INT_STAT_SHFT, align 4
  %98 = ashr i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @CX23885_AUD_MC_INT_CTRL_BITS, align 4
  %101 = and i32 %99, %100
  %102 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i32 %94, %struct.i2c_client* %95, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @CX23885_PIN_CTRL_IRQ_AUD_STAT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %79
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %112 = load i32, i32* @CX25840_AUD_INT_STAT_REG, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @cx25840_write(%struct.i2c_client* %111, i32 %112, i32 %113)
  %115 = load i32*, i32** %6, align 8
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %107
  br label %117

117:                                              ; preds = %116, %79
  %118 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %119 = load i32, i32* @CX25840_VID_INT_STAT_REG, align 4
  %120 = call i32 @cx25840_read4(%struct.i2c_client* %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* @cx25840_debug, align 4
  %122 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @CX25840_VID_INT_STAT_BITS, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @CX25840_VID_INT_MASK_SHFT, align 4
  %128 = ashr i32 %126, %127
  %129 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i32 %121, %struct.i2c_client* %122, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %125, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @CX23885_PIN_CTRL_IRQ_VID_STAT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %117
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @CX25840_VID_INT_STAT_BITS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %141 = load i32, i32* @CX25840_VID_INT_STAT_REG, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @cx25840_write4(%struct.i2c_client* %140, i32 %141, i32 %142)
  %144 = load i32*, i32** %6, align 8
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %139, %134
  br label %146

146:                                              ; preds = %145, %117
  %147 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %148 = load i32, i32* @CX23885_PIN_CTRL_IRQ_REG, align 4
  %149 = call i32 @cx25840_read(%struct.i2c_client* %147, i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* @cx25840_debug, align 4
  %151 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @CX23885_PIN_CTRL_IRQ_IR_STAT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @CX23885_PIN_CTRL_IRQ_AUD_STAT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @CX23885_PIN_CTRL_IRQ_VID_STAT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %170 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 2, i32 %150, %struct.i2c_client* %151, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %157, i8* %163, i8* %169)
  %171 = load i32, i32* %17, align 4
  ret i32 %171
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, ...) #1

declare dso_local i64 @is_cx23885(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx23887(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_ir_irq_handler(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
