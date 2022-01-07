; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv04_graph_priv = type { i32, %struct.nv04_graph_chan** }
%struct.nv04_graph_chan = type { i32 }
%struct.nouveau_namedb = type { i32 }
%struct.nouveau_handle = type { i32 }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSTATUS = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_DATA = common dso_local global i32 0, align 4
@NV_NAMEDB_CLASS = common dso_local global i32 0, align 4
@NV_PGRAPH_INTR_NOTIFY = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD = common dso_local global i32 0, align 4
@NV_PGRAPH_INTR_CONTEXT_SWITCH = common dso_local global i32 0, align 4
@NV04_PGRAPH_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nv04_graph_intr_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" nsource:\00", align 1
@nv04_graph_nsource = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" nstatus:\00", align 1
@nv04_graph_nstatus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"ch %d [%s] subc %d class 0x%04x mthd 0x%04x data 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv04_graph_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_graph_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv04_graph_priv*, align 8
  %4 = alloca %struct.nv04_graph_chan*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %19 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %20 = bitcast %struct.nouveau_subdev* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nv04_graph_priv*
  store %struct.nv04_graph_priv* %21, %struct.nv04_graph_priv** %3, align 8
  store %struct.nv04_graph_chan* null, %struct.nv04_graph_chan** %4, align 8
  store %struct.nouveau_namedb* null, %struct.nouveau_namedb** %5, align 8
  store %struct.nouveau_handle* null, %struct.nouveau_handle** %6, align 8
  %22 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %23 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %24 = call i32 @nv_rd32(%struct.nv04_graph_priv* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %26 = load i32, i32* @NV03_PGRAPH_NSOURCE, align 4
  %27 = call i32 @nv_rd32(%struct.nv04_graph_priv* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %29 = load i32, i32* @NV03_PGRAPH_NSTATUS, align 4
  %30 = call i32 @nv_rd32(%struct.nv04_graph_priv* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %32 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %33 = call i32 @nv_rd32(%struct.nv04_graph_priv* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 251658240
  %36 = ashr i32 %35, 24
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 57344
  %39 = ashr i32 %38, 13
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 8188
  store i32 %41, i32* %13, align 4
  %42 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %43 = load i32, i32* @NV04_PGRAPH_TRAPPED_DATA, align 4
  %44 = call i32 @nv_rd32(%struct.nv04_graph_priv* %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 4194688, %47
  %49 = call i32 @nv_rd32(%struct.nv04_graph_priv* %45, i32 %48)
  %50 = and i32 %49, 255
  store i32 %50, i32* %15, align 4
  %51 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %52 = call i32 @nv_rd32(%struct.nv04_graph_priv* %51, i32 4194668)
  %53 = and i32 %52, 65535
  %54 = shl i32 %53, 4
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %17, align 4
  %56 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %57 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %18, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %61 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %60, i32 0, i32 1
  %62 = load %struct.nv04_graph_chan**, %struct.nv04_graph_chan*** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %62, i64 %64
  %66 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %65, align 8
  store %struct.nv04_graph_chan* %66, %struct.nv04_graph_chan** %4, align 8
  %67 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %4, align 8
  %68 = icmp ne %struct.nv04_graph_chan* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %1
  %70 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %4, align 8
  %71 = call i32 @nv_object(%struct.nv04_graph_chan* %70)
  %72 = load i32, i32* @NV_NAMEDB_CLASS, align 4
  %73 = call i64 @nv_pclass(i32 %71, i32 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = bitcast i8* %74 to %struct.nouveau_namedb*
  store %struct.nouveau_namedb* %75, %struct.nouveau_namedb** %5, align 8
  br label %76

76:                                               ; preds = %69, %1
  %77 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %78 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %77, i32 0, i32 0
  %79 = load i64, i64* %18, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NV_PGRAPH_INTR_NOTIFY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %76
  %86 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %4, align 8
  %87 = icmp ne %struct.nv04_graph_chan* %86, null
  br i1 %87, label %88, label %113

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %5, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call %struct.nouveau_handle* @nouveau_namedb_get_vinst(%struct.nouveau_namedb* %94, i32 %95)
  store %struct.nouveau_handle* %96, %struct.nouveau_handle** %6, align 8
  %97 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %98 = icmp ne %struct.nouveau_handle* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %101 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @nv_call(i32 %102, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @NV_PGRAPH_INTR_NOTIFY, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %17, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %107, %99, %93
  br label %113

113:                                              ; preds = %112, %88, %85
  br label %114

114:                                              ; preds = %113, %76
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %121 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %122 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %123 = call i32 @nv_wr32(%struct.nv04_graph_priv* %120, i32 %121, i32 %122)
  %124 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %17, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %17, align 4
  %132 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %133 = call i32 @nv04_graph_context_switch(%struct.nv04_graph_priv* %132)
  br label %134

134:                                              ; preds = %119, %114
  %135 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %136 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @nv_wr32(%struct.nv04_graph_priv* %135, i32 %136, i32 %137)
  %139 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %140 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %141 = call i32 @nv_wr32(%struct.nv04_graph_priv* %139, i32 %140, i32 1)
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %134
  %145 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %146 = call i32 (%struct.nv04_graph_priv*, i8*, ...) @nv_error(%struct.nv04_graph_priv* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32, i32* @nv04_graph_intr_name, align 4
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @nouveau_bitfield_print(i32 %147, i32 %148)
  %150 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @nv04_graph_nsource, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @nouveau_bitfield_print(i32 %151, i32 %152)
  %154 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %155 = load i32, i32* @nv04_graph_nstatus, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @nouveau_bitfield_print(i32 %155, i32 %156)
  %158 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %159 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %4, align 8
  %162 = call i32 @nouveau_client_name(%struct.nv04_graph_chan* %161)
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 (%struct.nv04_graph_priv*, i8*, ...) @nv_error(%struct.nv04_graph_priv* %159, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %160, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %144, %134
  %169 = load %struct.nouveau_handle*, %struct.nouveau_handle** %6, align 8
  %170 = call i32 @nouveau_namedb_put(%struct.nouveau_handle* %169)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv04_graph_priv*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @nv_pclass(i32, i32) #1

declare dso_local i32 @nv_object(%struct.nv04_graph_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.nouveau_handle* @nouveau_namedb_get_vinst(%struct.nouveau_namedb*, i32) #1

declare dso_local i32 @nv_call(i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv04_graph_priv*, i32, i32) #1

declare dso_local i32 @nv04_graph_context_switch(%struct.nv04_graph_priv*) #1

declare dso_local i32 @nv_error(%struct.nv04_graph_priv*, i8*, ...) #1

declare dso_local i32 @nouveau_bitfield_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @nouveau_client_name(%struct.nv04_graph_chan*) #1

declare dso_local i32 @nouveau_namedb_put(%struct.nouveau_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
