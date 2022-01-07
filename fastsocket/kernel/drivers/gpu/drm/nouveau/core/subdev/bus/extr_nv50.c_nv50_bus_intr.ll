; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bus/extr_nv50.c_nv50_bus_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bus/extr_nv50.c_nv50_bus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 (%struct.nouveau_subdev*)* }
%struct.nouveau_bus = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"MMIO %s of 0x%08x FAULT at 0x%06x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@NVDEV_SUBDEV_THERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown intr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv50_bus_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_bus_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %7 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %8 = call %struct.nouveau_bus* @nouveau_bus(%struct.nouveau_subdev* %7)
  store %struct.nouveau_bus* %8, %struct.nouveau_bus** %3, align 8
  %9 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %10 = call i32 @nv_rd32(%struct.nouveau_bus* %9, i32 4352)
  %11 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %12 = call i32 @nv_rd32(%struct.nouveau_bus* %11, i32 4416)
  %13 = and i32 %10, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %19 = call i32 @nv_rd32(%struct.nouveau_bus* %18, i32 36996)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %21 = call i32 @nv_rd32(%struct.nouveau_bus* %20, i32 37000)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 16777212
  %31 = call i32 (%struct.nouveau_bus*, i8*, ...) @nv_error(%struct.nouveau_bus* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, -9
  store i32 %33, i32* %4, align 4
  %34 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %35 = call i32 @nv_wr32(%struct.nouveau_bus* %34, i32 4352, i32 8)
  br label %36

36:                                               ; preds = %17, %1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 65536
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %42 = load i32, i32* @NVDEV_SUBDEV_THERM, align 4
  %43 = call %struct.nouveau_subdev* @nouveau_subdev(%struct.nouveau_bus* %41, i32 %42)
  store %struct.nouveau_subdev* %43, %struct.nouveau_subdev** %2, align 8
  %44 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %45 = icmp ne %struct.nouveau_subdev* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %48 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %47, i32 0, i32 0
  %49 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %48, align 8
  %50 = icmp ne i32 (%struct.nouveau_subdev*)* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %53 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %52, i32 0, i32 0
  %54 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %53, align 8
  %55 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %56 = call i32 %54(%struct.nouveau_subdev* %55)
  br label %57

57:                                               ; preds = %51, %46, %40
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, -65537
  store i32 %59, i32* %4, align 4
  %60 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %61 = call i32 @nv_wr32(%struct.nouveau_bus* %60, i32 4352, i32 65536)
  br label %62

62:                                               ; preds = %57, %36
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (%struct.nouveau_bus*, i8*, ...) @nv_error(%struct.nouveau_bus* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @nv_mask(%struct.nouveau_bus* %69, i32 4416, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %65, %62
  ret void
}

declare dso_local %struct.nouveau_bus* @nouveau_bus(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_bus*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_bus*, i8*, ...) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_bus*, i32, i32) #1

declare dso_local %struct.nouveau_subdev* @nouveau_subdev(%struct.nouveau_bus*, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
