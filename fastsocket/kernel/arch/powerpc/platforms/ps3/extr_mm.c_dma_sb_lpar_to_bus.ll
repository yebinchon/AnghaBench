; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c_dma_sb_lpar_to_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c_dma_sb_lpar_to_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ps3_dma_region = type { i64, i64, i64 }

@map = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ps3_dma_region*, i64)* @dma_sb_lpar_to_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_sb_lpar_to_bus(%struct.ps3_dma_region* %0, i64 %1) #0 {
  %3 = alloca %struct.ps3_dma_region*, align 8
  %4 = alloca i64, align 8
  store %struct.ps3_dma_region* %0, %struct.ps3_dma_region** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 1, i32 0), align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 0, i32 0), align 8
  %10 = load i64, i64* %4, align 8
  %11 = sub i64 %10, %9
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %3, align 8
  %15 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %3, align 8
  %22 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %3, align 8
  %25 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %23, %26
  %28 = icmp uge i64 %20, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %3, align 8
  %32 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %33, %34
  %36 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %3, align 8
  %37 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  ret i64 %39
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
