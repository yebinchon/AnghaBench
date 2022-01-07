; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bus/extr_nvc0.c_nvc0_bus_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bus/extr_nvc0.c_nvc0_bus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_bus = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"MMIO %s of 0x%08x FAULT at 0x%06x [ %s%s%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"!ENGINE \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"IBUS \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"TIMEOUT \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"unknown intr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nvc0_bus_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_bus_intr(%struct.nouveau_subdev* %0) #0 {
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
  %15 = and i32 %14, 14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %55

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
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %46 = call i32 (%struct.nouveau_bus*, i8*, ...) @nv_error(%struct.nouveau_bus* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28, i32 %30, i8* %35, i8* %40, i8* %45)
  %47 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %48 = call i32 @nv_wr32(%struct.nouveau_bus* %47, i32 36996, i32 0)
  %49 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 14
  %52 = call i32 @nv_wr32(%struct.nouveau_bus* %49, i32 4352, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, -15
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %17, %1
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (%struct.nouveau_bus*, i8*, ...) @nv_error(%struct.nouveau_bus* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  %62 = load %struct.nouveau_bus*, %struct.nouveau_bus** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @nv_mask(%struct.nouveau_bus* %62, i32 4416, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %58, %55
  ret void
}

declare dso_local %struct.nouveau_bus* @nouveau_bus(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_bus*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_bus*, i8*, ...) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_bus*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
