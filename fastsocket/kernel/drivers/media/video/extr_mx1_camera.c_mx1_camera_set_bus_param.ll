; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_set_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_set_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*, i64)* }
%struct.TYPE_4__ = type { i32 }
%struct.soc_camera_host = type { %struct.mx1_camera_dev* }
%struct.mx1_camera_dev = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@CSI_BUS_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCAM_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@MX1_CAMERA_VSYNC_HIGH = common dso_local global i32 0, align 4
@SOCAM_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@SOCAM_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@MX1_CAMERA_PCLK_RISING = common dso_local global i32 0, align 4
@SOCAM_DATA_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_DATA_ACTIVE_LOW = common dso_local global i64 0, align 8
@MX1_CAMERA_DATA_HIGH = common dso_local global i32 0, align 4
@CSICR1 = common dso_local global i64 0, align 8
@CSICR1_REDGE = common dso_local global i32 0, align 4
@CSICR1_SOF_POL = common dso_local global i32 0, align 4
@CSICR1_DATA_POL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32)* @mx1_camera_set_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx1_camera_set_bus_param(%struct.soc_camera_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.mx1_camera_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %15)
  store %struct.soc_camera_host* %16, %struct.soc_camera_host** %6, align 8
  %17 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %18 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %17, i32 0, i32 0
  %19 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %18, align 8
  store %struct.mx1_camera_dev* %19, %struct.mx1_camera_dev** %7, align 8
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %21 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64 (%struct.soc_camera_device*)*, i64 (%struct.soc_camera_device*)** %23, align 8
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %26 = call i64 %24(%struct.soc_camera_device* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @CSI_BUS_FLAGS, align 4
  %29 = call i64 @soc_camera_bus_param_compatible(i64 %27, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %196

35:                                               ; preds = %2
  %36 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %37 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %36, i32 0, i32 0
  store i32 8, i32* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %35
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %7, align 8
  %49 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %7, align 8
  %54 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MX1_CAMERA_VSYNC_HIGH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52, %47
  %62 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %9, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %71

66:                                               ; preds = %52
  %67 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %9, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %42, %35
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %72
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %77
  %83 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %7, align 8
  %84 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = icmp ne %struct.TYPE_5__* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %7, align 8
  %89 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MX1_CAMERA_PCLK_RISING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87, %82
  %97 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %98 = xor i64 %97, -1
  %99 = load i64, i64* %9, align 8
  %100 = and i64 %99, %98
  store i64 %100, i64* %9, align 8
  br label %106

101:                                              ; preds = %87
  %102 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %103 = xor i64 %102, -1
  %104 = load i64, i64* %9, align 8
  %105 = and i64 %104, %103
  store i64 %105, i64* %9, align 8
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106, %77, %72
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @SOCAM_DATA_ACTIVE_HIGH, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %107
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* @SOCAM_DATA_ACTIVE_LOW, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %142

117:                                              ; preds = %112
  %118 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %7, align 8
  %119 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = icmp ne %struct.TYPE_5__* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %7, align 8
  %124 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %123, i32 0, i32 1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MX1_CAMERA_DATA_HIGH, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122, %117
  %132 = load i64, i64* @SOCAM_DATA_ACTIVE_LOW, align 8
  %133 = xor i64 %132, -1
  %134 = load i64, i64* %9, align 8
  %135 = and i64 %134, %133
  store i64 %135, i64* %9, align 8
  br label %141

136:                                              ; preds = %122
  %137 = load i64, i64* @SOCAM_DATA_ACTIVE_HIGH, align 8
  %138 = xor i64 %137, -1
  %139 = load i64, i64* %9, align 8
  %140 = and i64 %139, %138
  store i64 %140, i64* %9, align 8
  br label %141

141:                                              ; preds = %136, %131
  br label %142

142:                                              ; preds = %141, %112, %107
  %143 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %144 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32 (%struct.soc_camera_device*, i64)*, i32 (%struct.soc_camera_device*, i64)** %146, align 8
  %148 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i32 %147(%struct.soc_camera_device* %148, i64 %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %3, align 4
  br label %196

155:                                              ; preds = %142
  %156 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %7, align 8
  %157 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CSICR1, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @__raw_readl(i64 %160)
  store i32 %161, i32* %10, align 4
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %155
  %167 = load i32, i32* @CSICR1_REDGE, align 4
  %168 = load i32, i32* %10, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %166, %155
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load i32, i32* @CSICR1_SOF_POL, align 4
  %177 = load i32, i32* %10, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %175, %170
  %180 = load i64, i64* %9, align 8
  %181 = load i64, i64* @SOCAM_DATA_ACTIVE_LOW, align 8
  %182 = and i64 %180, %181
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load i32, i32* @CSICR1_DATA_POL, align 4
  %186 = load i32, i32* %10, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %184, %179
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %7, align 8
  %191 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @CSICR1, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @__raw_writel(i32 %189, i64 %194)
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %188, %153, %32
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i64 @soc_camera_bus_param_compatible(i64, i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
