; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_dma.c_s3c2410_dma_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_dma.c_s3c2410_dma_ctrl.c"
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
  %10 = icmp ne %struct.s3c2410_dma_chan* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %15 = icmp ne %struct.s3c2410_dma_chan* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %31 [
    i32 131, label %21
    i32 129, label %24
    i32 134, label %27
    i32 133, label %30
    i32 132, label %30
    i32 130, label %30
    i32 128, label %30
  ]

21:                                               ; preds = %19
  %22 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %23 = call i32 @s3c64xx_dma_start(%struct.s3c2410_dma_chan* %22)
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %19
  %25 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %26 = call i32 @s3c64xx_dma_stop(%struct.s3c2410_dma_chan* %25)
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %19
  %28 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %6, align 8
  %29 = call i32 @s3c64xx_dma_flush(%struct.s3c2410_dma_chan* %28)
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %19, %19, %19, %19
  store i32 0, i32* %3, align 4
  br label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %30, %27, %24, %21, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.s3c2410_dma_chan* @s3c_dma_lookup_channel(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @s3c64xx_dma_start(%struct.s3c2410_dma_chan*) #1

declare dso_local i32 @s3c64xx_dma_stop(%struct.s3c2410_dma_chan*) #1

declare dso_local i32 @s3c64xx_dma_flush(%struct.s3c2410_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
