; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_dma.c_dbg_showbuffs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_dma.c_dbg_showbuffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_chan = type { i32, %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff*, i32 }
%struct.s3c64xx_dma_buff = type { i32, i32, %struct.s3c64xx_dma_buff* }

@.str = private unnamed_addr constant [39 x i8] c"DMA%d: buffs next %p, curr %p, end %p\0A\00", align 1
@debug_show_buffs = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"DMA%d: %08x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_dma_chan*)* @dbg_showbuffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_showbuffs(%struct.s3c2410_dma_chan* %0) #0 {
  %2 = alloca %struct.s3c2410_dma_chan*, align 8
  %3 = alloca %struct.s3c64xx_dma_buff*, align 8
  %4 = alloca %struct.s3c64xx_dma_buff*, align 8
  store %struct.s3c2410_dma_chan* %0, %struct.s3c2410_dma_chan** %2, align 8
  %5 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %8, i32 0, i32 2
  %10 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %9, align 8
  %11 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %14, i32 0, i32 1
  %16 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %15, align 8
  %17 = call i32 (i8*, i32, %struct.s3c64xx_dma_buff*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.s3c64xx_dma_buff* %10, i32 %13, %struct.s3c64xx_dma_buff* %16)
  %18 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %18, i32 0, i32 2
  %20 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %19, align 8
  store %struct.s3c64xx_dma_buff* %20, %struct.s3c64xx_dma_buff** %3, align 8
  %21 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  %22 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %21, i32 0, i32 1
  %23 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %22, align 8
  store %struct.s3c64xx_dma_buff* %23, %struct.s3c64xx_dma_buff** %4, align 8
  %24 = load i64, i64* @debug_show_buffs, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %44, %26
  %28 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %3, align 8
  %29 = icmp ne %struct.s3c64xx_dma_buff* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %2, align 8
  %32 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %3, align 8
  %35 = getelementptr inbounds %struct.s3c64xx_dma_buff, %struct.s3c64xx_dma_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.s3c64xx_dma_buff*
  %39 = call i32 (i8*, i32, %struct.s3c64xx_dma_buff*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %33, %struct.s3c64xx_dma_buff* %38)
  %40 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %3, align 8
  %41 = getelementptr inbounds %struct.s3c64xx_dma_buff, %struct.s3c64xx_dma_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @show_lli(i32 %42)
  br label %44

44:                                               ; preds = %30
  %45 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %3, align 8
  %46 = getelementptr inbounds %struct.s3c64xx_dma_buff, %struct.s3c64xx_dma_buff* %45, i32 0, i32 2
  %47 = load %struct.s3c64xx_dma_buff*, %struct.s3c64xx_dma_buff** %46, align 8
  store %struct.s3c64xx_dma_buff* %47, %struct.s3c64xx_dma_buff** %3, align 8
  br label %27

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %1
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, %struct.s3c64xx_dma_buff*, ...) #1

declare dso_local i32 @show_lli(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
