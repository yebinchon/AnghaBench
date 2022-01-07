; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_i2c.c_dcb_i2c_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_i2c.c_dcb_i2c_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_i2c_table(%struct.nouveau_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.nouveau_bios*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @dcb_table(%struct.nouveau_bios* %13, i32* %14, i32* %15, i32* %16, i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 21
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 2
  %29 = call i32 @nv_ro16(%struct.nouveau_bios* %26, i32 %28)
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 4
  %38 = call i32 @nv_ro16(%struct.nouveau_bios* %35, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 48
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 0
  %51 = call i32 @nv_ro08(%struct.nouveau_bios* %48, i32 %50)
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @nv_ro08(%struct.nouveau_bios* %53, i32 %55)
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 2
  %61 = call i32 @nv_ro08(%struct.nouveau_bios* %58, i32 %60)
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 3
  %66 = call i32 @nv_ro08(%struct.nouveau_bios* %63, i32 %65)
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  br label %75

68:                                               ; preds = %43, %40
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 16, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 4, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %47
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local i32 @dcb_table(%struct.nouveau_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
