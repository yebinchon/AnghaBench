; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_fifo = type { i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)* }
%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nouveau_handle = type { i32 }
%struct.nv40_graph_priv = type { i32 }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSTATUS = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_DATA = common dso_local global i32 0, align 4
@NV_PGRAPH_INTR_ERROR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE_DMA_VTX_PROTECTION = common dso_local global i32 0, align 4
@NV04_PGRAPH_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nv10_graph_intr_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" nsource:\00", align 1
@nv04_graph_nsource = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" nstatus:\00", align 1
@nv10_graph_nstatus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"ch %d [0x%08x %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv40_graph_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_graph_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_fifo*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_handle*, align 8
  %7 = alloca %struct.nv40_graph_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %19 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %20 = call %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev* %19)
  store %struct.nouveau_fifo* %20, %struct.nouveau_fifo** %3, align 8
  %21 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %22 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev* %21)
  store %struct.nouveau_engine* %22, %struct.nouveau_engine** %4, align 8
  store %struct.nouveau_handle* null, %struct.nouveau_handle** %6, align 8
  %23 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %24 = bitcast %struct.nouveau_subdev* %23 to i8*
  %25 = bitcast i8* %24 to %struct.nv40_graph_priv*
  store %struct.nv40_graph_priv* %25, %struct.nv40_graph_priv** %7, align 8
  %26 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %27 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %28 = call i32 @nv_rd32(%struct.nv40_graph_priv* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %30 = load i32, i32* @NV03_PGRAPH_NSOURCE, align 4
  %31 = call i32 @nv_rd32(%struct.nv40_graph_priv* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %33 = load i32, i32* @NV03_PGRAPH_NSTATUS, align 4
  %34 = call i32 @nv_rd32(%struct.nv40_graph_priv* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %36 = call i32 @nv_rd32(%struct.nv40_graph_priv* %35, i32 4195116)
  %37 = and i32 %36, 1048575
  store i32 %37, i32* %11, align 4
  %38 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %39 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %40 = call i32 @nv_rd32(%struct.nv40_graph_priv* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %41, 458752
  %43 = ashr i32 %42, 16
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = and i32 %44, 8188
  store i32 %45, i32* %14, align 4
  %46 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %47 = load i32, i32* @NV04_PGRAPH_TRAPPED_DATA, align 4
  %48 = call i32 @nv_rd32(%struct.nv40_graph_priv* %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 4194656, %51
  %53 = call i32 @nv_rd32(%struct.nv40_graph_priv* %49, i32 %52)
  %54 = and i32 %53, 65535
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %17, align 4
  %56 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %56, i32 %57)
  store %struct.nouveau_object* %58, %struct.nouveau_object** %5, align 8
  %59 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %60 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %59, i32 0, i32 0
  %61 = load i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)*, i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)** %60, align 8
  %62 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %63 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %64 = call i32 %61(%struct.nouveau_fifo* %62, %struct.nouveau_object* %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @NV_PGRAPH_INTR_ERROR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %1
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %69
  %75 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object* %75, i32 %76)
  store %struct.nouveau_handle* %77, %struct.nouveau_handle** %6, align 8
  %78 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %79 = icmp ne %struct.nouveau_handle* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %82 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @nv_call(i32 %83, i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* @NV_PGRAPH_INTR_ERROR, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %17, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %88, %80, %74
  %94 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %95 = call i32 @nouveau_handle_put(%struct.nouveau_handle* %94)
  br label %96

96:                                               ; preds = %93, %69
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @NV03_PGRAPH_NSOURCE_DMA_VTX_PROTECTION, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %103 = call i32 @nv_mask(%struct.nv40_graph_priv* %102, i32 4202496, i32 0, i32 0)
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104, %1
  %106 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %107 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @nv_wr32(%struct.nv40_graph_priv* %106, i32 %107, i32 %108)
  %110 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %111 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %112 = call i32 @nv_wr32(%struct.nv40_graph_priv* %110, i32 %111, i32 1)
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %105
  %116 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %117 = call i32 (%struct.nv40_graph_priv*, i8*, ...) @nv_error(%struct.nv40_graph_priv* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @nv10_graph_intr_name, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @nouveau_bitfield_print(i32 %118, i32 %119)
  %121 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @nv04_graph_nsource, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @nouveau_bitfield_print(i32 %122, i32 %123)
  %125 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* @nv10_graph_nstatus, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @nouveau_bitfield_print(i32 %126, i32 %127)
  %129 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %130 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %7, align 8
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %11, align 4
  %133 = shl i32 %132, 4
  %134 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %135 = call i32 @nouveau_client_name(%struct.nouveau_object* %134)
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 (%struct.nv40_graph_priv*, i8*, ...) @nv_error(%struct.nv40_graph_priv* %130, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %131, i32 %133, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %115, %105
  %142 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %143 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %142)
  ret void
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev*) #1

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nv40_graph_priv*, i32) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv_call(i32, i32, i32) #1

declare dso_local i32 @nouveau_handle_put(%struct.nouveau_handle*) #1

declare dso_local i32 @nv_mask(%struct.nv40_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv40_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv40_graph_priv*, i8*, ...) #1

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
