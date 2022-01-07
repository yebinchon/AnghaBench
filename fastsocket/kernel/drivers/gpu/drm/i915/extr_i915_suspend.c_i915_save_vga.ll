; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_vga.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i8* }

@VGA0 = common dso_local global i32 0, align 4
@VGA1 = common dso_local global i32 0, align 4
@VGA_PD = common dso_local global i32 0, align 4
@VGA_DACMASK = common dso_local global i32 0, align 4
@VGA_MSR_READ = common dso_local global i32 0, align 4
@VGA_MSR_CGA_MODE = common dso_local global i32 0, align 4
@VGA_CR_INDEX_CGA = common dso_local global i32 0, align 4
@VGA_CR_DATA_CGA = common dso_local global i32 0, align 4
@VGA_ST01_CGA = common dso_local global i32 0, align 4
@VGA_CR_INDEX_MDA = common dso_local global i32 0, align 4
@VGA_CR_DATA_MDA = common dso_local global i32 0, align 4
@VGA_ST01_MDA = common dso_local global i32 0, align 4
@VGA_AR_INDEX = common dso_local global i32 0, align 4
@VGA_GR_INDEX = common dso_local global i32 0, align 4
@VGA_GR_DATA = common dso_local global i32 0, align 4
@VGA_SR_INDEX = common dso_local global i32 0, align 4
@VGA_SR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i915_save_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_save_vga(%struct.drm_device* %0) #0 {
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
  %11 = load i32, i32* @VGA0, align 4
  %12 = call i8* @I915_READ(i32 %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 10
  store i8* %12, i8** %15, align 8
  %16 = load i32, i32* @VGA1, align 4
  %17 = call i8* @I915_READ(i32 %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 9
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @VGA_PD, align 4
  %22 = call i8* @I915_READ(i32 %21)
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 8
  store i8* %22, i8** %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i32 @i915_vgacntrl_reg(%struct.drm_device* %26)
  %28 = call i8* @I915_READ(i32 %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 7
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* @VGA_DACMASK, align 4
  %33 = call i8* @I915_READ8(i32 %32)
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @VGA_MSR_READ, align 4
  %38 = call i8* @I915_READ8(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VGA_MSR_CGA_MODE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load i32, i32* @VGA_CR_INDEX_CGA, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @VGA_CR_DATA_CGA, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @VGA_ST01_CGA, align 4
  store i32 %53, i32* %7, align 4
  br label %58

54:                                               ; preds = %1
  %55 = load i32, i32* @VGA_CR_INDEX_MDA, align 4
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @VGA_CR_DATA_MDA, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @VGA_ST01_MDA, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @i915_read_indexed(%struct.drm_device* %62, i32 %63, i32 %64, i32 17)
  %66 = and i32 %65, -129
  %67 = call i32 @i915_write_indexed(%struct.drm_device* %59, i32 %60, i32 %61, i32 17, i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %84, %58
  %69 = load i32, i32* %4, align 4
  %70 = icmp sle i32 %69, 36
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @i915_read_indexed(%struct.drm_device* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %78 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %76, i32* %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %68

87:                                               ; preds = %68
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %89 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 17
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -129
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i8* @I915_READ8(i32 %95)
  %97 = load i32, i32* @VGA_AR_INDEX, align 4
  %98 = call i8* @I915_READ8(i32 %97)
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %100 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  store i8* %98, i8** %101, align 8
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %117, %87
  %103 = load i32, i32* %4, align 4
  %104 = icmp sle i32 %103, 20
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @i915_read_ar(%struct.drm_device* %106, i32 %107, i32 %108, i32 0)
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %111 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %109, i32* %116, align 4
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %102

120:                                              ; preds = %102
  %121 = load i32, i32* %7, align 4
  %122 = call i8* @I915_READ8(i32 %121)
  %123 = load i32, i32* @VGA_AR_INDEX, align 4
  %124 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %125 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @I915_WRITE8(i32 %123, i8* %127)
  %129 = load i32, i32* %7, align 4
  %130 = call i8* @I915_READ8(i32 %129)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %147, %120
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 %132, 9
  br i1 %133, label %134, label %150

134:                                              ; preds = %131
  %135 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %136 = load i32, i32* @VGA_GR_INDEX, align 4
  %137 = load i32, i32* @VGA_GR_DATA, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @i915_read_indexed(%struct.drm_device* %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %141 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %139, i32* %146, align 4
  br label %147

147:                                              ; preds = %134
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %131

150:                                              ; preds = %131
  %151 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %152 = load i32, i32* @VGA_GR_INDEX, align 4
  %153 = load i32, i32* @VGA_GR_DATA, align 4
  %154 = call i32 @i915_read_indexed(%struct.drm_device* %151, i32 %152, i32 %153, i32 16)
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %156 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 16
  store i32 %154, i32* %159, align 4
  %160 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %161 = load i32, i32* @VGA_GR_INDEX, align 4
  %162 = load i32, i32* @VGA_GR_DATA, align 4
  %163 = call i32 @i915_read_indexed(%struct.drm_device* %160, i32 %161, i32 %162, i32 17)
  %164 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %165 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 17
  store i32 %163, i32* %168, align 4
  %169 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %170 = load i32, i32* @VGA_GR_INDEX, align 4
  %171 = load i32, i32* @VGA_GR_DATA, align 4
  %172 = call i32 @i915_read_indexed(%struct.drm_device* %169, i32 %170, i32 %171, i32 24)
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %174 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 24
  store i32 %172, i32* %177, align 4
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %194, %150
  %179 = load i32, i32* %4, align 4
  %180 = icmp slt i32 %179, 8
  br i1 %180, label %181, label %197

181:                                              ; preds = %178
  %182 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %183 = load i32, i32* @VGA_SR_INDEX, align 4
  %184 = load i32, i32* @VGA_SR_DATA, align 4
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @i915_read_indexed(%struct.drm_device* %182, i32 %183, i32 %184, i32 %185)
  %187 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %188 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %186, i32* %193, align 4
  br label %194

194:                                              ; preds = %181
  %195 = load i32, i32* %4, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %4, align 4
  br label %178

197:                                              ; preds = %178
  ret void
}

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @i915_vgacntrl_reg(%struct.drm_device*) #1

declare dso_local i8* @I915_READ8(i32) #1

declare dso_local i32 @i915_write_indexed(%struct.drm_device*, i32, i32, i32, i32) #1

declare dso_local i32 @i915_read_indexed(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @i915_read_ar(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @I915_WRITE8(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
