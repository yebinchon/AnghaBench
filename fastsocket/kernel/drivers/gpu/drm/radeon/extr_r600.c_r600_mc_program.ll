; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_mc_program.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_mc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rv515_mc_save = type { i32 }

@HDP_REG_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@VGA_HDP_CONTROL = common dso_local global i32 0, align 4
@VGA_MEMORY_DISABLE = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR = common dso_local global i32 0, align 4
@MC_VM_FB_LOCATION = common dso_local global i32 0, align 4
@HDP_NONSURFACE_BASE = common dso_local global i32 0, align 4
@HDP_NONSURFACE_INFO = common dso_local global i32 0, align 4
@HDP_NONSURFACE_SIZE = common dso_local global i32 0, align 4
@MC_VM_AGP_TOP = common dso_local global i32 0, align 4
@MC_VM_AGP_BOT = common dso_local global i32 0, align 4
@MC_VM_AGP_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r600_mc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_mc_program(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv515_mc_save, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 11284, %11
  %13 = call i32 @WREG32(i32 %12, i32 0)
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 11288, %14
  %16 = call i32 @WREG32(i32 %15, i32 0)
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 11292, %17
  %19 = call i32 @WREG32(i32 %18, i32 0)
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 11296, %20
  %22 = call i32 @WREG32(i32 %21, i32 0)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 11300, %23
  %25 = call i32 @WREG32(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %10
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 24
  store i32 %30, i32* %6, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load i32, i32* @HDP_REG_COHERENCY_FLUSH_CNTL, align 4
  %33 = call i32 @WREG32(i32 %32, i32 0)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = call i32 @rv515_mc_stop(%struct.radeon_device* %34, %struct.rv515_mc_save* %3)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = call i64 @r600_mc_wait_for_idle(%struct.radeon_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %31
  %45 = load i32, i32* @VGA_HDP_CONTROL, align 4
  %46 = load i32, i32* @VGA_MEMORY_DISABLE, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RADEON_IS_AGP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %95

54:                                               ; preds = %44
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %54
  %65 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 12
  %71 = call i32 @WREG32(i32 %65, i32 %70)
  %72 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 12
  %78 = call i32 @WREG32(i32 %72, i32 %77)
  br label %94

79:                                               ; preds = %54
  %80 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 12
  %86 = call i32 @WREG32(i32 %80, i32 %85)
  %87 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 12
  %93 = call i32 @WREG32(i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %79, %64
  br label %110

95:                                               ; preds = %44
  %96 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 12
  %102 = call i32 @WREG32(i32 %96, i32 %101)
  %103 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %104 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 12
  %109 = call i32 @WREG32(i32 %103, i32 %108)
  br label %110

110:                                              ; preds = %95, %94
  %111 = load i32, i32* @MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR, align 4
  %112 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 12
  %117 = call i32 @WREG32(i32 %111, i32 %116)
  %118 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 24
  %123 = and i32 %122, 65535
  %124 = shl i32 %123, 16
  store i32 %124, i32* %4, align 4
  %125 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 24
  %130 = and i32 %129, 65535
  %131 = load i32, i32* %4, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* @MC_VM_FB_LOCATION, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @WREG32(i32 %133, i32 %134)
  %136 = load i32, i32* @HDP_NONSURFACE_BASE, align 4
  %137 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 8
  %142 = call i32 @WREG32(i32 %136, i32 %141)
  %143 = load i32, i32* @HDP_NONSURFACE_INFO, align 4
  %144 = call i32 @WREG32(i32 %143, i32 256)
  %145 = load i32, i32* @HDP_NONSURFACE_SIZE, align 4
  %146 = call i32 @WREG32(i32 %145, i32 1073741823)
  %147 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RADEON_IS_AGP, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %175

153:                                              ; preds = %110
  %154 = load i32, i32* @MC_VM_AGP_TOP, align 4
  %155 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 22
  %160 = call i32 @WREG32(i32 %154, i32 %159)
  %161 = load i32, i32* @MC_VM_AGP_BOT, align 4
  %162 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 22
  %167 = call i32 @WREG32(i32 %161, i32 %166)
  %168 = load i32, i32* @MC_VM_AGP_BASE, align 4
  %169 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 22
  %174 = call i32 @WREG32(i32 %168, i32 %173)
  br label %182

175:                                              ; preds = %110
  %176 = load i32, i32* @MC_VM_AGP_BASE, align 4
  %177 = call i32 @WREG32(i32 %176, i32 0)
  %178 = load i32, i32* @MC_VM_AGP_TOP, align 4
  %179 = call i32 @WREG32(i32 %178, i32 268435455)
  %180 = load i32, i32* @MC_VM_AGP_BOT, align 4
  %181 = call i32 @WREG32(i32 %180, i32 268435455)
  br label %182

182:                                              ; preds = %175, %153
  %183 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %184 = call i64 @r600_mc_wait_for_idle(%struct.radeon_device* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @dev_warn(i32 %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %191

191:                                              ; preds = %186, %182
  %192 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %193 = call i32 @rv515_mc_resume(%struct.radeon_device* %192, %struct.rv515_mc_save* %3)
  %194 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %195 = call i32 @rv515_vga_render_disable(%struct.radeon_device* %194)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @rv515_mc_stop(%struct.radeon_device*, %struct.rv515_mc_save*) #1

declare dso_local i64 @r600_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @rv515_mc_resume(%struct.radeon_device*, %struct.rv515_mc_save*) #1

declare dso_local i32 @rv515_vga_render_disable(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
