; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv10_graph_priv = type { i32, %struct.nv10_graph_chan** }
%struct.nv10_graph_chan = type { i32 }
%struct.nouveau_namedb = type { i32 }
%struct.nouveau_handle = type { i32 }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSTATUS = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_DATA = common dso_local global i32 0, align 4
@NV_NAMEDB_CLASS = common dso_local global i32 0, align 4
@NV_PGRAPH_INTR_ERROR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD = common dso_local global i32 0, align 4
@NV_PGRAPH_INTR_CONTEXT_SWITCH = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv10_graph_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_graph_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv10_graph_priv*, align 8
  %4 = alloca %struct.nv10_graph_chan*, align 8
  %5 = alloca %struct.nouveau_namedb*, align 8
  %6 = alloca %struct.nouveau_handle*, align 8
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
  %17 = alloca i64, align 8
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %18 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %19 = bitcast %struct.nouveau_subdev* %18 to i8*
  %20 = bitcast i8* %19 to %struct.nv10_graph_priv*
  store %struct.nv10_graph_priv* %20, %struct.nv10_graph_priv** %3, align 8
  store %struct.nv10_graph_chan* null, %struct.nv10_graph_chan** %4, align 8
  store %struct.nouveau_namedb* null, %struct.nouveau_namedb** %5, align 8
  store %struct.nouveau_handle* null, %struct.nouveau_handle** %6, align 8
  %21 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %22 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %23 = call i32 @nv_rd32(%struct.nv10_graph_priv* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %25 = load i32, i32* @NV03_PGRAPH_NSOURCE, align 4
  %26 = call i32 @nv_rd32(%struct.nv10_graph_priv* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %28 = load i32, i32* @NV03_PGRAPH_NSTATUS, align 4
  %29 = call i32 @nv_rd32(%struct.nv10_graph_priv* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %31 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %32 = call i32 @nv_rd32(%struct.nv10_graph_priv* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 32505856
  %35 = ashr i32 %34, 20
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 458752
  %38 = ashr i32 %37, 16
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 8188
  store i32 %40, i32* %13, align 4
  %41 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %42 = load i32, i32* @NV04_PGRAPH_TRAPPED_DATA, align 4
  %43 = call i32 @nv_rd32(%struct.nv10_graph_priv* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %45 = load i32, i32* %12, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 4194656, %46
  %48 = call i32 @nv_rd32(%struct.nv10_graph_priv* %44, i32 %47)
  %49 = and i32 %48, 4095
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %52 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %56 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %55, i32 0, i32 1
  %57 = load %struct.nv10_graph_chan**, %struct.nv10_graph_chan*** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %57, i64 %59
  %61 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %60, align 8
  store %struct.nv10_graph_chan* %61, %struct.nv10_graph_chan** %4, align 8
  %62 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %4, align 8
  %63 = icmp ne %struct.nv10_graph_chan* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %1
  %65 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %4, align 8
  %66 = call i32 @nv_object(%struct.nv10_graph_chan* %65)
  %67 = load i32, i32* @NV_NAMEDB_CLASS, align 4
  %68 = call i64 @nv_pclass(i32 %66, i32 %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = bitcast i8* %69 to %struct.nouveau_namedb*
  store %struct.nouveau_namedb* %70, %struct.nouveau_namedb** %5, align 8
  br label %71

71:                                               ; preds = %64, %1
  %72 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %73 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %17, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @NV_PGRAPH_INTR_ERROR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %71
  %81 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %4, align 8
  %82 = icmp ne %struct.nv10_graph_chan* %81, null
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %5, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call %struct.nouveau_handle* @nouveau_namedb_get_class(%struct.nouveau_namedb* %89, i32 %90)
  store %struct.nouveau_handle* %91, %struct.nouveau_handle** %6, align 8
  %92 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %93 = icmp ne %struct.nouveau_handle* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %96 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @nv_call(i32 %97, i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* @NV_PGRAPH_INTR_ERROR, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %16, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %102, %94, %88
  br label %108

108:                                              ; preds = %107, %83, %80
  br label %109

109:                                              ; preds = %108, %71
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %116 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %117 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %118 = call i32 @nv_wr32(%struct.nv10_graph_priv* %115, i32 %116, i32 %117)
  %119 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %7, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %16, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %16, align 4
  %127 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %128 = call i32 @nv10_graph_context_switch(%struct.nv10_graph_priv* %127)
  br label %129

129:                                              ; preds = %114, %109
  %130 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %131 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @nv_wr32(%struct.nv10_graph_priv* %130, i32 %131, i32 %132)
  %134 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %135 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %136 = call i32 @nv_wr32(%struct.nv10_graph_priv* %134, i32 %135, i32 1)
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %129
  %140 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %141 = call i32 (%struct.nv10_graph_priv*, i8*, ...) @nv_error(%struct.nv10_graph_priv* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i32, i32* @nv10_graph_intr_name, align 4
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @nouveau_bitfield_print(i32 %142, i32 %143)
  %145 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* @nv04_graph_nsource, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @nouveau_bitfield_print(i32 %146, i32 %147)
  %149 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %150 = load i32, i32* @nv10_graph_nstatus, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @nouveau_bitfield_print(i32 %150, i32 %151)
  %153 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %154 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %4, align 8
  %157 = call i32 @nouveau_client_name(%struct.nv10_graph_chan* %156)
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 (%struct.nv10_graph_priv*, i8*, ...) @nv_error(%struct.nv10_graph_priv* %154, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %155, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %139, %129
  %164 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %165 = call i32 @nouveau_namedb_put(%struct.nouveau_handle* %164)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv10_graph_priv*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @nv_pclass(i32, i32) #1

declare dso_local i32 @nv_object(%struct.nv10_graph_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.nouveau_handle* @nouveau_namedb_get_class(%struct.nouveau_namedb*, i32) #1

declare dso_local i32 @nv_call(i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv10_graph_priv*, i32, i32) #1

declare dso_local i32 @nv10_graph_context_switch(%struct.nv10_graph_priv*) #1

declare dso_local i32 @nv_error(%struct.nv10_graph_priv*, i8*, ...) #1

declare dso_local i32 @nouveau_bitfield_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @nouveau_client_name(%struct.nv10_graph_chan*) #1

declare dso_local i32 @nouveau_namedb_put(%struct.nouveau_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
