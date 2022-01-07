; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_mxms.c_mxms_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_mxms.c_mxms_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mxm = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unknown version %d.%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxms_version(%struct.nouveau_mxm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_mxm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_mxm* %0, %struct.nouveau_mxm** %3, align 8
  %6 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %7 = call i32* @mxms_data(%struct.nouveau_mxm* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 4
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 5
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %19 [
    i32 512, label %17
    i32 513, label %17
    i32 768, label %17
  ]

17:                                               ; preds = %1, %1, %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nv_debug(%struct.nouveau_mxm* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32* @mxms_data(%struct.nouveau_mxm*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_mxm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
