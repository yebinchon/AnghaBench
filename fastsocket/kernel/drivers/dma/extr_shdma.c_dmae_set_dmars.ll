; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_dmae_set_dmars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_dmae_set_dmars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_chan = type { i32 }

@DMARS_CHAN_MSK = common dso_local global i32 0, align 4
@DMARS_SHIFT = common dso_local global i32 0, align 4
@SH_DMARS_BASE = common dso_local global i64 0, align 8
@DMARS1_ADDR = common dso_local global i64 0, align 8
@DMARS2_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_dmae_chan*, i32)* @dmae_set_dmars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmae_set_dmars(%struct.sh_dmae_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_dmae_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sh_dmae_chan* %0, %struct.sh_dmae_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %10 = call i32 @dmae_is_idle(%struct.sh_dmae_chan* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %17 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DMARS_CHAN_MSK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @DMARS_SHIFT, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %26 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %38 [
    i32 0, label %28
    i32 1, label %28
    i32 2, label %30
    i32 3, label %30
    i32 4, label %34
    i32 5, label %34
  ]

28:                                               ; preds = %24, %24
  %29 = load i64, i64* @SH_DMARS_BASE, align 8
  store i64 %29, i64* %6, align 8
  br label %41

30:                                               ; preds = %24, %24
  %31 = load i64, i64* @SH_DMARS_BASE, align 8
  %32 = load i64, i64* @DMARS1_ADDR, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %6, align 8
  br label %41

34:                                               ; preds = %24, %24
  %35 = load i64, i64* @SH_DMARS_BASE, align 8
  %36 = load i64, i64* @DMARS2_ADDR, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %6, align 8
  br label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %34, %30, %28
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %42, %43
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @ctrl_inw(i64 %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 65280, i32 255
  %51 = and i32 %46, %50
  %52 = or i32 %44, %51
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @ctrl_outw(i32 %52, i64 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %41, %38, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @dmae_is_idle(%struct.sh_dmae_chan*) #1

declare dso_local i32 @ctrl_outw(i32, i64) #1

declare dso_local i32 @ctrl_inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
