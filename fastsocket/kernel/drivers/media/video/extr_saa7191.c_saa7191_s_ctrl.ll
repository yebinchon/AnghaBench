; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7191.c_saa7191_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7191.c_saa7191_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@SAA7191_REG_LUMA = common dso_local global i32 0, align 4
@SAA7191_LUMA_BPSS_MASK = common dso_local global i32 0, align 4
@SAA7191_LUMA_BPSS_SHIFT = common dso_local global i32 0, align 4
@SAA7191_LUMA_APER_MASK = common dso_local global i32 0, align 4
@SAA7191_LUMA_APER_SHIFT = common dso_local global i32 0, align 4
@SAA7191_LUMA_CORI_MASK = common dso_local global i32 0, align 4
@SAA7191_LUMA_CORI_SHIFT = common dso_local global i32 0, align 4
@SAA7191_REG_GAIN = common dso_local global i32 0, align 4
@SAA7191_GAIN_COLO = common dso_local global i32 0, align 4
@SAA7191_GAIN_LFIS_MASK = common dso_local global i32 0, align 4
@SAA7191_GAIN_LFIS_SHIFT = common dso_local global i32 0, align 4
@SAA7191_REG_HUEC = common dso_local global i32 0, align 4
@SAA7191_REG_STDC = common dso_local global i32 0, align 4
@SAA7191_STDC_VTRC = common dso_local global i32 0, align 4
@SAA7191_REG_CTL3 = common dso_local global i32 0, align 4
@SAA7191_CTL3_YDEL_MASK = common dso_local global i32 0, align 4
@SAA7191_CTL3_YDEL_SHIFT = common dso_local global i32 0, align 4
@SAA7191_REG_CTL4 = common dso_local global i32 0, align 4
@SAA7191_CTL4_VNOI_MASK = common dso_local global i32 0, align 4
@SAA7191_CTL4_VNOI_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @saa7191_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7191_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %196 [
    i32 136, label %11
    i32 135, label %11
    i32 133, label %11
    i32 132, label %65
    i32 134, label %65
    i32 128, label %107
    i32 129, label %125
    i32 131, label %147
    i32 130, label %175
  ]

11:                                               ; preds = %2, %2, %2
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = load i32, i32* @SAA7191_REG_LUMA, align 4
  %14 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %60 [
    i32 136, label %18
    i32 135, label %32
    i32 133, label %46
  ]

18:                                               ; preds = %11
  %19 = load i32, i32* @SAA7191_LUMA_BPSS_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SAA7191_LUMA_BPSS_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @SAA7191_LUMA_BPSS_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %60

32:                                               ; preds = %11
  %33 = load i32, i32* @SAA7191_LUMA_APER_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SAA7191_LUMA_APER_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @SAA7191_LUMA_APER_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %60

46:                                               ; preds = %11
  %47 = load i32, i32* @SAA7191_LUMA_CORI_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SAA7191_LUMA_CORI_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* @SAA7191_LUMA_CORI_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %11, %46, %32, %18
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %62 = load i32, i32* @SAA7191_REG_LUMA, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %199

65:                                               ; preds = %2, %2
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %67 = load i32, i32* @SAA7191_REG_GAIN, align 4
  %68 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 132
  br i1 %72, label %73, label %88

73:                                               ; preds = %65
  %74 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %75 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @SAA7191_GAIN_COLO, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %87

82:                                               ; preds = %73
  %83 = load i32, i32* @SAA7191_GAIN_COLO, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %78
  br label %102

88:                                               ; preds = %65
  %89 = load i32, i32* @SAA7191_GAIN_LFIS_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %94 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SAA7191_GAIN_LFIS_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* @SAA7191_GAIN_LFIS_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %88, %87
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %104 = load i32, i32* @SAA7191_REG_GAIN, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %103, i32 %104, i32 %105)
  store i32 %106, i32* %6, align 4
  br label %199

107:                                              ; preds = %2
  %108 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %109 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 255
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 128
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 128
  store i32 %116, i32* %5, align 4
  br label %120

117:                                              ; preds = %107
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %118, 128
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %122 = load i32, i32* @SAA7191_REG_HUEC, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %121, i32 %122, i32 %123)
  store i32 %124, i32* %6, align 4
  br label %199

125:                                              ; preds = %2
  %126 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %127 = load i32, i32* @SAA7191_REG_STDC, align 4
  %128 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %126, i32 %127)
  store i32 %128, i32* %5, align 4
  %129 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %130 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i32, i32* @SAA7191_STDC_VTRC, align 4
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  br label %142

137:                                              ; preds = %125
  %138 = load i32, i32* @SAA7191_STDC_VTRC, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %137, %133
  %143 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %144 = load i32, i32* @SAA7191_REG_STDC, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %143, i32 %144, i32 %145)
  store i32 %146, i32* %6, align 4
  br label %199

147:                                              ; preds = %2
  %148 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %149 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 8
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %153, %147
  %157 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %158 = load i32, i32* @SAA7191_REG_CTL3, align 4
  %159 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %157, i32 %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* @SAA7191_CTL3_YDEL_MASK, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %5, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @SAA7191_CTL3_YDEL_SHIFT, align 4
  %166 = shl i32 %164, %165
  %167 = load i32, i32* @SAA7191_CTL3_YDEL_MASK, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* %5, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %5, align 4
  %171 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %172 = load i32, i32* @SAA7191_REG_CTL3, align 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %171, i32 %172, i32 %173)
  store i32 %174, i32* %6, align 4
  br label %199

175:                                              ; preds = %2
  %176 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %177 = load i32, i32* @SAA7191_REG_CTL4, align 4
  %178 = call i32 @saa7191_read_reg(%struct.v4l2_subdev* %176, i32 %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* @SAA7191_CTL4_VNOI_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %5, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %184 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @SAA7191_CTL4_VNOI_SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = load i32, i32* @SAA7191_CTL4_VNOI_MASK, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %5, align 4
  %192 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %193 = load i32, i32* @SAA7191_REG_CTL4, align 4
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @saa7191_write_reg(%struct.v4l2_subdev* %192, i32 %193, i32 %194)
  store i32 %195, i32* %6, align 4
  br label %199

196:                                              ; preds = %2
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %196, %175, %156, %142, %120, %102, %60
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local i32 @saa7191_read_reg(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa7191_write_reg(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
