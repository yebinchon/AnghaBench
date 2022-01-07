; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32 }
%struct.nouveau_cli = type { i32 }
%struct.nouveau_channel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nv03_channel_dma_class = type { i32, i32 }

@nouveau_channel_dma.oclasses = internal constant [5 x i64] [i64 128, i64 129, i64 130, i64 131, i64 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*, %struct.nouveau_cli*, i32, i32, %struct.nouveau_channel**)* @nouveau_channel_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_channel_dma(%struct.nouveau_drm* %0, %struct.nouveau_cli* %1, i32 %2, i32 %3, %struct.nouveau_channel** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_cli*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_channel**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.nv03_channel_dma_class, align 4
  %14 = alloca %struct.nouveau_channel*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %7, align 8
  store %struct.nouveau_cli* %1, %struct.nouveau_cli** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nouveau_channel** %4, %struct.nouveau_channel*** %11, align 8
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @nouveau_channel_dma.oclasses, i64 0, i64 0), i64** %12, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %17 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @nouveau_channel_prep(%struct.nouveau_drm* %16, %struct.nouveau_cli* %17, i32 %18, i32 %19, i32 65536, %struct.nouveau_channel** %14)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %22 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %11, align 8
  store %struct.nouveau_channel* %21, %struct.nouveau_channel** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %6, align 4
  br label %69

27:                                               ; preds = %5
  %28 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %29 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %13, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %34 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.nv03_channel_dma_class, %struct.nv03_channel_dma_class* %13, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %63, %27
  %40 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %41 = call i32 @nv_object(%struct.nouveau_cli* %40)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i64*, i64** %12, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %12, align 8
  %46 = load i64, i64* %44, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %49 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %48, i32 0, i32 0
  %50 = call i32 @nouveau_object_new(i32 %41, i32 %42, i32 %43, i32 %47, %struct.nv03_channel_dma_class* %13, i32 8, i32* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %6, align 4
  br label %69

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64*, i64** %12, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i1 [ false, %56 ], [ %62, %59 ]
  br i1 %64, label %39, label %65

65:                                               ; preds = %63
  %66 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %11, align 8
  %67 = call i32 @nouveau_channel_del(%struct.nouveau_channel** %66)
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %53, %25
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @nouveau_channel_prep(%struct.nouveau_drm*, %struct.nouveau_cli*, i32, i32, i32, %struct.nouveau_channel**) #1

declare dso_local i32 @nouveau_object_new(i32, i32, i32, i32, %struct.nv03_channel_dma_class*, i32, i32*) #1

declare dso_local i32 @nv_object(%struct.nouveau_cli*) #1

declare dso_local i32 @nouveau_channel_del(%struct.nouveau_channel**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
