; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx3_camera_dev = type { i32, i32, i32 }
%struct.soc_camera_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CSI_ACT_FRM_SIZE = common dso_local global i32 0, align 4
@CSI_OUT_FRM_CTRL = common dso_local global i32 0, align 4
@CSI_SENS_CONF_SENS_PRTCL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_FMT_BAYER = common dso_local global i32 0, align 4
@MX3_CAMERA_DATAWIDTH_15 = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_WIDTH_SHIFT = common dso_local global i32 0, align 4
@MX3_CAMERA_DATAWIDTH_10 = common dso_local global i32 0, align 4
@MX3_CAMERA_DATAWIDTH_8 = common dso_local global i32 0, align 4
@MX3_CAMERA_CLK_SRC = common dso_local global i32 0, align 4
@CSI_SENS_CONF_SENS_CLKSRC_SHIFT = common dso_local global i32 0, align 4
@MX3_CAMERA_EXT_VSYNC = common dso_local global i32 0, align 4
@CSI_SENS_CONF_EXT_VSYNC_SHIFT = common dso_local global i32 0, align 4
@MX3_CAMERA_DP = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_POL_SHIFT = common dso_local global i32 0, align 4
@MX3_CAMERA_PCP = common dso_local global i32 0, align 4
@CSI_SENS_CONF_PIX_CLK_POL_SHIFT = common dso_local global i32 0, align 4
@MX3_CAMERA_HSP = common dso_local global i32 0, align 4
@CSI_SENS_CONF_HSYNC_POL_SHIFT = common dso_local global i32 0, align 4
@MX3_CAMERA_VSP = common dso_local global i32 0, align 4
@CSI_SENS_CONF_VSYNC_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Set SENS_CONF to %x, rate %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mx3_camera_dev*, %struct.soc_camera_device*)* @mx3_camera_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx3_camera_activate(%struct.mx3_camera_dev* %0, %struct.soc_camera_device* %1) #0 {
  %3 = alloca %struct.mx3_camera_dev*, align 8
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mx3_camera_dev* %0, %struct.mx3_camera_dev** %3, align 8
  store %struct.soc_camera_device* %1, %struct.soc_camera_device** %4, align 8
  %7 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %8 = load i32, i32* @CSI_ACT_FRM_SIZE, align 4
  %9 = call i32 @csi_reg_write(%struct.mx3_camera_dev* %7, i32 31392383, i32 %8)
  %10 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %11 = load i32, i32* @CSI_OUT_FRM_CTRL, align 4
  %12 = call i32 @csi_reg_read(%struct.mx3_camera_dev* %10, i32 %11)
  %13 = and i32 %12, -65536
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CSI_OUT_FRM_CTRL, align 4
  %17 = call i32 @csi_reg_write(%struct.mx3_camera_dev* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @CSI_SENS_CONF_SENS_PRTCL_SHIFT, align 4
  %19 = shl i32 0, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @CSI_SENS_CONF_DATA_FMT_BAYER, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MX3_CAMERA_DATAWIDTH_15, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %31 = shl i32 3, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %65

34:                                               ; preds = %2
  %35 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MX3_CAMERA_DATAWIDTH_10, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %43 = shl i32 2, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %64

46:                                               ; preds = %34
  %47 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MX3_CAMERA_DATAWIDTH_8, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %55 = shl i32 1, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %63

58:                                               ; preds = %46
  %59 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %60 = shl i32 0, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %29
  %66 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MX3_CAMERA_CLK_SRC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32, i32* @CSI_SENS_CONF_SENS_CLKSRC_SHIFT, align 4
  %74 = shl i32 1, %73
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %65
  %78 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %79 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MX3_CAMERA_EXT_VSYNC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* @CSI_SENS_CONF_EXT_VSYNC_SHIFT, align 4
  %86 = shl i32 1, %85
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %84, %77
  %90 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %91 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MX3_CAMERA_DP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* @CSI_SENS_CONF_DATA_POL_SHIFT, align 4
  %98 = shl i32 1, %97
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %96, %89
  %102 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %103 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MX3_CAMERA_PCP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i32, i32* @CSI_SENS_CONF_PIX_CLK_POL_SHIFT, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %108, %101
  %114 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %115 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MX3_CAMERA_HSP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, i32* @CSI_SENS_CONF_HSYNC_POL_SHIFT, align 4
  %122 = shl i32 1, %121
  %123 = load i32, i32* %5, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %120, %113
  %126 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %127 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MX3_CAMERA_VSP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i32, i32* @CSI_SENS_CONF_VSYNC_POL_SHIFT, align 4
  %134 = shl i32 1, %133
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %132, %125
  %138 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @CSI_SENS_CONF, align 4
  %141 = call i32 @csi_reg_write(%struct.mx3_camera_dev* %138, i32 %139, i32 %140)
  %142 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %143 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @clk_enable(i32 %144)
  %146 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %147 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %150 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @clk_round_rate(i32 %148, i32 %151)
  store i64 %152, i64* %6, align 8
  %153 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %154 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @dev_dbg(i32 %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %157, i64 %158)
  %160 = load i64, i64* %6, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %137
  %163 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %3, align 8
  %164 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @clk_set_rate(i32 %165, i64 %166)
  br label %168

168:                                              ; preds = %162, %137
  ret void
}

declare dso_local i32 @csi_reg_write(%struct.mx3_camera_dev*, i32, i32) #1

declare dso_local i32 @csi_reg_read(%struct.mx3_camera_dev*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i64 @clk_round_rate(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
