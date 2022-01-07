; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_assign_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_manager.c_pnp_assign_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_dma = type { i32, i32 }
%struct.resource = type { i32, i32, i32 }

@pnp_assign_dma.xtab = internal global [8 x i16] [i16 1, i16 3, i16 5, i16 6, i16 7, i16 0, i16 2, i16 4], align 16
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"  dma %d already set to %d flags %#lx\0A\00", align 1
@IORESOURCE_AUTO = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"  disable dma %d\0A\00", align 1
@MAX_DMA_CHANNELS = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_dma*, i32)* @pnp_assign_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_assign_dma(%struct.pnp_dev* %0, %struct.pnp_dma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca %struct.pnp_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource, align 4
  %10 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store %struct.pnp_dma* %1, %struct.pnp_dma** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %12 = load i32, i32* @IORESOURCE_DMA, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %11, i32 %12, i32 %13)
  store %struct.resource* %14, %struct.resource** %8, align 8
  %15 = load %struct.resource*, %struct.resource** %8, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  store i32 0, i32* %4, align 4
  br label %95

28:                                               ; preds = %3
  store %struct.resource* %9, %struct.resource** %8, align 8
  %29 = load %struct.pnp_dma*, %struct.pnp_dma** %6, align 8
  %30 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IORESOURCE_AUTO, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.resource*, %struct.resource** %8, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.resource*, %struct.resource** %8, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  %38 = load %struct.resource*, %struct.resource** %8, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %72, %28
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  %44 = load %struct.pnp_dma*, %struct.pnp_dma** %6, align 8
  %45 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i16], [8 x i16]* @pnp_assign_dma.xtab, i64 0, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = shl i32 1, %51
  %53 = and i32 %46, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i16], [8 x i16]* @pnp_assign_dma.xtab, i64 0, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = load %struct.resource*, %struct.resource** %8, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.resource*, %struct.resource** %8, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %66 = load %struct.resource*, %struct.resource** %8, align 8
  %67 = call i64 @pnp_check_dma(%struct.pnp_dev* %65, %struct.resource* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %85

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %40

75:                                               ; preds = %40
  %76 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %77 = load %struct.resource*, %struct.resource** %8, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %82 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %75, %69
  %86 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %87 = load %struct.resource*, %struct.resource** %8, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = trunc i32 %89 to i16
  %91 = load %struct.resource*, %struct.resource** %8, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pnp_add_dma_resource(%struct.pnp_dev* %86, i16 zeroext %90, i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %85, %17
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i32, ...) #1

declare dso_local i64 @pnp_check_dma(%struct.pnp_dev*, %struct.resource*) #1

declare dso_local i32 @pnp_add_dma_resource(%struct.pnp_dev*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
