; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mc/extr_base.c_nouveau_mc_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mc/extr_base.c_nouveau_mc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 (%struct.nouveau_subdev*)* }
%struct.nouveau_mc = type { %struct.nouveau_mc_intr* }
%struct.nouveau_mc_intr = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unknown intr 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_mc_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_mc*, align 8
  %4 = alloca %struct.nouveau_mc_intr*, align 8
  %5 = alloca %struct.nouveau_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %8 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %9 = call %struct.nouveau_mc* @nouveau_mc(%struct.nouveau_subdev* %8)
  store %struct.nouveau_mc* %9, %struct.nouveau_mc** %3, align 8
  %10 = load %struct.nouveau_mc*, %struct.nouveau_mc** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_mc, %struct.nouveau_mc* %10, i32 0, i32 0
  %12 = load %struct.nouveau_mc_intr*, %struct.nouveau_mc_intr** %11, align 8
  store %struct.nouveau_mc_intr* %12, %struct.nouveau_mc_intr** %4, align 8
  %13 = load %struct.nouveau_mc*, %struct.nouveau_mc** %3, align 8
  %14 = call i32 @nv_rd32(%struct.nouveau_mc* %13, i32 256)
  store i32 %14, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %58, %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.nouveau_mc_intr*, %struct.nouveau_mc_intr** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_mc_intr, %struct.nouveau_mc_intr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %61

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.nouveau_mc_intr*, %struct.nouveau_mc_intr** %4, align 8
  %28 = getelementptr inbounds %struct.nouveau_mc_intr, %struct.nouveau_mc_intr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %34 = load %struct.nouveau_mc_intr*, %struct.nouveau_mc_intr** %4, align 8
  %35 = getelementptr inbounds %struct.nouveau_mc_intr, %struct.nouveau_mc_intr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.nouveau_subdev* @nouveau_subdev(%struct.nouveau_subdev* %33, i32 %36)
  store %struct.nouveau_subdev* %37, %struct.nouveau_subdev** %5, align 8
  %38 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %5, align 8
  %39 = icmp ne %struct.nouveau_subdev* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %5, align 8
  %42 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %41, i32 0, i32 0
  %43 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %42, align 8
  %44 = icmp ne i32 (%struct.nouveau_subdev*)* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %46, i32 0, i32 0
  %48 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %47, align 8
  %49 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %5, align 8
  %50 = call i32 %48(%struct.nouveau_subdev* %49)
  br label %51

51:                                               ; preds = %45, %40, %32
  %52 = load %struct.nouveau_mc_intr*, %struct.nouveau_mc_intr** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_mc_intr, %struct.nouveau_mc_intr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %51, %25
  %59 = load %struct.nouveau_mc_intr*, %struct.nouveau_mc_intr** %4, align 8
  %60 = getelementptr inbounds %struct.nouveau_mc_intr, %struct.nouveau_mc_intr* %59, i32 1
  store %struct.nouveau_mc_intr* %60, %struct.nouveau_mc_intr** %4, align 8
  br label %15

61:                                               ; preds = %23
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.nouveau_mc*, %struct.nouveau_mc** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @nv_error(%struct.nouveau_mc* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  ret void
}

declare dso_local %struct.nouveau_mc* @nouveau_mc(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_mc*, i32) #1

declare dso_local %struct.nouveau_subdev* @nouveau_subdev(%struct.nouveau_subdev*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_mc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
