; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_graph_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_graph_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_fifo = type { i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)* }
%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nouveau_handle = type { i32 }
%struct.nv50_graph_priv = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"DATA_ERROR \00", align 1
@nv50_data_error_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nv50_graph_intr_name = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv50_graph_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_fifo*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_handle*, align 8
  %7 = alloca %struct.nv50_graph_priv*, align 8
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
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %18 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %19 = call %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev* %18)
  store %struct.nouveau_fifo* %19, %struct.nouveau_fifo** %3, align 8
  %20 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %21 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev* %20)
  store %struct.nouveau_engine* %21, %struct.nouveau_engine** %4, align 8
  store %struct.nouveau_handle* null, %struct.nouveau_handle** %6, align 8
  %22 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %23 = bitcast %struct.nouveau_subdev* %22 to i8*
  %24 = bitcast i8* %23 to %struct.nv50_graph_priv*
  store %struct.nv50_graph_priv* %24, %struct.nv50_graph_priv** %7, align 8
  %25 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %26 = call i32 @nv_rd32(%struct.nv50_graph_priv* %25, i32 4194560)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %28 = call i32 @nv_rd32(%struct.nv50_graph_priv* %27, i32 4195116)
  %29 = and i32 %28, 268435455
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %31 = call i32 @nv_rd32(%struct.nv50_graph_priv* %30, i32 4196100)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 458752
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 8188
  store i32 %36, i32* %12, align 4
  %37 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %38 = call i32 @nv_rd32(%struct.nv50_graph_priv* %37, i32 4196104)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %40 = call i32 @nv_rd32(%struct.nv50_graph_priv* %39, i32 4196372)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %15, align 4
  %42 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %42, i32 %43)
  store %struct.nouveau_object* %44, %struct.nouveau_object** %5, align 8
  %45 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %46 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %45, i32 0, i32 0
  %47 = load i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)*, i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)** %46, align 8
  %48 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %49 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %50 = call i32 %47(%struct.nouveau_fifo* %48, %struct.nouveau_object* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %1
  %55 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object* %55, i32 %56)
  store %struct.nouveau_handle* %57, %struct.nouveau_handle** %6, align 8
  %58 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %59 = icmp ne %struct.nouveau_handle* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %62 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @nv_call(i32 %63, i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %15, align 4
  %70 = and i32 %69, -17
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %68, %60, %54
  %72 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %73 = call i32 @nouveau_handle_put(%struct.nouveau_handle* %72)
  br label %74

74:                                               ; preds = %71, %1
  %75 = load i32, i32* %15, align 4
  %76 = and i32 %75, 1048576
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %80 = call i32 @nv_rd32(%struct.nv50_graph_priv* %79, i32 4194576)
  store i32 %80, i32* %17, align 4
  %81 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %82 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @nv50_data_error_names, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @nouveau_enum_print(i32 %83, i32 %84)
  %86 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %78, %74
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 2097152
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %9, align 4
  %96 = shl i32 %95, 12
  %97 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %98 = call i32 @nv50_graph_trap_handler(%struct.nv50_graph_priv* %92, i32 %93, i32 %94, i32 %96, %struct.nouveau_object* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %15, align 4
  %102 = and i32 %101, -2097153
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %100, %91
  br label %104

104:                                              ; preds = %103, %87
  %105 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @nv_wr32(%struct.nv50_graph_priv* %105, i32 4194560, i32 %106)
  %108 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %109 = call i32 @nv_wr32(%struct.nv50_graph_priv* %108, i32 4195584, i32 65537)
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %104
  %113 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %114 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* @nv50_graph_intr_name, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @nouveau_bitfield_print(i32 %115, i32 %116)
  %118 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %9, align 4
  %122 = shl i32 %121, 12
  %123 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %124 = call i32 @nouveau_client_name(%struct.nouveau_object* %123)
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %119, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %122, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %112, %104
  %131 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %132 = call i32 @nv_rd32(%struct.nv50_graph_priv* %131, i32 4196388)
  %133 = and i32 %132, -2147483648
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %137 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %138 = call i32 @nv_rd32(%struct.nv50_graph_priv* %137, i32 4196388)
  %139 = and i32 %138, 2147483647
  %140 = call i32 @nv_wr32(%struct.nv50_graph_priv* %136, i32 4196388, i32 %139)
  br label %141

141:                                              ; preds = %135, %130
  %142 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %143 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %142)
  ret void
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev*) #1

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_graph_priv*, i32) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv_call(i32, i32, i32) #1

declare dso_local i32 @nouveau_handle_put(%struct.nouveau_handle*) #1

declare dso_local i32 @nv_error(%struct.nv50_graph_priv*, i8*, ...) #1

declare dso_local i32 @nouveau_enum_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @nv50_graph_trap_handler(%struct.nv50_graph_priv*, i32, i32, i32, %struct.nouveau_object*) #1

declare dso_local i32 @nv_wr32(%struct.nv50_graph_priv*, i32, i32) #1

declare dso_local i32 @nouveau_bitfield_print(i32, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
