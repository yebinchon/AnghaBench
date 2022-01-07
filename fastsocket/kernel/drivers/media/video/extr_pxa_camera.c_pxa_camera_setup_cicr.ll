; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_setup_cicr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_setup_cicr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.soc_camera_host = type { %struct.pxa_camera_dev* }
%struct.pxa_camera_dev = type { i32, i32, i32, i64 }
%struct.v4l2_subdev = type { i32 }

@sensor = common dso_local global i32 0, align 4
@g_skip_top_lines = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_MASK = common dso_local global i64 0, align 8
@PXA_CAMERA_PCLK_EN = common dso_local global i32 0, align 4
@CICR4_PCLK_EN = common dso_local global i32 0, align 4
@PXA_CAMERA_MCLK_EN = common dso_local global i32 0, align 4
@CICR4_MCLK_EN = common dso_local global i32 0, align 4
@SOCAM_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@CICR4_PCP = common dso_local global i32 0, align 4
@SOCAM_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@CICR4_HSP = common dso_local global i32 0, align 4
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@CICR4_VSP = common dso_local global i32 0, align 4
@CICR0 = common dso_local global i64 0, align 8
@CICR0_ENB = common dso_local global i32 0, align 4
@CICR1_YCBCR_F = common dso_local global i32 0, align 4
@CICR1_TBIT = common dso_local global i32 0, align 4
@CICR1 = common dso_local global i64 0, align 8
@CICR2 = common dso_local global i64 0, align 8
@CICR3 = common dso_local global i64 0, align 8
@CICR4 = common dso_local global i64 0, align 8
@PXA_CAMERA_MASTER = common dso_local global i32 0, align 4
@CICR0_SIM_MP = common dso_local global i32 0, align 4
@CICR0_SL_CAP_EN = common dso_local global i32 0, align 4
@CICR0_SIM_SP = common dso_local global i32 0, align 4
@CICR0_DMAEN = common dso_local global i32 0, align 4
@CICR0_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_camera_device*, i64, i32)* @pxa_camera_setup_cicr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_camera_setup_cicr(%struct.soc_camera_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc_camera_host*, align 8
  %8 = alloca %struct.pxa_camera_dev*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %20 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %22)
  store %struct.soc_camera_host* %23, %struct.soc_camera_host** %7, align 8
  %24 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %25 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %24, i32 0, i32 0
  %26 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %25, align 8
  store %struct.pxa_camera_dev* %26, %struct.pxa_camera_dev** %8, align 8
  %27 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %28 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %27)
  store %struct.v4l2_subdev* %28, %struct.v4l2_subdev** %9, align 8
  store i32 0, i32* %16, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %30 = load i32, i32* @sensor, align 4
  %31 = load i32, i32* @g_skip_top_lines, align 4
  %32 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %29, i32 %30, i32 %31, i32* %17)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @SOCAM_DATAWIDTH_MASK, align 8
  %39 = and i64 %37, %38
  switch i64 %39, label %42 [
    i64 137, label %40
    i64 135, label %41
    i64 136, label %43
  ]

40:                                               ; preds = %36
  store i64 4, i64* %10, align 8
  store i64 64, i64* %11, align 8
  br label %44

41:                                               ; preds = %36
  store i64 3, i64* %10, align 8
  store i64 32, i64* %11, align 8
  br label %44

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %36, %42
  store i64 2, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %43, %41, %40
  %45 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %46 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PXA_CAMERA_PCLK_EN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @CICR4_PCLK_EN, align 4
  %53 = load i32, i32* %16, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %57 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PXA_CAMERA_MCLK_EN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @CICR4_MCLK_EN, align 4
  %64 = load i32, i32* %16, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @CICR4_PCP, align 4
  %73 = load i32, i32* %16, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @CICR4_HSP, align 4
  %82 = load i32, i32* %16, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @CICR4_VSP, align 4
  %91 = load i32, i32* %16, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %95 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CICR0, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @__raw_readl(i64 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @CICR0_ENB, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %93
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @CICR0_ENB, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %110 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CICR0, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @__raw_writel(i32 %108, i64 %113)
  br label %115

115:                                              ; preds = %104, %93
  %116 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %117 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, 1
  %120 = call i64 @CICR1_PPL_VAL(i64 %119)
  %121 = load i64, i64* %11, align 8
  %122 = or i64 %120, %121
  %123 = load i64, i64* %10, align 8
  %124 = or i64 %122, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %6, align 4
  switch i32 %126, label %153 [
    i32 130, label %127
    i32 132, label %133
    i32 131, label %133
    i32 129, label %133
    i32 128, label %133
    i32 134, label %137
    i32 133, label %147
  ]

127:                                              ; preds = %115
  %128 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %129 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %128, i32 0, i32 1
  store i32 3, i32* %129, align 4
  %130 = load i32, i32* @CICR1_YCBCR_F, align 4
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %115, %115, %115, %115, %127
  %134 = call i32 @CICR1_COLOR_SP_VAL(i32 2)
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %153

137:                                              ; preds = %115
  %138 = call i32 @CICR1_RGB_BPP_VAL(i32 1)
  %139 = call i32 @CICR1_RGBT_CONV_VAL(i32 2)
  %140 = or i32 %138, %139
  %141 = load i32, i32* @CICR1_TBIT, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @CICR1_COLOR_SP_VAL(i32 1)
  %144 = or i32 %142, %143
  %145 = load i32, i32* %13, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %13, align 4
  br label %153

147:                                              ; preds = %115
  %148 = call i32 @CICR1_COLOR_SP_VAL(i32 1)
  %149 = call i32 @CICR1_RGB_BPP_VAL(i32 2)
  %150 = or i32 %148, %149
  %151 = load i32, i32* %13, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %115, %147, %137, %133
  store i32 0, i32* %14, align 4
  %154 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %155 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %156, 1
  %158 = call i32 @CICR3_LPF_VAL(i64 %157)
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @min(i32 255, i32 %159)
  %161 = call i32 @CICR3_BFW_VAL(i32 %160)
  %162 = or i32 %158, %161
  store i32 %162, i32* %15, align 4
  %163 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %164 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %170 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CICR1, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @__raw_writel(i32 %168, i64 %173)
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %177 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CICR2, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @__raw_writel(i32 %175, i64 %180)
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %184 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @CICR3, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @__raw_writel(i32 %182, i64 %187)
  %189 = load i32, i32* %16, align 4
  %190 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %191 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @CICR4, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @__raw_writel(i32 %189, i64 %194)
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @CICR0_ENB, align 4
  %198 = and i32 %196, %197
  %199 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %200 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @PXA_CAMERA_MASTER, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %153
  %206 = load i32, i32* @CICR0_SIM_MP, align 4
  br label %211

207:                                              ; preds = %153
  %208 = load i32, i32* @CICR0_SL_CAP_EN, align 4
  %209 = load i32, i32* @CICR0_SIM_SP, align 4
  %210 = or i32 %208, %209
  br label %211

211:                                              ; preds = %207, %205
  %212 = phi i32 [ %206, %205 ], [ %210, %207 ]
  %213 = or i32 %198, %212
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* @CICR0_DMAEN, align 4
  %215 = load i32, i32* @CICR0_IRQ_MASK, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %12, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %221 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @CICR0, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @__raw_writel(i32 %219, i64 %224)
  ret void
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @CICR1_PPL_VAL(i64) #1

declare dso_local i32 @CICR1_COLOR_SP_VAL(i32) #1

declare dso_local i32 @CICR1_RGB_BPP_VAL(i32) #1

declare dso_local i32 @CICR1_RGBT_CONV_VAL(i32) #1

declare dso_local i32 @CICR3_LPF_VAL(i64) #1

declare dso_local i32 @CICR3_BFW_VAL(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
