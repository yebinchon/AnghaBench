; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv17_graph_mthd_lma_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv17_graph_mthd_lma_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv10_graph_chan = type { i32*, %struct.pipe_state }
%struct.pipe_state = type { i32*, i32* }
%struct.nv10_graph_priv = type { i32 }

@NV10_PGRAPH_XFMODE0 = common dso_local global i32 0, align 4
@NV10_PGRAPH_XFMODE1 = common dso_local global i32 0, align 4
@NV10_PGRAPH_PIPE_ADDRESS = common dso_local global i32 0, align 4
@NV10_PGRAPH_PIPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i8*, i32)* @nv17_graph_mthd_lma_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_graph_mthd_lma_window(%struct.nouveau_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv10_graph_chan*, align 8
  %11 = alloca %struct.nv10_graph_priv*, align 8
  %12 = alloca %struct.pipe_state*, align 8
  %13 = alloca [1 x i32], align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca [3 x i32], align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.nv10_graph_chan*
  store %struct.nv10_graph_chan* %25, %struct.nv10_graph_chan** %10, align 8
  %26 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %10, align 8
  %27 = call %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan* %26)
  store %struct.nv10_graph_priv* %27, %struct.nv10_graph_priv** %11, align 8
  %28 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %10, align 8
  %29 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %28, i32 0, i32 1
  store %struct.pipe_state* %29, %struct.pipe_state** %12, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %10, align 8
  %35 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 5688
  %39 = sdiv i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32 %33, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 5700
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %190

45:                                               ; preds = %4
  %46 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %47 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %46)
  %48 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %49 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %50 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %48, i32* %49, i32 64)
  %51 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %52 = load %struct.pipe_state*, %struct.pipe_state** %12, align 8
  %53 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %51, i32* %54, i32 512)
  %56 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %57 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %10, align 8
  %58 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %56, i32* %59, i32 26512)
  %61 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %62 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %61)
  %63 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %64 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %65 = call i32 @nv_rd32(%struct.nv10_graph_priv* %63, i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %67 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %68 = call i32 @nv_rd32(%struct.nv10_graph_priv* %66, i32 %67)
  store i32 %68, i32* %18, align 4
  %69 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %70 = load %struct.pipe_state*, %struct.pipe_state** %12, align 8
  %71 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %69, i32* %72, i32 17408)
  %74 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %76 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %74, i32* %75, i32 25792)
  %77 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %79 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %77, i32* %78, i32 27312)
  %80 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %82 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %80, i32* %81, i32 27264)
  %83 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %84 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %83)
  %85 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %86 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %87 = call i32 @nv_wr32(%struct.nv10_graph_priv* %85, i32 %86, i32 268435456)
  %88 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %89 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %90 = call i32 @nv_wr32(%struct.nv10_graph_priv* %88, i32 %89, i32 0)
  %91 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %92 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %93 = call i32 @nv_wr32(%struct.nv10_graph_priv* %91, i32 %92, i32 25792)
  store i32 0, i32* %20, align 4
  br label %94

94:                                               ; preds = %101, %45
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %99 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %100 = call i32 @nv_wr32(%struct.nv10_graph_priv* %98, i32 %99, i32 1065353216)
  br label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %20, align 4
  br label %94

104:                                              ; preds = %94
  store i32 0, i32* %20, align 4
  br label %105

105:                                              ; preds = %112, %104
  %106 = load i32, i32* %20, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %110 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %111 = call i32 @nv_wr32(%struct.nv10_graph_priv* %109, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %20, align 4
  br label %105

115:                                              ; preds = %105
  %116 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %117 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %118 = call i32 @nv_wr32(%struct.nv10_graph_priv* %116, i32 %117, i32 27312)
  store i32 0, i32* %20, align 4
  br label %119

119:                                              ; preds = %126, %115
  %120 = load i32, i32* %20, align 4
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %124 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %125 = call i32 @nv_wr32(%struct.nv10_graph_priv* %123, i32 %124, i32 1065353216)
  br label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %20, align 4
  br label %119

129:                                              ; preds = %119
  %130 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %131 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %132 = call i32 @nv_wr32(%struct.nv10_graph_priv* %130, i32 %131, i32 27264)
  store i32 0, i32* %20, align 4
  br label %133

133:                                              ; preds = %140, %129
  %134 = load i32, i32* %20, align 4
  %135 = icmp slt i32 %134, 3
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %138 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %139 = call i32 @nv_wr32(%struct.nv10_graph_priv* %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %20, align 4
  br label %133

143:                                              ; preds = %133
  %144 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %145 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %146 = call i32 @nv_wr32(%struct.nv10_graph_priv* %144, i32 %145, i32 64)
  %147 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %148 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %149 = call i32 @nv_wr32(%struct.nv10_graph_priv* %147, i32 %148, i32 8)
  %150 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %151 = load %struct.pipe_state*, %struct.pipe_state** %12, align 8
  %152 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %150, i32* %153, i32 512)
  %155 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %156 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %155)
  %157 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %158 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %159 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %157, i32* %158, i32 64)
  %160 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %161 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @nv_wr32(%struct.nv10_graph_priv* %160, i32 %161, i32 %162)
  %164 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %165 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @nv_wr32(%struct.nv10_graph_priv* %164, i32 %165, i32 %166)
  %168 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %170 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %168, i32* %169, i32 25792)
  %171 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %173 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %171, i32* %172, i32 27312)
  %174 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %176 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %174, i32* %175, i32 27264)
  %177 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %178 = load %struct.pipe_state*, %struct.pipe_state** %12, align 8
  %179 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %177, i32* %180, i32 17408)
  %182 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %183 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %184 = call i32 @nv_wr32(%struct.nv10_graph_priv* %182, i32 %183, i32 192)
  %185 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %186 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %187 = call i32 @nv_wr32(%struct.nv10_graph_priv* %185, i32 %186, i32 0)
  %188 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %11, align 8
  %189 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %188)
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %143, %44
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan*) #1

declare dso_local i32 @nv04_graph_idle(%struct.nv10_graph_priv*) #1

declare dso_local i32 @PIPE_SAVE(%struct.nv10_graph_priv*, i32*, i32) #1

declare dso_local i32 @PIPE_RESTORE(%struct.nv10_graph_priv*, i32*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv10_graph_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv10_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
