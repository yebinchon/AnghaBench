; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bus/extr_nv04.c_nv04_bus_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bus/extr_nv04.c_nv04_bus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 (%struct.nouveau_subdev*)* }
%struct.nouveau_bus = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"BUS ERROR\0A\00", align 1
@NVDEV_SUBDEV_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown intr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv04_bus_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_bus_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %5 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %6 = call %struct.nouveau_bus* @nouveau_bus(%struct.nouveau_subdev* %5)
  store %struct.nouveau_bus* %6, %struct.nouveau_bus** %3, align 8
  %7 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %8 = call i32 @nv_rd32(%struct.nouveau_bus* %7, i32 4352)
  %9 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %10 = call i32 @nv_rd32(%struct.nouveau_bus* %9, i32 4416)
  %11 = and i32 %8, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %17 = call i32 (%struct.nouveau_bus*, i8*, ...) @nv_error(%struct.nouveau_bus* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, -2
  store i32 %19, i32* %4, align 4
  %20 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %21 = call i32 @nv_wr32(%struct.nouveau_bus* %20, i32 4352, i32 1)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 272
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %28 = load i32, i32* @NVDEV_SUBDEV_GPIO, align 4
  %29 = call %struct.nouveau_subdev* @nouveau_subdev(%struct.nouveau_subdev* %27, i32 %28)
  store %struct.nouveau_subdev* %29, %struct.nouveau_subdev** %2, align 8
  %30 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %31 = icmp ne %struct.nouveau_subdev* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %34 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %33, i32 0, i32 0
  %35 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %34, align 8
  %36 = icmp ne i32 (%struct.nouveau_subdev*)* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %39 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %38, i32 0, i32 0
  %40 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %39, align 8
  %41 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %42 = call i32 %40(%struct.nouveau_subdev* %41)
  br label %43

43:                                               ; preds = %37, %32, %26
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, -273
  store i32 %45, i32* %4, align 4
  %46 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %47 = call i32 @nv_wr32(%struct.nouveau_bus* %46, i32 4352, i32 272)
  br label %48

48:                                               ; preds = %43, %22
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (%struct.nouveau_bus*, i8*, ...) @nv_error(%struct.nouveau_bus* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @nv_mask(%struct.nouveau_bus* %55, i32 4416, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %51, %48
  ret void
}

declare dso_local %struct.nouveau_bus* @nouveau_bus(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_bus*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_bus*, i8*, ...) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_bus*, i32, i32) #1

declare dso_local %struct.nouveau_subdev* @nouveau_subdev(%struct.nouveau_subdev*, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
