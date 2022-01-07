; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_trap_tpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_trap_tpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"GPC%d/TPC%d/TEX: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"GPC%d/TPC%d/MP: 0x%08x 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GPC%d/TPC%d/POLY: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"GPC%d/TPC%d/L1C: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GPC%d/TPC%d/0x%08x: unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*, i32, i32)* @nvc0_graph_trap_tpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_graph_trap_tpc(%struct.nvc0_graph_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvc0_graph_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @TPC_UNIT(i32 %14, i32 %15, i32 1288)
  %17 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @TPC_UNIT(i32 %23, i32 %24, i32 548)
  %26 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, i32, i32, ...) @nv_error(%struct.nvc0_graph_priv* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @TPC_UNIT(i32 %33, i32 %34, i32 548)
  %36 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %32, i32 %35, i32 -1073741824)
  %37 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @TPC_UNIT(i32 %38, i32 %39, i32 1288)
  %41 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %37, i32 %40, i32 1)
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, -2
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %21, %3
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @TPC_UNIT(i32 %50, i32 %51, i32 1604)
  %53 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %49, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @TPC_UNIT(i32 %55, i32 %56, i32 1612)
  %58 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %54, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, i32, i32, ...) @nv_error(%struct.nvc0_graph_priv* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @TPC_UNIT(i32 %66, i32 %67, i32 1604)
  %69 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %65, i32 %68, i32 2097150)
  %70 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @TPC_UNIT(i32 %71, i32 %72, i32 1612)
  %74 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %70, i32 %73, i32 15)
  %75 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @TPC_UNIT(i32 %76, i32 %77, i32 1288)
  %79 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %75, i32 %78, i32 2)
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, -3
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %48, %44
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  %87 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @TPC_UNIT(i32 %88, i32 %89, i32 132)
  %91 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %87, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, i32, i32, ...) @nv_error(%struct.nvc0_graph_priv* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  %97 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @TPC_UNIT(i32 %98, i32 %99, i32 132)
  %101 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %97, i32 %100, i32 -1073741824)
  %102 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @TPC_UNIT(i32 %103, i32 %104, i32 1288)
  %106 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %102, i32 %105, i32 4)
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, -5
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %86, %82
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %109
  %114 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @TPC_UNIT(i32 %115, i32 %116, i32 1164)
  %118 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %114, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, i32, i32, ...) @nv_error(%struct.nvc0_graph_priv* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %121, i32 %122)
  %124 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @TPC_UNIT(i32 %125, i32 %126, i32 1164)
  %128 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %124, i32 %127, i32 -1073741824)
  %129 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @TPC_UNIT(i32 %130, i32 %131, i32 1288)
  %133 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %129, i32 %132, i32 8)
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, -9
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %113, %109
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %136
  %140 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, i32, i32, ...) @nv_error(%struct.nvc0_graph_priv* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %142, i32 %143)
  %145 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @TPC_UNIT(i32 %146, i32 %147, i32 1288)
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %145, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %139, %136
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nvc0_graph_priv*, i32) #1

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_graph_priv*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
