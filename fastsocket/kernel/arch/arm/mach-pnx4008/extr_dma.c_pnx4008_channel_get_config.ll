; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_channel_get_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_channel_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pnx4008_dma_config = type { i32, i8*, i8*, i8*, i8*, i8* }

@dma_channels = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_channel_get_config(i32 %0, %struct.pnx4008_dma_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnx4008_dma_config*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pnx4008_dma_config* %1, %struct.pnx4008_dma_config** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @VALID_CHANNEL(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_channels, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %19 = icmp ne %struct.pnx4008_dma_config* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %9, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %17
  %24 = call i32 (...) @pnx4008_dma_lock()
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @DMAC_Cx_CONFIG(i32 %25)
  %27 = call i8* @__raw_readl(i32 %26)
  %28 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %29 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @DMAC_Cx_CONTROL(i32 %30)
  %32 = call i8* @__raw_readl(i32 %31)
  %33 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %34 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @DMAC_Cx_LLI(i32 %35)
  %37 = call i8* @__raw_readl(i32 %36)
  %38 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %39 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %41 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %47 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @DMAC_Cx_SRC_ADDR(i32 %48)
  %50 = call i8* @__raw_readl(i32 %49)
  %51 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %52 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @DMAC_Cx_DEST_ADDR(i32 %53)
  %55 = call i8* @__raw_readl(i32 %54)
  %56 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %5, align 8
  %57 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = call i32 (...) @pnx4008_dma_unlock()
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %23, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @VALID_CHANNEL(i32) #1

declare dso_local i32 @pnx4008_dma_lock(...) #1

declare dso_local i8* @__raw_readl(i32) #1

declare dso_local i32 @DMAC_Cx_CONFIG(i32) #1

declare dso_local i32 @DMAC_Cx_CONTROL(i32) #1

declare dso_local i32 @DMAC_Cx_LLI(i32) #1

declare dso_local i32 @DMAC_Cx_SRC_ADDR(i32) #1

declare dso_local i32 @DMAC_Cx_DEST_ADDR(i32) #1

declare dso_local i32 @pnx4008_dma_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
