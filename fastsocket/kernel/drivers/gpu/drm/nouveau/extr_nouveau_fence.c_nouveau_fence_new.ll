; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.nouveau_fence = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fence_new(%struct.nouveau_channel* %0, i32 %1, %struct.nouveau_fence** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_fence**, align 8
  %8 = alloca %struct.nouveau_fence*, align 8
  %9 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nouveau_fence** %2, %struct.nouveau_fence*** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nouveau_fence* @kzalloc(i32 8, i32 %22)
  store %struct.nouveau_fence* %23, %struct.nouveau_fence** %8, align 8
  %24 = load %struct.nouveau_fence*, %struct.nouveau_fence** %8, align 8
  %25 = icmp ne %struct.nouveau_fence* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.nouveau_fence*, %struct.nouveau_fence** %8, align 8
  %32 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.nouveau_fence*, %struct.nouveau_fence** %8, align 8
  %34 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %33, i32 0, i32 1
  %35 = call i32 @kref_init(i32* %34)
  %36 = load %struct.nouveau_fence*, %struct.nouveau_fence** %8, align 8
  %37 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %38 = call i32 @nouveau_fence_emit(%struct.nouveau_fence* %36, %struct.nouveau_channel* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = call i32 @nouveau_fence_unref(%struct.nouveau_fence** %8)
  br label %43

43:                                               ; preds = %41, %29
  %44 = load %struct.nouveau_fence*, %struct.nouveau_fence** %8, align 8
  %45 = load %struct.nouveau_fence**, %struct.nouveau_fence*** %7, align 8
  store %struct.nouveau_fence* %44, %struct.nouveau_fence** %45, align 8
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %26, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nouveau_fence* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @nouveau_fence_emit(%struct.nouveau_fence*, %struct.nouveau_channel*) #1

declare dso_local i32 @nouveau_fence_unref(%struct.nouveau_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
