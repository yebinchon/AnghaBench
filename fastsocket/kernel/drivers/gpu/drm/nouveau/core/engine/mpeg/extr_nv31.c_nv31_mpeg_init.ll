; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 (%struct.nouveau_engine*, i32)* }
%struct.nv31_mpeg_priv = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"timeout 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv31_mpeg_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nv31_mpeg_priv*, align 8
  %6 = alloca %struct.nouveau_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_engine* @nv_engine(i32 %11)
  store %struct.nouveau_engine* %12, %struct.nouveau_engine** %4, align 8
  %13 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %14 = bitcast %struct.nouveau_engine* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv31_mpeg_priv*
  store %struct.nv31_mpeg_priv* %15, %struct.nv31_mpeg_priv** %5, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %17 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object* %16)
  store %struct.nouveau_fb* %17, %struct.nouveau_fb** %6, align 8
  %18 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %19 = getelementptr inbounds %struct.nv31_mpeg_priv, %struct.nv31_mpeg_priv* %18, i32 0, i32 0
  %20 = call i32 @nouveau_mpeg_init(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %78

25:                                               ; preds = %1
  %26 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %27 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %26, i32 45280, i32 32)
  %28 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %29 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %28, i32 45288, i32 32)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %44, %25
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %33 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %39 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %38, i32 0, i32 0
  %40 = load i32 (%struct.nouveau_engine*, i32)*, i32 (%struct.nouveau_engine*, i32)** %39, align 8
  %41 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 %40(%struct.nouveau_engine* %41, i32 %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %49 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %48, i32 45868, i32 0)
  %50 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %51 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %50, i32 45844, i32 256)
  %52 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %53 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %54 = call i64 @nv44_graph_class(%struct.nv31_mpeg_priv* %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 68, i32 49
  %58 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %52, i32 45600, i32 %57)
  %59 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %60 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %59, i32 45824, i32 33562305)
  %61 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %62 = call i32 @nv_mask(%struct.nv31_mpeg_priv* %61, i32 45868, i32 1, i32 1)
  %63 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %64 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %63, i32 45312, i32 -1)
  %65 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %66 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %65, i32 45376, i32 -1)
  %67 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %68 = call i32 @nv_wait(%struct.nv31_mpeg_priv* %67, i32 45568, i32 1, i32 0)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %47
  %71 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %72 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %5, align 8
  %73 = call i32 @nv_rd32(%struct.nv31_mpeg_priv* %72, i32 45568)
  %74 = call i32 @nv_error(%struct.nv31_mpeg_priv* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %70, %23
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.nouveau_engine* @nv_engine(i32) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_mpeg_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv31_mpeg_priv*, i32, i32) #1

declare dso_local i64 @nv44_graph_class(%struct.nv31_mpeg_priv*) #1

declare dso_local i32 @nv_mask(%struct.nv31_mpeg_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv31_mpeg_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv31_mpeg_priv*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv31_mpeg_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
