; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32 }
%struct.nouveau_cli = type { i32 }
%struct.nouveau_channel = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ib channel create, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dma channel create, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"channel failed to initialise, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_channel_new(%struct.nouveau_drm* %0, %struct.nouveau_cli* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.nouveau_channel** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_drm*, align 8
  %10 = alloca %struct.nouveau_cli*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nouveau_channel**, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %9, align 8
  store %struct.nouveau_cli* %1, %struct.nouveau_cli** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.nouveau_channel** %6, %struct.nouveau_channel*** %15, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %9, align 8
  %18 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %15, align 8
  %23 = call i32 @nouveau_channel_ind(%struct.nouveau_drm* %17, %struct.nouveau_cli* %18, i32 %19, i32 %20, i32 %21, %struct.nouveau_channel** %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %7
  %27 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @NV_DEBUG(%struct.nouveau_cli* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.nouveau_drm*, %struct.nouveau_drm** %9, align 8
  %31 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %15, align 8
  %35 = call i32 @nouveau_channel_dma(%struct.nouveau_drm* %30, %struct.nouveau_cli* %31, i32 %32, i32 %33, %struct.nouveau_channel** %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @NV_DEBUG(%struct.nouveau_cli* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %8, align 4
  br label %60

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %7
  %45 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %15, align 8
  %46 = load %struct.nouveau_channel*, %struct.nouveau_channel** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @nouveau_channel_init(%struct.nouveau_channel* %46, i32 %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @NV_ERROR(%struct.nouveau_cli* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %15, align 8
  %57 = call i32 @nouveau_channel_del(%struct.nouveau_channel** %56)
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %8, align 4
  br label %60

59:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %52, %38
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @nouveau_channel_ind(%struct.nouveau_drm*, %struct.nouveau_cli*, i32, i32, i32, %struct.nouveau_channel**) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_cli*, i8*, i32) #1

declare dso_local i32 @nouveau_channel_dma(%struct.nouveau_drm*, %struct.nouveau_cli*, i32, i32, %struct.nouveau_channel**) #1

declare dso_local i32 @nouveau_channel_init(%struct.nouveau_channel*, i32, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_cli*, i8*, i32) #1

declare dso_local i32 @nouveau_channel_del(%struct.nouveau_channel**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
