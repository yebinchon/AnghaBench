; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_pre_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_pre_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.radeon_i2c_chan = type { %struct.radeon_i2c_bus_rec, %struct.TYPE_2__* }
%struct.radeon_i2c_bus_rec = type { i64, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i32 }

@CHIP_R200 = common dso_local global i64 0, align 8
@CHIP_RV350 = common dso_local global i64 0, align 8
@RADEON_GPIO_MONID = common dso_local global i64 0, align 8
@CHIP_R300 = common dso_local global i64 0, align 8
@CHIP_R350 = common dso_local global i64 0, align 8
@RADEON_GPIO_DVI_DDC = common dso_local global i64 0, align 8
@RADEON_GPIO_CRT2_DDC = common dso_local global i64 0, align 8
@RADEON_DVI_I2C_CNTL_0 = common dso_local global i64 0, align 8
@RADEON_I2C_SOFT_RST = common dso_local global i32 0, align 4
@R200_SEL_DDC1 = common dso_local global i32 0, align 4
@R200_SEL_DDC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @pre_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_xfer(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.radeon_i2c_chan*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %9 = call %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter* %8)
  store %struct.radeon_i2c_chan* %9, %struct.radeon_i2c_chan** %3, align 8
  %10 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %4, align 8
  %15 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %15, i32 0, i32 0
  store %struct.radeon_i2c_bus_rec* %16, %struct.radeon_i2c_bus_rec** %5, align 8
  %17 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_R200, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %83

27:                                               ; preds = %21
  %28 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %29 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %83, label %31

31:                                               ; preds = %27
  %32 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHIP_RV350, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* @RADEON_GPIO_MONID, align 8
  store i64 %38, i64* %7, align 8
  br label %56

39:                                               ; preds = %31
  %40 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHIP_R300, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHIP_R350, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %39
  %52 = load i64, i64* @RADEON_GPIO_DVI_DDC, align 8
  store i64 %52, i64* %7, align 8
  br label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @RADEON_GPIO_CRT2_DDC, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 1
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %61 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i64, i64* @RADEON_DVI_I2C_CNTL_0, align 8
  %67 = load i32, i32* @RADEON_I2C_SOFT_RST, align 4
  %68 = load i32, i32* @R200_SEL_DDC1, align 4
  %69 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %68)
  %70 = or i32 %67, %69
  %71 = call i32 @WREG32(i64 %66, i32 %70)
  br label %79

72:                                               ; preds = %56
  %73 = load i64, i64* @RADEON_DVI_I2C_CNTL_0, align 8
  %74 = load i32, i32* @RADEON_I2C_SOFT_RST, align 4
  %75 = load i32, i32* @R200_SEL_DDC3, align 4
  %76 = call i32 @R200_DVI_I2C_PIN_SEL(i32 %75)
  %77 = or i32 %74, %76
  %78 = call i32 @WREG32(i64 %73, i32 %77)
  br label %79

79:                                               ; preds = %72, %65
  %80 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %83

83:                                               ; preds = %79, %27, %21
  br label %84

84:                                               ; preds = %83, %1
  %85 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %86 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %90 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %89, i32 0, i32 12
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %95 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @RREG32(i64 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, -65537
  store i32 %99, i32* %6, align 4
  %100 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @WREG32(i64 %102, i32 %103)
  br label %105

105:                                              ; preds = %93, %88, %84
  %106 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @RREG32(i64 %108)
  %110 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %111 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = xor i32 %112, -1
  %114 = and i32 %109, %113
  store i32 %114, i32* %6, align 4
  %115 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %116 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @WREG32(i64 %117, i32 %118)
  %120 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %121 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @RREG32(i64 %122)
  %124 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %125 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = xor i32 %126, -1
  %128 = and i32 %123, %127
  store i32 %128, i32* %6, align 4
  %129 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %130 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @WREG32(i64 %131, i32 %132)
  %134 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %135 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @RREG32(i64 %136)
  %138 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %139 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = xor i32 %140, -1
  %142 = and i32 %137, %141
  store i32 %142, i32* %6, align 4
  %143 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %144 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @WREG32(i64 %145, i32 %146)
  %148 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %149 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @RREG32(i64 %150)
  %152 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %153 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = xor i32 %154, -1
  %156 = and i32 %151, %155
  store i32 %156, i32* %6, align 4
  %157 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %158 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @WREG32(i64 %159, i32 %160)
  %162 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %163 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @RREG32(i64 %164)
  %166 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %167 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %165, %168
  store i32 %169, i32* %6, align 4
  %170 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %171 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @WREG32(i64 %172, i32 %173)
  %175 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %176 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @RREG32(i64 %177)
  store i32 %178, i32* %6, align 4
  %179 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %180 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %179, i32 0, i32 10
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @RREG32(i64 %181)
  %183 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %184 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %183, i32 0, i32 11
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %182, %185
  store i32 %186, i32* %6, align 4
  %187 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %188 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %187, i32 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @WREG32(i64 %189, i32 %190)
  %192 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %5, align 8
  %193 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %192, i32 0, i32 10
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @RREG32(i64 %194)
  store i32 %195, i32* %6, align 4
  ret i32 0
}

declare dso_local %struct.radeon_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @R200_DVI_I2C_PIN_SEL(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
