; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_fifo = type { i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)* }
%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nouveau_handle = type { i32 }
%struct.nv31_mpeg_priv = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"ch %d [0x%08x %s] 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv31_mpeg_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_fifo*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_handle*, align 8
  %7 = alloca %struct.nv31_mpeg_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %15 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %16 = call %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev* %15)
  store %struct.nouveau_fifo* %16, %struct.nouveau_fifo** %3, align 8
  %17 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %18 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev* %17)
  store %struct.nouveau_engine* %18, %struct.nouveau_engine** %4, align 8
  %19 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %20 = bitcast %struct.nouveau_subdev* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nv31_mpeg_priv*
  store %struct.nv31_mpeg_priv* %21, %struct.nv31_mpeg_priv** %7, align 8
  %22 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %7, align 8
  %23 = call i32 @nv_rd32(%struct.nv31_mpeg_priv* %22, i32 45848)
  %24 = and i32 %23, 1048575
  store i32 %24, i32* %8, align 4
  %25 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %7, align 8
  %26 = call i32 @nv_rd32(%struct.nv31_mpeg_priv* %25, i32 45312)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %7, align 8
  %28 = call i32 @nv_rd32(%struct.nv31_mpeg_priv* %27, i32 45616)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %7, align 8
  %30 = call i32 @nv_rd32(%struct.nv31_mpeg_priv* %29, i32 45620)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %7, align 8
  %32 = call i32 @nv_rd32(%struct.nv31_mpeg_priv* %31, i32 45624)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %34, i32 %35)
  store %struct.nouveau_object* %36, %struct.nouveau_object** %5, align 8
  %37 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %38 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %37, i32 0, i32 0
  %39 = load i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)*, i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)** %38, align 8
  %40 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %41 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %42 = call i32 %39(%struct.nouveau_fifo* %40, %struct.nouveau_object* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 16777216
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %1
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %7, align 8
  %54 = call i32 @nv_mask(%struct.nv31_mpeg_priv* %53, i32 45832, i32 0, i32 0)
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %55, -16777217
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %52, %49, %46
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %62 = call %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object* %61, i32 12660)
  store %struct.nouveau_handle* %62, %struct.nouveau_handle** %6, align 8
  %63 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %64 = icmp ne %struct.nouveau_handle* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %67 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @nv_call(i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, -16777217
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %73, %65, %60
  %77 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %78 = call i32 @nouveau_handle_put(%struct.nouveau_handle* %77)
  br label %79

79:                                               ; preds = %76, %57
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %81, i32 45312, i32 %82)
  %84 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %7, align 8
  %85 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %84, i32 45616, i32 1)
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %7, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 %91, 4
  %93 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %94 = call i32 @nouveau_client_name(%struct.nouveau_object* %93)
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @nv_error(%struct.nv31_mpeg_priv* %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %92, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %88, %80
  %101 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %102 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %101)
  ret void
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev*) #1

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nv31_mpeg_priv*, i32) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local i32 @nv_mask(%struct.nv31_mpeg_priv*, i32, i32, i32) #1

declare dso_local %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv_call(i32, i32, i32) #1

declare dso_local i32 @nouveau_handle_put(%struct.nouveau_handle*) #1

declare dso_local i32 @nv_wr32(%struct.nv31_mpeg_priv*, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv31_mpeg_priv*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
