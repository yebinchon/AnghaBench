; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_trap_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_trap_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }
%struct.nouveau_object = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"DISPATCH ch %d [0x%010llx %s] 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"SHADER ch %d [0x%010llx %s] 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ROP%d ch %d [0x%010llx %s] 0x%08x 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"TRAP ch %d [0x%010llx %s] 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*, i32, i32, %struct.nouveau_object*)* @nve0_graph_trap_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_graph_trap_isr(%struct.nvc0_graph_priv* %0, i32 %1, i32 %2, %struct.nouveau_object* %3) #0 {
  %5 = alloca %struct.nvc0_graph_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.nouveau_object* %3, %struct.nouveau_object** %8, align 8
  %15 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %16 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %15, i32 4194568)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %22 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %21, i32 4210688)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %27 = call i32 @nouveau_client_name(%struct.nouveau_object* %26)
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, i32, i32, i32, ...) @nv_error(%struct.nvc0_graph_priv* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %27, i32 %28)
  %30 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %31 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %30, i32 4210688, i32 -1073741824)
  %32 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %33 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %32, i32 4194568, i32 1)
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, -2
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %20, %4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 16
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %42 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %41, i32 4216896)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %47 = call i32 @nouveau_client_name(%struct.nouveau_object* %46)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, i32, i32, i32, ...) @nv_error(%struct.nvc0_graph_priv* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i32 %47, i32 %48)
  %50 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %51 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %50, i32 4216896, i32 -1073741824)
  %52 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %53 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %52, i32 4194568, i32 16)
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, -17
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %40, %36
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 33554432
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %93, %60
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %64 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %61
  %68 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @ROP_UNIT(i32 %69, i32 112)
  %71 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %68, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ROP_UNIT(i32 %73, i32 324)
  %75 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %72, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %81 = call i32 @nouveau_client_name(%struct.nouveau_object* %80)
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, i32, i32, i32, ...) @nv_error(%struct.nvc0_graph_priv* %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @ROP_UNIT(i32 %86, i32 112)
  %88 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %85, i32 %87, i32 -1073741824)
  %89 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @ROP_UNIT(i32 %90, i32 324)
  %92 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %89, i32 %91, i32 -1073741824)
  br label %93

93:                                               ; preds = %67
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %61

96:                                               ; preds = %61
  %97 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %98 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %97, i32 4194568, i32 33554432)
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, -33554433
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %96, %56
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %109 = call i32 @nouveau_client_name(%struct.nouveau_object* %108)
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (%struct.nvc0_graph_priv*, i8*, i32, i32, i32, i32, ...) @nv_error(%struct.nvc0_graph_priv* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %107, i32 %109, i32 %110)
  %112 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %112, i32 4194568, i32 %113)
  br label %115

115:                                              ; preds = %104, %101
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nvc0_graph_priv*, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_graph_priv*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @ROP_UNIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
