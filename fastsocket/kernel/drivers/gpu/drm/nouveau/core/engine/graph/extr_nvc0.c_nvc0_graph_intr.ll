; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_intr.c"
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
@.str.4 = private unnamed_addr constant [27 x i8] c"TRAP ch %d [0x%010llx %s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"unknown stat 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nvc0_graph_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_graph_intr(%struct.nouveau_subdev* %0) #0 {
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
  br i1 %56, label %57, label %90

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
  br i1 %70, label %71, label %83

71:                                               ; preds = %63, %57
  %72 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 %74, 12
  %76 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %77 = call i32 @nouveau_client_name(%struct.nouveau_object* %76)
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %72, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %63
  %84 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %85 = call i32 @nouveau_handle_put(%struct.nouveau_handle* %84)
  %86 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %87 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %86, i32 4194560, i32 16)
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, -17
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %83, %1
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %8, align 4
  %98 = shl i32 %97, 12
  %99 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %100 = call i32 @nouveau_client_name(%struct.nouveau_object* %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %95, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %98, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %107 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %106, i32 4194560, i32 32)
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, -33
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %94, %90
  %111 = load i32, i32* %9, align 4
  %112 = and i32 %111, 1048576
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %116 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @nv50_data_error_names, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @nouveau_enum_print(i32 %117, i32 %118)
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %8, align 4
  %122 = shl i32 %121, 12
  %123 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %124 = call i32 @nouveau_client_name(%struct.nouveau_object* %123)
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @pr_cont(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %122, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %131 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %130, i32 4194560, i32 1048576)
  %132 = load i32, i32* %9, align 4
  %133 = and i32 %132, -1048577
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %114, %110
  %135 = load i32, i32* %9, align 4
  %136 = and i32 %135, 2097152
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %8, align 4
  %142 = shl i32 %141, 12
  %143 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %144 = call i32 @nouveau_client_name(%struct.nouveau_object* %143)
  %145 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %140, i32 %142, i32 %144)
  %146 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %147 = call i32 @nvc0_graph_trap_intr(%struct.nvc0_graph_priv* %146)
  %148 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %149 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %148, i32 4194560, i32 2097152)
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, -2097153
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %138, %134
  %153 = load i32, i32* %9, align 4
  %154 = and i32 %153, 524288
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %158 = call i32 @nvc0_graph_ctxctl_isr(%struct.nvc0_graph_priv* %157)
  %159 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %160 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %159, i32 4194560, i32 524288)
  %161 = load i32, i32* %9, align 4
  %162 = and i32 %161, -524289
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %156, %152
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %168)
  %170 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %170, i32 4194560, i32 %171)
  br label %173

173:                                              ; preds = %166, %163
  %174 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %7, align 8
  %175 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %174, i32 4195584, i32 65537)
  %176 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %177 = call i32 @nouveau_engctx_put(%struct.nouveau_object* %176)
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

declare dso_local i32 @nvc0_graph_trap_intr(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nvc0_graph_ctxctl_isr(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nouveau_engctx_put(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
