; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_config_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pnx4008_dma_config = type { i32, i32, i32, i64, i32, i32 }

@dma_channels = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_config_channel(i32 %0, %struct.pnx4008_dma_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnx4008_dma_config*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pnx4008_dma_config* %1, %struct.pnx4008_dma_config** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @VALID_CHANNEL(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_channels, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %9
  %21 = call i32 (...) @pnx4008_dma_lock()
  %22 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %23 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @DMAC_Cx_SRC_ADDR(i32 %25)
  %27 = call i32 @__raw_writel(i32 %24, i32 %26)
  %28 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %29 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @DMAC_Cx_DEST_ADDR(i32 %31)
  %33 = call i32 @__raw_writel(i32 %30, i32 %32)
  %34 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %35 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %40 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @DMAC_Cx_LLI(i32 %42)
  %44 = call i32 @__raw_writel(i32 %41, i32 %43)
  br label %49

45:                                               ; preds = %20
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DMAC_Cx_LLI(i32 %46)
  %48 = call i32 @__raw_writel(i32 0, i32 %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %51 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @DMAC_Cx_CONTROL(i32 %53)
  %55 = call i32 @__raw_writel(i32 %52, i32 %54)
  %56 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %57 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @DMAC_Cx_CONFIG(i32 %59)
  %61 = call i32 @__raw_writel(i32 %58, i32 %60)
  %62 = call i32 (...) @pnx4008_dma_unlock()
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %49, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @VALID_CHANNEL(i32) #1

declare dso_local i32 @pnx4008_dma_lock(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @DMAC_Cx_SRC_ADDR(i32) #1

declare dso_local i32 @DMAC_Cx_DEST_ADDR(i32) #1

declare dso_local i32 @DMAC_Cx_LLI(i32) #1

declare dso_local i32 @DMAC_Cx_CONTROL(i32) #1

declare dso_local i32 @DMAC_Cx_CONFIG(i32) #1

declare dso_local i32 @pnx4008_dma_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
