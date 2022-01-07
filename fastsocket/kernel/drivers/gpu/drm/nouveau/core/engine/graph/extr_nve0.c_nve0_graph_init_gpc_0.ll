; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_init_gpc_0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_init_gpc_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32, i32*, i32, i32 }

@TPC_MAX = common dso_local global i32 0, align 4
@GPC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nve0_graph_init_gpc_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_graph_init_gpc_0(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %10 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %11 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @DIV_ROUND_UP(i32 8388608, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @TPC_MAX, align 4
  %15 = sdiv i32 %14, 8
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load i32, i32* @GPC_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %22 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %23 = call i32 @GPC_UNIT(i32 0, i32 12312)
  %24 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %22, i32 %23, i32 1)
  %25 = mul nuw i64 4, %16
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i32* %18, i32 0, i32 %26)
  %28 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %29 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @memcpy(i32* %21, i32* %30, i32 8)
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %32

32:                                               ; preds = %78, %1
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %35 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %46, %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %43 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = srem i32 %41, %44
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %21, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %39, label %53

53:                                               ; preds = %46
  %54 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %55 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %21, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  %66 = sub nsw i32 %60, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = srem i32 %68, 8
  %70 = mul nsw i32 %69, 4
  %71 = shl i32 %67, %70
  %72 = load i32, i32* %7, align 4
  %73 = sdiv i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %18, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %53
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %32

81:                                               ; preds = %32
  %82 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %83 = call i32 @GPC_BCAST(i32 2432)
  %84 = getelementptr inbounds i32, i32* %18, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %82, i32 %83, i32 %85)
  %87 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %88 = call i32 @GPC_BCAST(i32 2436)
  %89 = getelementptr inbounds i32, i32* %18, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %87, i32 %88, i32 %90)
  %92 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %93 = call i32 @GPC_BCAST(i32 2440)
  %94 = getelementptr inbounds i32, i32* %18, i64 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %92, i32 %93, i32 %95)
  %97 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %98 = call i32 @GPC_BCAST(i32 2444)
  %99 = getelementptr inbounds i32, i32* %18, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %97, i32 %98, i32 %100)
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %138, %81
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %105 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %141

108:                                              ; preds = %102
  %109 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @GPC_UNIT(i32 %110, i32 2324)
  %112 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %113 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 8
  %116 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %117 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %115, %122
  %124 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %109, i32 %111, i32 %123)
  %125 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @GPC_UNIT(i32 %126, i32 2320)
  %128 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %129 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 262144, %130
  %132 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %125, i32 %127, i32 %131)
  %133 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @GPC_UNIT(i32 %134, i32 2328)
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %133, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %108
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %102

141:                                              ; preds = %102
  %142 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %143 = call i32 @GPC_BCAST(i32 16340)
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %142, i32 %143, i32 %144)
  %146 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %147 = call i32 @GPC_BCAST(i32 2220)
  %148 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %149 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %148, i32 1050624)
  %150 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %146, i32 %147, i32 %149)
  %151 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %151)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @GPC_BCAST(i32) #1

declare dso_local i32 @nv_rd32(%struct.nvc0_graph_priv*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
