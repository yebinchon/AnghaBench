; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv84_graph_tlb_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv84_graph_tlb_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_engine = type { i32 }
%struct.nouveau_timer = type { i32 (%struct.nouveau_timer*)* }
%struct.nv50_graph_priv = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"PGRAPH TLB flush idle timeout fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"PGRAPH_STATUS  : 0x%08x\00", align 1
@nv50_pgraph_status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@nv50_pgraph_vstatus_0 = common dso_local global i32 0, align 4
@nv50_pgraph_vstatus_1 = common dso_local global i32 0, align 4
@nv50_pgraph_vstatus_2 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_engine*)* @nv84_graph_tlb_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_graph_tlb_flush(%struct.nouveau_engine* %0) #0 {
  %2 = alloca %struct.nouveau_engine*, align 8
  %3 = alloca %struct.nouveau_timer*, align 8
  %4 = alloca %struct.nv50_graph_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_engine* %0, %struct.nouveau_engine** %2, align 8
  %10 = load %struct.nouveau_engine*, %struct.nouveau_engine** %2, align 8
  %11 = call %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_engine* %10)
  store %struct.nouveau_timer* %11, %struct.nouveau_timer** %3, align 8
  %12 = load %struct.nouveau_engine*, %struct.nouveau_engine** %2, align 8
  %13 = bitcast %struct.nouveau_engine* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nv50_graph_priv*
  store %struct.nv50_graph_priv* %14, %struct.nv50_graph_priv** %4, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %16 = getelementptr inbounds %struct.nv50_graph_priv, %struct.nv50_graph_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %20 = call i32 @nv_mask(%struct.nv50_graph_priv* %19, i32 4195584, i32 1, i32 0)
  %21 = load %struct.nouveau_timer*, %struct.nouveau_timer** %3, align 8
  %22 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %21, i32 0, i32 0
  %23 = load i32 (%struct.nouveau_timer*)*, i32 (%struct.nouveau_timer*)** %22, align 8
  %24 = load %struct.nouveau_timer*, %struct.nouveau_timer** %3, align 8
  %25 = call i32 %23(%struct.nouveau_timer* %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %101, %1
  store i32 1, i32* %5, align 4
  %27 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %28 = call i32 @nv_rd32(%struct.nv50_graph_priv* %27, i32 4195200)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %43, %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 7
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 3
  store i32 %45, i32* %9, align 4
  br label %29

46:                                               ; preds = %35
  %47 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %48 = call i32 @nv_rd32(%struct.nv50_graph_priv* %47, i32 4195204)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %63, %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  br i1 %56, label %57, label %66

57:                                               ; preds = %55
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 7
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %57
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 3
  store i32 %65, i32* %9, align 4
  br label %49

66:                                               ; preds = %55
  %67 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %68 = call i32 @nv_rd32(%struct.nv50_graph_priv* %67, i32 4195208)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %83, %66
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ]
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, 7
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %77
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = ashr i32 %84, 3
  store i32 %85, i32* %9, align 4
  br label %69

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %87
  %91 = load %struct.nouveau_timer*, %struct.nouveau_timer** %3, align 8
  %92 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %91, i32 0, i32 0
  %93 = load i32 (%struct.nouveau_timer*)*, i32 (%struct.nouveau_timer*)** %92, align 8
  %94 = load %struct.nouveau_timer*, %struct.nouveau_timer** %3, align 8
  %95 = call i32 %93(%struct.nouveau_timer* %94)
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %95, %96
  %98 = icmp sgt i32 %97, 2000000000
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %6, align 4
  %100 = xor i1 %98, true
  br label %101

101:                                              ; preds = %90, %87
  %102 = phi i1 [ false, %87 ], [ %100, %90 ]
  br i1 %102, label %26, label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %103
  %107 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %108 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %110 = call i32 @nv_rd32(%struct.nv50_graph_priv* %109, i32 4196096)
  store i32 %110, i32* %9, align 4
  %111 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @nv50_pgraph_status, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @nouveau_bitfield_print(i32 %114, i32 %115)
  %117 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %118 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %119 = load i32, i32* @nv50_pgraph_vstatus_0, align 4
  %120 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %121 = call i32 @nv_rd32(%struct.nv50_graph_priv* %120, i32 4195200)
  %122 = call i32 @nouveau_pgraph_vstatus_print(%struct.nv50_graph_priv* %118, i32 0, i32 %119, i32 %121)
  %123 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %124 = load i32, i32* @nv50_pgraph_vstatus_1, align 4
  %125 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %126 = call i32 @nv_rd32(%struct.nv50_graph_priv* %125, i32 4195204)
  %127 = call i32 @nouveau_pgraph_vstatus_print(%struct.nv50_graph_priv* %123, i32 1, i32 %124, i32 %126)
  %128 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %129 = load i32, i32* @nv50_pgraph_vstatus_2, align 4
  %130 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %131 = call i32 @nv_rd32(%struct.nv50_graph_priv* %130, i32 4195208)
  %132 = call i32 @nouveau_pgraph_vstatus_print(%struct.nv50_graph_priv* %128, i32 2, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %106, %103
  %134 = load %struct.nouveau_engine*, %struct.nouveau_engine** %2, align 8
  %135 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %134, i32 0, i32 0
  %136 = call i32 @nv50_vm_flush_engine(i32* %135, i32 0)
  %137 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %138 = call i32 @nv_mask(%struct.nv50_graph_priv* %137, i32 4195584, i32 1, i32 1)
  %139 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %4, align 8
  %140 = getelementptr inbounds %struct.nv50_graph_priv, %struct.nv50_graph_priv* %139, i32 0, i32 0
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  br label %149

148:                                              ; preds = %133
  br label %149

149:                                              ; preds = %148, %145
  %150 = phi i32 [ %147, %145 ], [ 0, %148 ]
  ret i32 %150
}

declare dso_local %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_engine*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv_mask(%struct.nv50_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_graph_priv*, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_graph_priv*, i8*, ...) #1

declare dso_local i32 @nouveau_bitfield_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @nouveau_pgraph_vstatus_print(%struct.nv50_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv50_vm_flush_engine(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
