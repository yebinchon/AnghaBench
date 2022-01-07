; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_save_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_save_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_graph_chan = type { %struct.pipe_state }
%struct.pipe_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nv10_graph_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv10_graph_chan*)* @nv10_graph_save_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_graph_save_pipe(%struct.nv10_graph_chan* %0) #0 {
  %2 = alloca %struct.nv10_graph_chan*, align 8
  %3 = alloca %struct.nv10_graph_priv*, align 8
  %4 = alloca %struct.pipe_state*, align 8
  store %struct.nv10_graph_chan* %0, %struct.nv10_graph_chan** %2, align 8
  %5 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %2, align 8
  %6 = call %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan* %5)
  store %struct.nv10_graph_priv* %6, %struct.nv10_graph_priv** %3, align 8
  %7 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %2, align 8
  %8 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %7, i32 0, i32 0
  store %struct.pipe_state* %8, %struct.pipe_state** %4, align 8
  %9 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %10 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %11 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %9, i32 %12, i32 17408)
  %14 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %15 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %16 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %14, i32 %17, i32 512)
  %19 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %20 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %21 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %19, i32 %22, i32 25600)
  %24 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %25 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %26 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %24, i32 %27, i32 26624)
  %29 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %30 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %31 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %29, i32 %32, i32 27648)
  %34 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %35 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %36 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %34, i32 %37, i32 28672)
  %39 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %40 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %41 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %39, i32 %42, i32 29696)
  %44 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %45 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %46 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %44, i32 %47, i32 30720)
  %49 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %50 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %51 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %49, i32 %52, i32 64)
  %54 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %55 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %56 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PIPE_SAVE(%struct.nv10_graph_priv* %54, i32 %57, i32 0)
  ret void
}

declare dso_local %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan*) #1

declare dso_local i32 @PIPE_SAVE(%struct.nv10_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
