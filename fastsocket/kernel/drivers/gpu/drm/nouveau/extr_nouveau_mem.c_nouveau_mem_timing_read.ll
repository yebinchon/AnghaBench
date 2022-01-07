; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_timing_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_timing_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_memtiming = type { i32, i32*, i32, i32*, i32, i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_mem_timing_read(%struct.drm_device* %0, %struct.nouveau_pm_memtiming* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_pm_memtiming*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca %struct.nouveau_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nouveau_pm_memtiming* %1, %struct.nouveau_pm_memtiming** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %5, align 8
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %14 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device* %13)
  store %struct.nouveau_fb* %14, %struct.nouveau_fb** %6, align 8
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 192
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1110672, i32* %7, align 4
  store i32 1110784, i32* %9, align 4
  br label %21

20:                                               ; preds = %2
  store i32 1049120, i32* %7, align 4
  store i32 1049280, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %23 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %25 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %30 [
    i32 134, label %27
    i32 133, label %28
    i32 132, label %28
    i32 136, label %29
    i32 135, label %29
  ]

27:                                               ; preds = %21
  store i32 9, i32* %8, align 4
  br label %31

28:                                               ; preds = %21, %21
  store i32 5, i32* %8, align 4
  br label %31

29:                                               ; preds = %21, %21
  store i32 3, i32* %8, align 4
  br label %31

30:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %171

31:                                               ; preds = %29, %28, %27
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 4, %39
  %41 = add nsw i32 %38, %40
  %42 = call i32 @nv_rd32(%struct.nouveau_device* %37, i32 %41)
  %43 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %44 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %32

52:                                               ; preds = %32
  %53 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %54 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %56 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 133
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %61 = call i32 @nv_rd32(%struct.nouveau_device* %60, i32 1049128)
  %62 = and i32 %61, 251658240
  %63 = ashr i32 %62, 24
  %64 = add nsw i32 %63, 1
  %65 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %66 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %80

67:                                               ; preds = %52
  %68 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %69 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %70, 132
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %74 = call i32 @nv_rd32(%struct.nouveau_device* %73, i32 1110676)
  %75 = and i32 %74, 3968
  %76 = ashr i32 %75, 7
  %77 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %78 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %72, %67
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @nv_rd32(%struct.nouveau_device* %81, i32 %82)
  %84 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %85 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 4
  %91 = call i32 @nv_rd32(%struct.nouveau_device* %88, i32 %90)
  %92 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %93 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 32
  %99 = call i32 @nv_rd32(%struct.nouveau_device* %96, i32 %98)
  %100 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %101 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 %99, i32* %103, align 4
  %104 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 36
  %107 = call i32 @nv_rd32(%struct.nouveau_device* %104, i32 %106)
  %108 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %109 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 %107, i32* %111, align 4
  %112 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %113 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %112, i32 0, i32 4
  store i32 0, i32* %113, align 8
  %114 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %115 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %114, i32 0, i32 5
  store i32 0, i32* %115, align 4
  %116 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %117 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %170 [
    i32 130, label %120
    i32 131, label %132
    i32 129, label %152
    i32 128, label %152
  ]

120:                                              ; preds = %80
  %121 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %122 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 512
  %127 = ashr i32 %126, 7
  %128 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %129 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %80, %120
  %133 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %134 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 4
  %139 = ashr i32 %138, 2
  %140 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %141 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 64
  %146 = ashr i32 %145, 5
  %147 = or i32 %139, %146
  %148 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %149 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %171

152:                                              ; preds = %80, %80
  %153 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %154 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 3
  %159 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %160 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  %161 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %162 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 12
  %167 = ashr i32 %166, 2
  %168 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %4, align 8
  %169 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  br label %171

170:                                              ; preds = %80
  br label %171

171:                                              ; preds = %30, %170, %152, %132
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
