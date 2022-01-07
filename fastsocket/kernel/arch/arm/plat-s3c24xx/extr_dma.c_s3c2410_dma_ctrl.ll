; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_chan = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c2410_dma_ctrl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c2410_dma_chan*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.s3c2410_dma_chan* @s3c_dma_lookup_channel(i32 %7)
  store %struct.s3c2410_dma_chan* %8, %struct.s3c2410_dma_chan** %6, align 8
  %9 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %10 = icmp eq %struct.s3c2410_dma_chan* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %32 [
    i32 131, label %16
    i32 129, label %19
    i32 133, label %22
    i32 132, label %22
    i32 134, label %25
    i32 130, label %28
    i32 128, label %31
  ]

16:                                               ; preds = %14
  %17 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %18 = call i32 @s3c2410_dma_start(%struct.s3c2410_dma_chan* %17)
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %14
  %20 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %21 = call i32 @s3c2410_dma_dostop(%struct.s3c2410_dma_chan* %20)
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %14, %14
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %14
  %26 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %27 = call i32 @s3c2410_dma_flush(%struct.s3c2410_dma_chan* %26)
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %14
  %29 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %30 = call i32 @s3c2410_dma_started(%struct.s3c2410_dma_chan* %29)
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %35

32:                                               ; preds = %14
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %31, %28, %25, %22, %19, %16, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.s3c2410_dma_chan* @s3c_dma_lookup_channel(i32) #1

declare dso_local i32 @s3c2410_dma_start(%struct.s3c2410_dma_chan*) #1

declare dso_local i32 @s3c2410_dma_dostop(%struct.s3c2410_dma_chan*) #1

declare dso_local i32 @s3c2410_dma_flush(%struct.s3c2410_dma_chan*) #1

declare dso_local i32 @s3c2410_dma_started(%struct.s3c2410_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
