; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nvc0_fifo_priv = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%d subfifo(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nvc0_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fifo_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nvc0_fifo_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = bitcast %struct.nouveau_object* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nvc0_fifo_priv*
  store %struct.nvc0_fifo_priv* %9, %struct.nvc0_fifo_priv** %4, align 8
  %10 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %11 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %10, i32 0, i32 2
  %12 = call i32 @nouveau_fifo_init(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %19 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %18, i32 516, i32 -1)
  %20 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %21 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %20, i32 8708, i32 -1)
  %22 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %23 = call i32 @nv_rd32(%struct.nvc0_fifo_priv* %22, i32 8708)
  %24 = call i32 @hweight32(i32 %23)
  %25 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %26 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %28 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %29 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nv_debug(%struct.nvc0_fifo_priv* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %33 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 3
  br i1 %35, label %36, label %49

36:                                               ; preds = %17
  %37 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %38 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %37, i32 8712, i32 -2)
  %39 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %40 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %39, i32 8716, i32 -3)
  %41 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %42 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %41, i32 8720, i32 -3)
  %43 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %44 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %43, i32 8724, i32 -3)
  %45 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %46 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %45, i32 8728, i32 -5)
  %47 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %48 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %47, i32 8732, i32 -3)
  br label %49

49:                                               ; preds = %36, %17
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %72, %49
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %53 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 8192
  %60 = add nsw i32 262460, %59
  %61 = call i32 @nv_mask(%struct.nvc0_fifo_priv* %57, i32 %60, i32 268435712, i32 0)
  %62 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %63, 8192
  %65 = add nsw i32 262408, %64
  %66 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %62, i32 %65, i32 -1)
  %67 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %68, 8192
  %70 = add nsw i32 262412, %69
  %71 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %67, i32 %70, i32 -257)
  br label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %50

75:                                               ; preds = %50
  %76 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %77 = call i32 @nv_mask(%struct.nvc0_fifo_priv* %76, i32 8704, i32 1, i32 1)
  %78 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %79 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %80 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 12
  %85 = or i32 268435456, %84
  %86 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %78, i32 8788, i32 %85)
  %87 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %88 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %87, i32 10752, i32 -1)
  %89 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %90 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %89, i32 8448, i32 -1)
  %91 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %92 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %91, i32 8512, i32 1073741823)
  %93 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %4, align 8
  %94 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %93, i32 9768, i32 1)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %75, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @nouveau_fifo_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_fifo_priv*, i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @nv_rd32(%struct.nvc0_fifo_priv*, i32) #1

declare dso_local i32 @nv_debug(%struct.nvc0_fifo_priv*, i8*, i32) #1

declare dso_local i32 @nv_mask(%struct.nvc0_fifo_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
