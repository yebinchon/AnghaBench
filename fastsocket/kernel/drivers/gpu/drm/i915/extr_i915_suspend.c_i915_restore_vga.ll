; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_restore_vga.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_restore_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32 }

@VGA0 = common dso_local global i32 0, align 4
@VGA1 = common dso_local global i32 0, align 4
@VGA_PD = common dso_local global i32 0, align 4
@VGA_MSR_WRITE = common dso_local global i32 0, align 4
@VGA_MSR_CGA_MODE = common dso_local global i32 0, align 4
@VGA_CR_INDEX_CGA = common dso_local global i32 0, align 4
@VGA_CR_DATA_CGA = common dso_local global i32 0, align 4
@VGA_ST01_CGA = common dso_local global i32 0, align 4
@VGA_CR_INDEX_MDA = common dso_local global i32 0, align 4
@VGA_CR_DATA_MDA = common dso_local global i32 0, align 4
@VGA_ST01_MDA = common dso_local global i32 0, align 4
@VGA_SR_INDEX = common dso_local global i32 0, align 4
@VGA_SR_DATA = common dso_local global i32 0, align 4
@VGA_GR_INDEX = common dso_local global i32 0, align 4
@VGA_GR_DATA = common dso_local global i32 0, align 4
@VGA_AR_INDEX = common dso_local global i32 0, align 4
@VGA_DACMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i915_restore_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_restore_vga(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = call i32 @i915_vgacntrl_reg(%struct.drm_device* %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @I915_WRITE(i32 %12, i32 %16)
  %18 = load i32, i32* @VGA0, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @I915_WRITE(i32 %18, i32 %22)
  %24 = load i32, i32* @VGA1, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @I915_WRITE(i32 %24, i32 %28)
  %30 = load i32, i32* @VGA_PD, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @I915_WRITE(i32 %30, i32 %34)
  %36 = load i32, i32* @VGA_PD, align 4
  %37 = call i32 @POSTING_READ(i32 %36)
  %38 = call i32 @udelay(i32 150)
  %39 = load i32, i32* @VGA_MSR_WRITE, align 4
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @I915_WRITE8(i32 %39, i32 %43)
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VGA_MSR_CGA_MODE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %1
  %53 = load i32, i32* @VGA_CR_INDEX_CGA, align 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @VGA_CR_DATA_CGA, align 4
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @VGA_ST01_CGA, align 4
  store i32 %55, i32* %7, align 4
  br label %60

56:                                               ; preds = %1
  %57 = load i32, i32* @VGA_CR_INDEX_MDA, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @VGA_CR_DATA_MDA, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @VGA_ST01_MDA, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %52
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %78, %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 7
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %66 = load i32, i32* @VGA_SR_INDEX, align 4
  %67 = load i32, i32* @VGA_SR_DATA, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %70 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @i915_write_indexed(%struct.drm_device* %65, i32 %66, i32 %67, i32 %68, i32 %76)
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %61

81:                                               ; preds = %61
  %82 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %86 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 17
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @i915_write_indexed(%struct.drm_device* %82, i32 %83, i32 %84, i32 17, i32 %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %109, %81
  %93 = load i32, i32* %4, align 4
  %94 = icmp sle i32 %93, 36
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %101 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @i915_write_indexed(%struct.drm_device* %96, i32 %97, i32 %98, i32 %99, i32 %107)
  br label %109

109:                                              ; preds = %95
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %92

112:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %130, %112
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %114, 9
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %118 = load i32, i32* @VGA_GR_INDEX, align 4
  %119 = load i32, i32* @VGA_GR_DATA, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %122 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @i915_write_indexed(%struct.drm_device* %117, i32 %118, i32 %119, i32 %120, i32 %128)
  br label %130

130:                                              ; preds = %116
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %113

133:                                              ; preds = %113
  %134 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %135 = load i32, i32* @VGA_GR_INDEX, align 4
  %136 = load i32, i32* @VGA_GR_DATA, align 4
  %137 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %138 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 16
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @i915_write_indexed(%struct.drm_device* %134, i32 %135, i32 %136, i32 16, i32 %142)
  %144 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %145 = load i32, i32* @VGA_GR_INDEX, align 4
  %146 = load i32, i32* @VGA_GR_DATA, align 4
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %148 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 17
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @i915_write_indexed(%struct.drm_device* %144, i32 %145, i32 %146, i32 17, i32 %152)
  %154 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %155 = load i32, i32* @VGA_GR_INDEX, align 4
  %156 = load i32, i32* @VGA_GR_DATA, align 4
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %158 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 24
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @i915_write_indexed(%struct.drm_device* %154, i32 %155, i32 %156, i32 24, i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @I915_READ8(i32 %164)
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %182, %133
  %167 = load i32, i32* %4, align 4
  %168 = icmp sle i32 %167, 20
  br i1 %168, label %169, label %185

169:                                              ; preds = %166
  %170 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %4, align 4
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %174 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @i915_write_ar(%struct.drm_device* %170, i32 %171, i32 %172, i32 %180, i32 0)
  br label %182

182:                                              ; preds = %169
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %166

185:                                              ; preds = %166
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @I915_READ8(i32 %186)
  %188 = load i32, i32* @VGA_AR_INDEX, align 4
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %190 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, 32
  %194 = call i32 @I915_WRITE8(i32 %188, i32 %193)
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @I915_READ8(i32 %195)
  %197 = load i32, i32* @VGA_DACMASK, align 4
  %198 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %199 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @I915_WRITE8(i32 %197, i32 %201)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @i915_vgacntrl_reg(%struct.drm_device*) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @I915_WRITE8(i32, i32) #1

declare dso_local i32 @i915_write_indexed(%struct.drm_device*, i32, i32, i32, i32) #1

declare dso_local i32 @I915_READ8(i32) #1

declare dso_local i32 @i915_write_ar(%struct.drm_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
