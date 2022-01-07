; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_set_pcigart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_set_pcigart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RS690 = common dso_local global i32 0, align 4
@CHIP_RS740 = common dso_local global i32 0, align 4
@RADEON_IS_IGPGART = common dso_local global i32 0, align 4
@CHIP_RS600 = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_AIC_CNTL = common dso_local global i32 0, align 4
@RADEON_PCIGART_TRANSLATE_EN = common dso_local global i32 0, align 4
@RADEON_AIC_PT_BASE = common dso_local global i32 0, align 4
@RADEON_AIC_LO_ADDR = common dso_local global i32 0, align 4
@RADEON_AIC_HI_ADDR = common dso_local global i32 0, align 4
@RADEON_AGP_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @radeon_set_pcigart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_set_pcigart(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @CHIP_RS690, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @CHIP_RS740, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %13
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RADEON_IS_IGPGART, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21, %13, %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @radeon_set_igpgart(%struct.TYPE_9__* %29, i32 %30)
  br label %98

32:                                               ; preds = %21
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CHIP_RS600, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @rs600_set_igpgart(%struct.TYPE_9__* %41, i32 %42)
  br label %98

44:                                               ; preds = %32
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RADEON_IS_PCIE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @radeon_set_pciegart(%struct.TYPE_9__* %52, i32 %53)
  br label %98

55:                                               ; preds = %44
  %56 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %57 = call i32 @RADEON_READ(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  %61 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @RADEON_PCIGART_TRANSLATE_EN, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @RADEON_WRITE(i32 %61, i32 %64)
  %66 = load i32, i32* @RADEON_AIC_PT_BASE, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @RADEON_WRITE(i32 %66, i32 %70)
  %72 = load i32, i32* @RADEON_AIC_LO_ADDR, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @RADEON_WRITE(i32 %72, i32 %75)
  %77 = load i32, i32* @RADEON_AIC_HI_ADDR, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @RADEON_WRITE(i32 %77, i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = call i32 @radeon_write_agp_location(%struct.TYPE_9__* %87, i32 -64)
  %89 = load i32, i32* @RADEON_AGP_COMMAND, align 4
  %90 = call i32 @RADEON_WRITE(i32 %89, i32 0)
  br label %98

91:                                               ; preds = %55
  %92 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @RADEON_PCIGART_TRANSLATE_EN, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = call i32 @RADEON_WRITE(i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %28, %40, %51, %91, %60
  ret void
}

declare dso_local i32 @radeon_set_igpgart(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @rs600_set_igpgart(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @radeon_set_pciegart(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i32 @radeon_write_agp_location(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
