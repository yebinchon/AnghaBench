; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctx.h_gr_def.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctx.h_gr_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { i64, i32, i32, i32 }

@NOUVEAU_GRCTX_VALS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*, i32, i32)* @gr_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gr_def(%struct.nouveau_grctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_grctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NOUVEAU_GRCTX_VALS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %33

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 4194304
  %16 = sdiv i32 %15, 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %17, %20
  %22 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %4, align 8
  %23 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @nv_wo32(i32 %28, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
