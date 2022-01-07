; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_ctor_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_ctor_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }
%struct.nvc0_graph_fuc = type { i32*, i32 }
%struct.nouveau_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"nouveau/nv%02x_%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nouveau/%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"failed to load %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv* %0, i8* %1, %struct.nvc0_graph_fuc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvc0_graph_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvc0_graph_fuc*, align 8
  %8 = alloca %struct.nouveau_device*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.nvc0_graph_fuc* %2, %struct.nvc0_graph_fuc** %7, align 8
  %12 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %13 = call %struct.nouveau_device* @nv_device(%struct.nvc0_graph_priv* %12)
  store %struct.nouveau_device* %13, %struct.nouveau_device** %8, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %16 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %14, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %21 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %22 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @request_firmware(%struct.firmware** %9, i8* %20, i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %3
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %33 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %34 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @request_firmware(%struct.firmware** %9, i8* %32, i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @nv_error(%struct.nvc0_graph_priv* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %74

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.firmware*, %struct.firmware** %9, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nvc0_graph_fuc*, %struct.nvc0_graph_fuc** %7, align 8
  %51 = getelementptr inbounds %struct.nvc0_graph_fuc, %struct.nvc0_graph_fuc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.firmware*, %struct.firmware** %9, align 8
  %53 = getelementptr inbounds %struct.firmware, %struct.firmware* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nvc0_graph_fuc*, %struct.nvc0_graph_fuc** %7, align 8
  %56 = getelementptr inbounds %struct.nvc0_graph_fuc, %struct.nvc0_graph_fuc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32* @kmemdup(i32 %54, i32 %57, i32 %58)
  %60 = load %struct.nvc0_graph_fuc*, %struct.nvc0_graph_fuc** %7, align 8
  %61 = getelementptr inbounds %struct.nvc0_graph_fuc, %struct.nvc0_graph_fuc* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.firmware*, %struct.firmware** %9, align 8
  %63 = call i32 @release_firmware(%struct.firmware* %62)
  %64 = load %struct.nvc0_graph_fuc*, %struct.nvc0_graph_fuc** %7, align 8
  %65 = getelementptr inbounds %struct.nvc0_graph_fuc, %struct.nvc0_graph_fuc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  br label %72

69:                                               ; preds = %46
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ 0, %68 ], [ %71, %69 ]
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %40
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @nv_error(%struct.nvc0_graph_priv*, i8*, i8*) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
