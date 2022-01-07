; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bus/extr_nv31.c_nv31_bus_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bus/extr_nv31.c_nv31_bus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 (%struct.nouveau_subdev*)* }
%struct.nouveau_bus = type { i32 }

@NVDEV_SUBDEV_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"MMIO %s of 0x%08x FAULT at 0x%06x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@NVDEV_SUBDEV_THERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown intr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv31_bus_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv31_bus_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %8 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %9 = call %struct.nouveau_bus* @nouveau_bus(%struct.nouveau_subdev* %8)
  store %struct.nouveau_bus* %9, %struct.nouveau_bus** %3, align 8
  %10 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %11 = call i32 @nv_rd32(%struct.nouveau_bus* %10, i32 4352)
  %12 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %13 = call i32 @nv_rd32(%struct.nouveau_bus* %12, i32 4416)
  %14 = and i32 %11, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %16 = call i32 @nv_rd32(%struct.nouveau_bus* %15, i32 4356)
  %17 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %18 = call i32 @nv_rd32(%struct.nouveau_bus* %17, i32 4420)
  %19 = and i32 %16, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %1
  %23 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %24 = load i32, i32* @NVDEV_SUBDEV_GPIO, align 4
  %25 = call %struct.nouveau_subdev* @nouveau_subdev(%struct.nouveau_bus* %23, i32 %24)
  store %struct.nouveau_subdev* %25, %struct.nouveau_subdev** %2, align 8
  %26 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %27 = icmp ne %struct.nouveau_subdev* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %30 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %29, i32 0, i32 0
  %31 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %30, align 8
  %32 = icmp ne i32 (%struct.nouveau_subdev*)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %35 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %34, i32 0, i32 0
  %36 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %35, align 8
  %37 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %38 = call i32 %36(%struct.nouveau_subdev* %37)
  br label %39

39:                                               ; preds = %33, %28, %22
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %46 = call i32 @nv_rd32(%struct.nouveau_bus* %45, i32 36996)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %48 = call i32 @nv_rd32(%struct.nouveau_bus* %47, i32 37000)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 2
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 16777212
  %58 = call i32 (%struct.nouveau_bus*, i8*, ...) @nv_error(%struct.nouveau_bus* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, -9
  store i32 %60, i32* %4, align 4
  %61 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %62 = call i32 @nv_wr32(%struct.nouveau_bus* %61, i32 4352, i32 8)
  br label %63

63:                                               ; preds = %44, %40
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 458752
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %69 = load i32, i32* @NVDEV_SUBDEV_THERM, align 4
  %70 = call %struct.nouveau_subdev* @nouveau_subdev(%struct.nouveau_bus* %68, i32 %69)
  store %struct.nouveau_subdev* %70, %struct.nouveau_subdev** %2, align 8
  %71 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %72 = icmp ne %struct.nouveau_subdev* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %75 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %74, i32 0, i32 0
  %76 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %75, align 8
  %77 = icmp ne i32 (%struct.nouveau_subdev*)* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %80 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %79, i32 0, i32 0
  %81 = load i32 (%struct.nouveau_subdev*)*, i32 (%struct.nouveau_subdev*)** %80, align 8
  %82 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %83 = call i32 %81(%struct.nouveau_subdev* %82)
  br label %84

84:                                               ; preds = %78, %73, %67
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, -458753
  store i32 %86, i32* %4, align 4
  %87 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %88 = call i32 @nv_wr32(%struct.nouveau_bus* %87, i32 4352, i32 458752)
  br label %89

89:                                               ; preds = %84, %63
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 (%struct.nouveau_bus*, i8*, ...) @nv_error(%struct.nouveau_bus* %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @nv_mask(%struct.nouveau_bus* %96, i32 4416, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %92, %89
  ret void
}

declare dso_local %struct.nouveau_bus* @nouveau_bus(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_bus*, i32) #1

declare dso_local %struct.nouveau_subdev* @nouveau_subdev(%struct.nouveau_bus*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_bus*, i8*, ...) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_bus*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
