; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_load_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_load_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_graph_chan = type { %struct.pipe_state }
%struct.pipe_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nv10_graph_priv = type { i32 }

@NV10_PGRAPH_XFMODE0 = common dso_local global i32 0, align 4
@NV10_PGRAPH_XFMODE1 = common dso_local global i32 0, align 4
@NV10_PGRAPH_PIPE_ADDRESS = common dso_local global i32 0, align 4
@NV10_PGRAPH_PIPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv10_graph_chan*)* @nv10_graph_load_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_graph_load_pipe(%struct.nv10_graph_chan* %0) #0 {
  %2 = alloca %struct.nv10_graph_chan*, align 8
  %3 = alloca %struct.nv10_graph_priv*, align 8
  %4 = alloca %struct.pipe_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nv10_graph_chan* %0, %struct.nv10_graph_chan** %2, align 8
  %8 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %2, align 8
  %9 = call %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan* %8)
  store %struct.nv10_graph_priv* %9, %struct.nv10_graph_priv** %3, align 8
  %10 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %2, align 8
  %11 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %10, i32 0, i32 0
  store %struct.pipe_state* %11, %struct.pipe_state** %4, align 8
  %12 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %13 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %12)
  %14 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %15 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %16 = call i32 @nv_rd32(%struct.nv10_graph_priv* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %18 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %19 = call i32 @nv_rd32(%struct.nv10_graph_priv* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %21 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %22 = call i32 @nv_wr32(%struct.nv10_graph_priv* %20, i32 %21, i32 268435456)
  %23 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %24 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %25 = call i32 @nv_wr32(%struct.nv10_graph_priv* %23, i32 %24, i32 0)
  %26 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %27 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %28 = call i32 @nv_wr32(%struct.nv10_graph_priv* %26, i32 %27, i32 25792)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %36, %1
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %34 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %35 = call i32 @nv_wr32(%struct.nv10_graph_priv* %33, i32 %34, i32 1065353216)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %29

39:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %47, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %45 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %46 = call i32 @nv_wr32(%struct.nv10_graph_priv* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %40

50:                                               ; preds = %40
  %51 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %52 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %53 = call i32 @nv_wr32(%struct.nv10_graph_priv* %51, i32 %52, i32 27312)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %61, %50
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %59 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %60 = call i32 @nv_wr32(%struct.nv10_graph_priv* %58, i32 %59, i32 1065353216)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %54

64:                                               ; preds = %54
  %65 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %66 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %67 = call i32 @nv_wr32(%struct.nv10_graph_priv* %65, i32 %66, i32 27264)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %75, %64
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 3
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %73 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %74 = call i32 @nv_wr32(%struct.nv10_graph_priv* %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %68

78:                                               ; preds = %68
  %79 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %80 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %81 = call i32 @nv_wr32(%struct.nv10_graph_priv* %79, i32 %80, i32 64)
  %82 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %83 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %84 = call i32 @nv_wr32(%struct.nv10_graph_priv* %82, i32 %83, i32 8)
  %85 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %86 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %87 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %85, i32 %88, i32 512)
  %90 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %91 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %90)
  %92 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %93 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @nv_wr32(%struct.nv10_graph_priv* %92, i32 %93, i32 %94)
  %96 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %97 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @nv_wr32(%struct.nv10_graph_priv* %96, i32 %97, i32 %98)
  %100 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %101 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %102 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %100, i32 %103, i32 25600)
  %105 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %106 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %107 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %105, i32 %108, i32 26624)
  %110 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %111 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %112 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %110, i32 %113, i32 27648)
  %115 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %116 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %117 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %115, i32 %118, i32 28672)
  %120 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %121 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %122 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %120, i32 %123, i32 29696)
  %125 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %126 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %127 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %125, i32 %128, i32 30720)
  %130 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %131 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %132 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %130, i32 %133, i32 17408)
  %135 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %136 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %137 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %135, i32 %138, i32 0)
  %140 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %141 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %142 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @PIPE_RESTORE(%struct.nv10_graph_priv* %140, i32 %143, i32 64)
  %145 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %146 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %145)
  ret void
}

declare dso_local %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan*) #1

declare dso_local i32 @nv04_graph_idle(%struct.nv10_graph_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv10_graph_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv10_graph_priv*, i32, i32) #1

declare dso_local i32 @PIPE_RESTORE(%struct.nv10_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
