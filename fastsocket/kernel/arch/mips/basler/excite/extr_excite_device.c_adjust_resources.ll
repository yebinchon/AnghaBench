; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/basler/excite/extr_excite_device.c_adjust_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/basler/excite/extr_excite_device.c_adjust_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, i32, %struct.resource* }

@IORESOURCE_IO = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@IORESOURCE_IRQ = common dso_local global i64 0, align 8
@IORESOURCE_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource*, i32)* @adjust_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_resources(%struct.resource* %0, i32 %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @IORESOURCE_IO, align 8
  %9 = load i64, i64* @IORESOURCE_MEM, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* @IORESOURCE_IRQ, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @IORESOURCE_DMA, align 8
  %14 = or i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.resource*, %struct.resource** %3, align 8
  store %struct.resource* %15, %struct.resource** %5, align 8
  br label %16

16:                                               ; preds = %54, %2
  %17 = load %struct.resource*, %struct.resource** %5, align 8
  %18 = load %struct.resource*, %struct.resource** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %18, i64 %20
  %22 = icmp ult %struct.resource* %17, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %16
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 3
  %26 = load %struct.resource*, %struct.resource** %25, align 8
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.resource*, %struct.resource** %5, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  %46 = load %struct.resource*, %struct.resource** %7, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = and i64 %48, %49
  %51 = load %struct.resource*, %struct.resource** %5, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %29, %23
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 1
  store %struct.resource* %56, %struct.resource** %5, align 8
  br label %16

57:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
