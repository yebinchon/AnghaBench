; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nouveau_object = type { i32 }
%struct.nouveau_handle = type { i32 }
%struct.nv20_graph_priv = type { i32 }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSTATUS = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_DATA = common dso_local global i32 0, align 4
@NV_PGRAPH_INTR_ERROR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD = common dso_local global i32 0, align 4
@NV04_PGRAPH_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nv10_graph_intr_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" nsource:\00", align 1
@nv04_graph_nsource = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" nstatus:\00", align 1
@nv10_graph_nstatus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"ch %d [%s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv20_graph_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_engine*, align 8
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca %struct.nouveau_handle*, align 8
  %6 = alloca %struct.nv20_graph_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %17 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %18 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev* %17)
  store %struct.nouveau_engine* %18, %struct.nouveau_engine** %3, align 8
  %19 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %20 = bitcast %struct.nouveau_subdev* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nv20_graph_priv*
  store %struct.nv20_graph_priv* %21, %struct.nv20_graph_priv** %6, align 8
  %22 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %23 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %24 = call i32 @nv_rd32(%struct.nv20_graph_priv* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %26 = load i32, i32* @NV03_PGRAPH_NSOURCE, align 4
  %27 = call i32 @nv_rd32(%struct.nv20_graph_priv* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %29 = load i32, i32* @NV03_PGRAPH_NSTATUS, align 4
  %30 = call i32 @nv_rd32(%struct.nv20_graph_priv* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %32 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %33 = call i32 @nv_rd32(%struct.nv20_graph_priv* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 32505856
  %36 = ashr i32 %35, 20
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 458752
  %39 = ashr i32 %38, 16
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 8188
  store i32 %41, i32* %13, align 4
  %42 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %43 = load i32, i32* @NV04_PGRAPH_TRAPPED_DATA, align 4
  %44 = call i32 @nv_rd32(%struct.nv20_graph_priv* %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 4194656, %47
  %49 = call i32 @nv_rd32(%struct.nv20_graph_priv* %45, i32 %48)
  %50 = and i32 %49, 4095
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %16, align 4
  %52 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %52, i32 %53)
  store %struct.nouveau_object* %54, %struct.nouveau_object** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NV_PGRAPH_INTR_ERROR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %1
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object* %65, i32 %66)
  store %struct.nouveau_handle* %67, %struct.nouveau_handle** %5, align 8
  %68 = load %struct.nouveau_handle*, %struct.nouveau_handle** %5, align 8
  %69 = icmp ne %struct.nouveau_handle* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.nouveau_handle*, %struct.nouveau_handle** %5, align 8
  %72 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @nv_call(i32 %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @NV_PGRAPH_INTR_ERROR, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %16, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %78, %70, %64
  %84 = load %struct.nouveau_handle*, %struct.nouveau_handle** %5, align 8
  %85 = call i32 @nouveau_handle_put(%struct.nouveau_handle* %84)
  br label %86

86:                                               ; preds = %83, %59
  br label %87

87:                                               ; preds = %86, %1
  %88 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %89 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @nv_wr32(%struct.nv20_graph_priv* %88, i32 %89, i32 %90)
  %92 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %93 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %94 = call i32 @nv_wr32(%struct.nv20_graph_priv* %92, i32 %93, i32 1)
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %87
  %98 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %99 = call i32 (%struct.nv20_graph_priv*, i8*, ...) @nv_error(%struct.nv20_graph_priv* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @nv10_graph_intr_name, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @nouveau_bitfield_print(i32 %100, i32 %101)
  %103 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @nv04_graph_nsource, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @nouveau_bitfield_print(i32 %104, i32 %105)
  %107 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @nv10_graph_nstatus, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @nouveau_bitfield_print(i32 %108, i32 %109)
  %111 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %112 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %115 = call i32 @nouveau_client_name(%struct.nouveau_object* %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 (%struct.nv20_graph_priv*, i8*, ...) @nv_error(%struct.nv20_graph_priv* %112, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %113, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %97, %87
  %122 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %123 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %122)
  ret void
}

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nv20_graph_priv*, i32) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv_call(i32, i32, i32) #1

declare dso_local i32 @nouveau_handle_put(%struct.nouveau_handle*) #1

declare dso_local i32 @nv_wr32(%struct.nv20_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv20_graph_priv*, i8*, ...) #1

declare dso_local i32 @nouveau_bitfield_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
