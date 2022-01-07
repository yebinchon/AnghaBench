; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.scatterlist*, i32, i32, i32)* @talitos_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_map_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %18, %14
  %16 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %17 = icmp ne %struct.scatterlist* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @dma_map_sg(%struct.device* %19, %struct.scatterlist* %20, i32 1, i32 %21)
  %23 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %24 = call %struct.scatterlist* @scatterwalk_sg_next(%struct.scatterlist* %23)
  store %struct.scatterlist* %24, %struct.scatterlist** %7, align 8
  br label %15

25:                                               ; preds = %15
  br label %32

26:                                               ; preds = %5
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dma_map_sg(%struct.device* %27, %struct.scatterlist* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %25
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
