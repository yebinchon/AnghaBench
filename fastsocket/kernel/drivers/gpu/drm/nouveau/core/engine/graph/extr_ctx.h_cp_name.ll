; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctx.h_cp_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctx.h_cp_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { i32*, i64, i32*, i32 }

@NOUVEAU_GRCTX_PROG = common dso_local global i64 0, align 8
@CP_BRA_IP = common dso_local global i32 0, align 4
@CP_BRA_IP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*, i32)* @cp_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_name(%struct.nouveau_grctx* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_grctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NOUVEAU_GRCTX_PROG, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %71, %16
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %3, align 8
  %29 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -1048576
  %39 = icmp ne i32 %38, -12582912
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %71

41:                                               ; preds = %32
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CP_BRA_IP, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @CP_BRA_IP_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %71

54:                                               ; preds = %41
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 16711935
  %61 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %3, align 8
  %62 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CP_BRA_IP_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %60, %65
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %54, %53, %40
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %26

74:                                               ; preds = %15, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
