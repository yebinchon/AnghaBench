; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctx.h__cp_bra.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctx.h__cp_bra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { i32* }

@CP_BRA_IP_SHIFT = common dso_local global i32 0, align 4
@CP_BRA = common dso_local global i32 0, align 4
@CP_BRA_IF_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*, i32, i32, i32, i32)* @_cp_bra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_cp_bra(%struct.nouveau_grctx* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nouveau_grctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %32

14:                                               ; preds = %5
  %15 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %6, align 8
  %16 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CP_BRA_IP_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @CP_BRA_IP_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 -16777216, %29
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %26, %14
  br label %32

32:                                               ; preds = %31, %5
  %33 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %6, align 8
  %34 = load i32, i32* @CP_BRA, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %35, 18
  %37 = or i32 %34, %36
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @CP_BRA_IF_CLEAR, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ 0, %44 ], [ %46, %45 ]
  %49 = or i32 %41, %48
  %50 = call i32 @cp_out(%struct.nouveau_grctx* %33, i32 %49)
  ret void
}

declare dso_local i32 @cp_out(%struct.nouveau_grctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
