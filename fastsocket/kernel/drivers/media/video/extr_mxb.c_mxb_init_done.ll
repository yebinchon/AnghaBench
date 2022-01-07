; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_mxb_init_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_mxb_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuner_setup = type { i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.saa7146_dev = type { i64 }
%struct.mxb = type { i64, i32, i32, i32, %struct.tuner_setup }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@V4L2_STD_PAL_BG = common dso_local global %struct.tuner_setup* null, align 8
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@SAA7115_COMPOSITE0 = common dso_local global i32 0, align 4
@SAA7111_FMT_CCIR = common dso_local global i32 0, align 4
@SAA7111_VBI_BYPASS = common dso_local global i32 0, align 4
@T_ANALOG_TV = common dso_local global i32 0, align 4
@ADDR_UNSET = common dso_local global i32 0, align 4
@TUNER_PHILIPS_PAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_type_addr = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@freq = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@mxb_saa7740_init = common dso_local global %struct.TYPE_4__* null, align 8
@SAA7146_USE_I2C_IRQ = common dso_local global i32 0, align 4
@extension = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to initialize 'sound arena module'.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"'sound arena module' detected.\0A\00", align 1
@input_port_selection = common dso_local global %struct.TYPE_5__* null, align 8
@DD1_STREAM_B = common dso_local global i32 0, align 4
@DD1_INIT = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_09 = common dso_local global i32 0, align 4
@MASK_25 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @mxb_init_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxb_init_done(%struct.saa7146_dev* %0) #0 {
  %2 = alloca %struct.saa7146_dev*, align 8
  %3 = alloca %struct.mxb*, align 8
  %4 = alloca %struct.i2c_msg, align 8
  %5 = alloca %struct.tuner_setup, align 8
  %6 = alloca %struct.tuner_setup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %2, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.mxb*
  store %struct.mxb* %12, %struct.mxb** %3, align 8
  %13 = load %struct.tuner_setup*, %struct.tuner_setup** @V4L2_STD_PAL_BG, align 8
  store %struct.tuner_setup* %13, %struct.tuner_setup** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.mxb*, %struct.mxb** %3, align 8
  %15 = load i32, i32* @core, align 4
  %16 = load i32, i32* @s_std, align 4
  %17 = load %struct.tuner_setup*, %struct.tuner_setup** %6, align 8
  %18 = call i32 (%struct.mxb*, i32, i32, %struct.tuner_setup*, ...) @saa7111a_call(%struct.mxb* %14, i32 %15, i32 %16, %struct.tuner_setup* %17)
  store i32 0, i32* %7, align 4
  %19 = load %struct.mxb*, %struct.mxb** %3, align 8
  %20 = load i32, i32* @video, align 4
  %21 = load i32, i32* @s_routing, align 4
  %22 = load i32, i32* @SAA7115_COMPOSITE0, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.tuner_setup*
  %25 = load i32, i32* @SAA7111_FMT_CCIR, align 4
  %26 = load i32, i32* @SAA7111_VBI_BYPASS, align 4
  %27 = or i32 %25, %26
  %28 = call i32 (%struct.mxb*, i32, i32, %struct.tuner_setup*, ...) @saa7111a_call(%struct.mxb* %19, i32 %20, i32 %21, %struct.tuner_setup* %24, i32 %27, i32 0)
  %29 = load i32, i32* @T_ANALOG_TV, align 4
  %30 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %5, i32 0, i32 4
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @ADDR_UNSET, align 4
  %32 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %5, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @TUNER_PHILIPS_PAL, align 4
  %34 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.mxb*, %struct.mxb** %3, align 8
  %36 = load i32, i32* @tuner, align 4
  %37 = load i32, i32* @s_type_addr, align 4
  %38 = call i32 @tuner_call(%struct.mxb* %35, i32 %36, i32 %37, %struct.tuner_setup* %5)
  %39 = load %struct.mxb*, %struct.mxb** %3, align 8
  %40 = getelementptr inbounds %struct.mxb, %struct.mxb* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %43 = load %struct.mxb*, %struct.mxb** %3, align 8
  %44 = getelementptr inbounds %struct.mxb, %struct.mxb* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @freq, align 4
  %47 = load %struct.mxb*, %struct.mxb** %3, align 8
  %48 = getelementptr inbounds %struct.mxb, %struct.mxb* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.mxb*, %struct.mxb** %3, align 8
  %51 = load i32, i32* @tuner, align 4
  %52 = load i32, i32* @s_frequency, align 4
  %53 = load %struct.mxb*, %struct.mxb** %3, align 8
  %54 = getelementptr inbounds %struct.mxb, %struct.mxb* %53, i32 0, i32 4
  %55 = call i32 @tuner_call(%struct.mxb* %50, i32 %51, i32 %52, %struct.tuner_setup* %54)
  %56 = load %struct.mxb*, %struct.mxb** %3, align 8
  %57 = load i32, i32* @core, align 4
  %58 = load i32, i32* @s_std, align 4
  %59 = load %struct.tuner_setup*, %struct.tuner_setup** %6, align 8
  %60 = call i32 @tuner_call(%struct.mxb* %56, i32 %57, i32 %58, %struct.tuner_setup* %59)
  %61 = load %struct.mxb*, %struct.mxb** %3, align 8
  %62 = call i32 @tea6420_route_line(%struct.mxb* %61, i32 6)
  %63 = load %struct.mxb*, %struct.mxb** %3, align 8
  %64 = call i32 @tea6420_route_cd(%struct.mxb* %63, i32 6)
  %65 = load %struct.mxb*, %struct.mxb** %3, align 8
  %66 = load i32, i32* @video, align 4
  %67 = load i32, i32* @s_routing, align 4
  %68 = call i32 @tea6415c_call(%struct.mxb* %65, i32 %66, i32 %67, i32 3, i32 17, i32 0)
  %69 = load %struct.mxb*, %struct.mxb** %3, align 8
  %70 = load i32, i32* @video, align 4
  %71 = load i32, i32* @s_routing, align 4
  %72 = call i32 @tea6415c_call(%struct.mxb* %69, i32 %70, i32 %71, i32 3, i32 13, i32 0)
  %73 = load %struct.mxb*, %struct.mxb** %3, align 8
  %74 = getelementptr inbounds %struct.mxb, %struct.mxb* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.mxb*, %struct.mxb** %3, align 8
  %76 = getelementptr inbounds %struct.mxb, %struct.mxb* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %78 = load %struct.mxb*, %struct.mxb** %3, align 8
  %79 = getelementptr inbounds %struct.mxb, %struct.mxb* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 0
  store i32 27, i32* %80, align 8
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mxb_saa7740_init, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mxb_saa7740_init, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  store i32* %91, i32** %92, align 8
  %93 = load %struct.mxb*, %struct.mxb** %3, align 8
  %94 = getelementptr inbounds %struct.mxb, %struct.mxb* %93, i32 0, i32 2
  %95 = call i32 @i2c_transfer(i32* %94, %struct.i2c_msg* %4, i32 1)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %141

98:                                               ; preds = %1
  %99 = load i32, i32* @SAA7146_USE_I2C_IRQ, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @extension, i32 0, i32 0), align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @extension, i32 0, i32 0), align 4
  store i32 1, i32* %7, align 4
  br label %103

103:                                              ; preds = %136, %98
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mxb_saa7740_init, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 -1, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %139

112:                                              ; preds = %103
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mxb_saa7740_init, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mxb_saa7740_init, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  store i32* %126, i32** %127, align 8
  %128 = load %struct.mxb*, %struct.mxb** %3, align 8
  %129 = getelementptr inbounds %struct.mxb, %struct.mxb* %128, i32 0, i32 2
  %130 = call i32 @i2c_transfer(i32* %129, %struct.i2c_msg* %4, i32 1)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %112
  %134 = call i32 @DEB_D(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %142

135:                                              ; preds = %112
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %103

139:                                              ; preds = %111
  %140 = call i32 @INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %1
  br label %142

142:                                              ; preds = %141, %133
  %143 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** @input_port_selection, align 8
  %145 = load %struct.mxb*, %struct.mxb** %3, align 8
  %146 = getelementptr inbounds %struct.mxb, %struct.mxb* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @input_port_selection, align 8
  %152 = load %struct.mxb*, %struct.mxb** %3, align 8
  %153 = getelementptr inbounds %struct.mxb, %struct.mxb* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev* %143, i32 %150, i32 %157)
  %159 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %160 = load i32, i32* @DD1_STREAM_B, align 4
  %161 = call i32 @saa7146_write(%struct.saa7146_dev* %159, i32 %160, i32 0)
  %162 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %163 = load i32, i32* @DD1_INIT, align 4
  %164 = call i32 @saa7146_write(%struct.saa7146_dev* %162, i32 %163, i32 33554944)
  %165 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %166 = load i32, i32* @MC2, align 4
  %167 = load i32, i32* @MASK_09, align 4
  %168 = load i32, i32* @MASK_25, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @MASK_10, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @MASK_26, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @saa7146_write(%struct.saa7146_dev* %165, i32 %166, i32 %173)
  ret i32 0
}

declare dso_local i32 @saa7111a_call(%struct.mxb*, i32, i32, %struct.tuner_setup*, ...) #1

declare dso_local i32 @tuner_call(%struct.mxb*, i32, i32, %struct.tuner_setup*) #1

declare dso_local i32 @tea6420_route_line(%struct.mxb*, i32) #1

declare dso_local i32 @tea6420_route_cd(%struct.mxb*, i32) #1

declare dso_local i32 @tea6415c_call(%struct.mxb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @INFO(i8*) #1

declare dso_local i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
