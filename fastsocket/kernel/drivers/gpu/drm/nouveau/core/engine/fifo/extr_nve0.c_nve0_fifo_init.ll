; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nve0_fifo_priv = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%d subfifo(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nve0_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_fifo_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nve0_fifo_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = bitcast %struct.nouveau_object* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nve0_fifo_priv*
  store %struct.nve0_fifo_priv* %9, %struct.nve0_fifo_priv** %4, align 8
  %10 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %11 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %10, i32 0, i32 2
  %12 = call i32 @nouveau_fifo_init(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %19 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %18, i32 516, i32 -1)
  %20 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %21 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %20, i32 516)
  %22 = call i32 @hweight32(i32 %21)
  %23 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %24 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %26 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %27 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nv_debug(%struct.nve0_fifo_priv* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %52, %17
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %33 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 8192
  %40 = add nsw i32 262460, %39
  %41 = call i32 @nv_mask(%struct.nve0_fifo_priv* %37, i32 %40, i32 268435712, i32 0)
  %42 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 8192
  %45 = add nsw i32 262408, %44
  %46 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %42, i32 %45, i32 -1)
  %47 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %48, 8192
  %50 = add nsw i32 262412, %49
  %51 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %47, i32 %50, i32 -257)
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %57 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %58 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 12
  %63 = or i32 268435456, %62
  %64 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %56, i32 8788, i32 %63)
  %65 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %66 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %65, i32 10752, i32 -1)
  %67 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %68 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %67, i32 8448, i32 -1)
  %69 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %4, align 8
  %70 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %69, i32 8512, i32 1073741823)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %55, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @nouveau_fifo_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nve0_fifo_priv*, i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @nv_rd32(%struct.nve0_fifo_priv*, i32) #1

declare dso_local i32 @nv_debug(%struct.nve0_fifo_priv*, i8*, i32) #1

declare dso_local i32 @nv_mask(%struct.nve0_fifo_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
