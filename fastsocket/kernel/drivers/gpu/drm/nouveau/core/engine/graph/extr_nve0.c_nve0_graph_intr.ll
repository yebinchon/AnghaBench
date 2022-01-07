; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_fifo = type { i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)* }
%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nouveau_handle = type { i32 }
%struct.nvc0_graph_priv = type { i32 }

@.str = private unnamed_addr constant [80 x i8] c"ILLEGAL_MTHD ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"ILLEGAL_CLASS ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"DATA_ERROR [\00", align 1
@nv50_data_error_names = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"] ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"unknown stat 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nve0_graph_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_graph_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_fifo*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca %struct.nouveau_handle*, align 8
  %7 = alloca %struct.nvc0_graph_priv*, align 8
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
  %18 = call %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev* %17)
  store %struct.nouveau_fifo* %18, %struct.nouveau_fifo** %3, align 8
  %19 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %20 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev* %19)
  store %struct.nouveau_engine* %20, %struct.nouveau_engine** %4, align 8
  %21 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %22 = bitcast %struct.nouveau_subdev* %21 to i8*
  %23 = bitcast i8* %22 to %struct.nvc0_graph_priv*
  store %struct.nvc0_graph_priv* %23, %struct.nvc0_graph_priv** %7, align 8
  %24 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %25 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %24, i32 4233984)
  %26 = and i32 %25, 268435455
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %28 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %27, i32 4194560)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %30 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %29, i32 4196100)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 16380
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 458752
  %35 = ashr i32 %34, 16
  store i32 %35, i32* %12, align 4
  %36 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %37 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %36, i32 4196104)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %39 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %38, i32 4194576)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 4211200, %42
  %44 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %40, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine* %45, i32 %46)
  store %struct.nouveau_object* %47, %struct.nouveau_object** %5, align 8
  %48 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %49 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %48, i32 0, i32 0
  %50 = load i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)*, i32 (%struct.nouveau_fifo*, %struct.nouveau_object*)** %49, align 8
  %51 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %52 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %53 = call i32 %50(%struct.nouveau_fifo* %51, %struct.nouveau_object* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 16
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %1
  %58 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object* %58, i32 %59)
  store %struct.nouveau_handle* %60, %struct.nouveau_handle** %6, align 8
  %61 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %62 = icmp ne %struct.nouveau_handle* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %65 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @nv_call(i32 %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %63, %57
  %72 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %76 = call i32 @nouveau_client_name(%struct.nouveau_object* %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %72, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %71, %63
  %83 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %84 = call i32 @nouveau_handle_put(%struct.nouveau_handle* %83)
  %85 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %86 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %85, i32 4194560, i32 16)
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, -17
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %82, %1
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %98 = call i32 @nouveau_client_name(%struct.nouveau_object* %97)
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %94, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %105 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %104, i32 4194560, i32 32)
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, -33
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %93, %89
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, 1048576
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %114 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @nv50_data_error_names, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @nouveau_enum_print(i32 %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %121 = call i32 @nouveau_client_name(%struct.nouveau_object* %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @pr_cont(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %119, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %128 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %127, i32 4194560, i32 1048576)
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, -1048577
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %112, %108
  %132 = load i32, i32* %9, align 4
  %133 = and i32 %132, 2097152
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %140 = call i32 @nve0_graph_trap_isr(%struct.nvc0_graph_priv* %136, i32 %137, i32 %138, %struct.nouveau_object* %139)
  %141 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %142 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %141, i32 4194560, i32 2097152)
  %143 = load i32, i32* %9, align 4
  %144 = and i32 %143, -2097153
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %135, %131
  %146 = load i32, i32* %9, align 4
  %147 = and i32 %146, 524288
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %151 = call i32 @nve0_graph_ctxctl_isr(%struct.nvc0_graph_priv* %150)
  %152 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %153 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %152, i32 4194560, i32 524288)
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, -524289
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %149, %145
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  %163 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %163, i32 4194560, i32 %164)
  br label %166

166:                                              ; preds = %159, %156
  %167 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %168 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %167, i32 4195584, i32 65537)
  %169 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %170 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %169)
  ret void
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_subdev*) #1

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nvc0_graph_priv*, i32) #1

declare dso_local %struct.nouveau_object* @nouveau_engctx_get(%struct.nouveau_engine*, i32) #1

declare dso_local %struct.nouveau_handle* @nouveau_handle_get_class(%struct.nouveau_object*, i32) #1

declare dso_local i64 @nv_call(i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_graph_priv*, i8*, ...) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_handle_put(%struct.nouveau_handle*) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @nouveau_enum_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nve0_graph_trap_isr(%struct.nvc0_graph_priv*, i32, i32, %struct.nouveau_object*) #1

declare dso_local i32 @nve0_graph_ctxctl_isr(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
