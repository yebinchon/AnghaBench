; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_trap_gpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_trap_gpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"GPC%d/PROP: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"GPC%d/ZCULL: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GPC%d/CCACHE: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"GPC%d/ESETUP: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GPC%d/0x%08x: unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*, i32)* @nvc0_graph_trap_gpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_graph_trap_gpc(%struct.nvc0_graph_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.nvc0_graph_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @GPC_UNIT(i32 %13, i32 11408)
  %15 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %12, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @GPC_UNIT(i32 %21, i32 1056)
  %23 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %20, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @nv_error(%struct.nvc0_graph_priv* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @GPC_UNIT(i32 %29, i32 1056)
  %31 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %28, i32 %30, i32 -1073741824)
  %32 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @GPC_UNIT(i32 %33, i32 11408)
  %35 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %32, i32 %34, i32 1)
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, -2
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %19, %2
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @GPC_UNIT(i32 %44, i32 2304)
  %46 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %43, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @nv_error(%struct.nvc0_graph_priv* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @GPC_UNIT(i32 %52, i32 2304)
  %54 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %51, i32 %53, i32 -1073741824)
  %55 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @GPC_UNIT(i32 %56, i32 11408)
  %58 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %55, i32 %57, i32 2)
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, -3
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %42, %38
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @GPC_UNIT(i32 %67, i32 4136)
  %69 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %66, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @nv_error(%struct.nvc0_graph_priv* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @GPC_UNIT(i32 %75, i32 4136)
  %77 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %74, i32 %76, i32 -1073741824)
  %78 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @GPC_UNIT(i32 %79, i32 11408)
  %81 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %78, i32 %80, i32 4)
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, -5
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %65, %61
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @GPC_UNIT(i32 %90, i32 2084)
  %92 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %89, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @nv_error(%struct.nvc0_graph_priv* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @GPC_UNIT(i32 %98, i32 2084)
  %100 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %97, i32 %99, i32 -1073741824)
  %101 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @GPC_UNIT(i32 %102, i32 11408)
  %104 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %101, i32 %103, i32 8)
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, -10
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %88, %84
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %140, %107
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %111 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %109, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %108
  %119 = load i32, i32* %6, align 4
  %120 = shl i32 65536, %119
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %118
  %126 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @nvc0_graph_trap_tpc(%struct.nvc0_graph_priv* %126, i32 %127, i32 %128)
  %130 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @GPC_UNIT(i32 %131, i32 11408)
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %130, i32 %132, i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %125, %118
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %108

143:                                              ; preds = %108
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @nv_error(%struct.nvc0_graph_priv* %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %148, i32 %149)
  %151 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %3, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @GPC_UNIT(i32 %152, i32 11408)
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %151, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %146, %143
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nvc0_graph_priv*, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_graph_priv*, i8*, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @nvc0_graph_trap_tpc(%struct.nvc0_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
