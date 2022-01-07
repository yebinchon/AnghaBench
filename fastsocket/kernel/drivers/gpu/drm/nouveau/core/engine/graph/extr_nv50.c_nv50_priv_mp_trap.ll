; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_priv_mp_trap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_priv_mp_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"TRAP_MP_EXEC - TP %d MP %d: \00", align 1
@nv50_mp_exec_error_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c" at %06x warp %d, opcode %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"TRAP_MP_EXEC - TP %d: No MPs claiming errors?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_graph_priv*, i32, i32)* @nv50_priv_mp_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_priv_mp_trap(%struct.nv50_graph_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nv50_graph_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nv50_graph_priv* %0, %struct.nv50_graph_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %17 = call i32 @nv_rd32(%struct.nv50_graph_priv* %16, i32 5440)
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %107, %3
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %110

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %23, 24
  %25 = shl i32 1, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %107

29:                                               ; preds = %21
  %30 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %31 = call %struct.TYPE_2__* @nv_device(%struct.nv50_graph_priv* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 160
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 12
  %38 = add nsw i32 4227584, %37
  %39 = load i32, i32* %14, align 4
  %40 = shl i32 %39, 7
  %41 = add nsw i32 %38, %40
  store i32 %41, i32* %8, align 4
  br label %49

42:                                               ; preds = %29
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 11
  %45 = add nsw i32 4227328, %44
  %46 = load i32, i32* %14, align 4
  %47 = shl i32 %46, 7
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 16
  %53 = call i32 @nv_rd32(%struct.nv50_graph_priv* %50, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 20
  %57 = call i32 @nv_rd32(%struct.nv50_graph_priv* %54, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %107

61:                                               ; preds = %49
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 32
  %68 = call i32 @nv_rd32(%struct.nv50_graph_priv* %65, i32 %67)
  %69 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 36
  %72 = call i32 @nv_rd32(%struct.nv50_graph_priv* %69, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 112
  %76 = call i32 @nv_rd32(%struct.nv50_graph_priv* %73, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 116
  %80 = call i32 @nv_rd32(%struct.nv50_graph_priv* %77, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 (%struct.nv50_graph_priv*, i8*, i32, ...) @nv_error(%struct.nv50_graph_priv* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* @nv50_mp_exec_error_names, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @nouveau_enum_print(i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, 16777215
  %90 = load i32, i32* %11, align 4
  %91 = ashr i32 %90, 24
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @pr_cont(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %64, %61
  %96 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 16
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @nv_wr32(%struct.nv50_graph_priv* %96, i32 %98, i32 %99)
  %101 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 20
  %104 = call i32 @nv_wr32(%struct.nv50_graph_priv* %101, i32 %103, i32 0)
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %95, %60, %28
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %18

110:                                              ; preds = %18
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (%struct.nv50_graph_priv*, i8*, i32, ...) @nv_error(%struct.nv50_graph_priv* %117, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %113, %110
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv50_graph_priv*, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nv50_graph_priv*) #1

declare dso_local i32 @nv_error(%struct.nv50_graph_priv*, i8*, i32, ...) #1

declare dso_local i32 @nouveau_enum_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
