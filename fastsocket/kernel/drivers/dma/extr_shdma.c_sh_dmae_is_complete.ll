; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_is_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_is_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sh_dmae_chan = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, i32*, i32*)* @sh_dmae_is_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmae_is_complete(%struct.dma_chan* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sh_dmae_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = call %struct.sh_dmae_chan* @to_sh_chan(%struct.dma_chan* %12)
  store %struct.sh_dmae_chan* %13, %struct.sh_dmae_chan** %9, align 8
  %14 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %9, align 8
  %15 = call i32 @sh_dmae_chan_ld_cleanup(%struct.sh_dmae_chan* %14)
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %9, align 8
  %20 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %26, %4
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dma_async_is_complete(i32 %41, i32 %42, i32 %43)
  ret i32 %44
}

declare dso_local %struct.sh_dmae_chan* @to_sh_chan(%struct.dma_chan*) #1

declare dso_local i32 @sh_dmae_chan_ld_cleanup(%struct.sh_dmae_chan*) #1

declare dso_local i32 @dma_async_is_complete(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
