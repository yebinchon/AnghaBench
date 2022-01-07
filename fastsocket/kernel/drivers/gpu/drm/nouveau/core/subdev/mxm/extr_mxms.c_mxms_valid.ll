; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_mxms.c_mxms_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_mxms.c_mxms_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mxm = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"signature invalid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxms_valid(%struct.nouveau_mxm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_mxm*, align 8
  %4 = alloca i32*, align 8
  store %struct.nouveau_mxm* %0, %struct.nouveau_mxm** %3, align 8
  %5 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %6 = call i32* @mxms_data(%struct.nouveau_mxm* %5)
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 1598904397
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %12 = call i32 @nv_debug(%struct.nouveau_mxm* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %15 = call i32 @mxms_version(%struct.nouveau_mxm* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %19 = call i32 @mxms_checksum(%struct.nouveau_mxm* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13
  store i32 0, i32* %2, align 4
  br label %23

22:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32* @mxms_data(%struct.nouveau_mxm*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_mxm*, i8*) #1

declare dso_local i32 @mxms_version(%struct.nouveau_mxm*) #1

declare dso_local i32 @mxms_checksum(%struct.nouveau_mxm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
