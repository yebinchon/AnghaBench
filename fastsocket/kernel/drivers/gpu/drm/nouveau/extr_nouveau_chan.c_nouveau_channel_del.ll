; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_7__, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.nouveau_object = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.nouveau_channel*)* }

@NVDRM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_channel_del(%struct.nouveau_channel** %0) #0 {
  %2 = alloca %struct.nouveau_channel**, align 8
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca %struct.nouveau_object*, align 8
  store %struct.nouveau_channel** %0, %struct.nouveau_channel*** %2, align 8
  %5 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %2, align 8
  %6 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  store %struct.nouveau_channel* %6, %struct.nouveau_channel** %3, align 8
  %7 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %8 = icmp ne %struct.nouveau_channel* %7, null
  br i1 %8, label %9, label %82

9:                                                ; preds = %1
  %10 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.nouveau_object* @nv_object(i32 %12)
  store %struct.nouveau_object* %13, %struct.nouveau_object** %4, align 8
  %14 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %9
  %19 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %20 = call i32 @nouveau_channel_idle(%struct.nouveau_channel* %19)
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %22 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_8__* @nouveau_fence(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32 (%struct.nouveau_channel*)*, i32 (%struct.nouveau_channel*)** %25, align 8
  %27 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %28 = call i32 %26(%struct.nouveau_channel* %27)
  br label %29

29:                                               ; preds = %18, %9
  %30 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %31 = load i32, i32* @NVDRM_DEVICE, align 4
  %32 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %33 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nouveau_object_del(%struct.nouveau_object* %30, i32 %31, i32 %34)
  %36 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %37 = load i32, i32* @NVDRM_DEVICE, align 4
  %38 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %39 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nouveau_object_del(%struct.nouveau_object* %36, i32 %37, i32 %41)
  %43 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %44 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %48 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = call i32 @nouveau_bo_vma_del(%struct.TYPE_9__* %46, i32* %49)
  %51 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %52 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = call i32 @nouveau_bo_unmap(%struct.TYPE_9__* %54)
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %57 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = icmp ne %struct.TYPE_9__* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %29
  %62 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %63 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %71 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 @nouveau_bo_unpin(%struct.TYPE_9__* %73)
  br label %75

75:                                               ; preds = %69, %61, %29
  %76 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %77 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @nouveau_bo_ref(i32* null, %struct.TYPE_9__** %78)
  %80 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %81 = call i32 @kfree(%struct.nouveau_channel* %80)
  br label %82

82:                                               ; preds = %75, %1
  %83 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %2, align 8
  store %struct.nouveau_channel* null, %struct.nouveau_channel** %83, align 8
  ret void
}

declare dso_local %struct.nouveau_object* @nv_object(i32) #1

declare dso_local i32 @nouveau_channel_idle(%struct.nouveau_channel*) #1

declare dso_local %struct.TYPE_8__* @nouveau_fence(i32) #1

declare dso_local i32 @nouveau_object_del(%struct.nouveau_object*, i32, i32) #1

declare dso_local i32 @nouveau_bo_vma_del(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @nouveau_bo_unmap(%struct.TYPE_9__*) #1

declare dso_local i32 @nouveau_bo_unpin(%struct.TYPE_9__*) #1

declare dso_local i32 @nouveau_bo_ref(i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @kfree(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
