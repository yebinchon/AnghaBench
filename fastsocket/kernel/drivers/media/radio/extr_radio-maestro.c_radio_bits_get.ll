; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_radio_bits_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_radio_bits_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maestro = type { i32, i32, i32, i64 }

@IO_MASK = common dso_local global i32 0, align 4
@STR_CLK = common dso_local global i32 0, align 4
@STR_WREN = common dso_local global i32 0, align 4
@STR_MOST = common dso_local global i32 0, align 4
@STR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.maestro*)* @radio_bits_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_bits_get(%struct.maestro* %0) #0 {
  %2 = alloca %struct.maestro*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.maestro* %0, %struct.maestro** %2, align 8
  %8 = load %struct.maestro*, %struct.maestro** %2, align 8
  %9 = getelementptr inbounds %struct.maestro, %struct.maestro* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IO_MASK, align 4
  %13 = add nsw i32 %11, %12
  %14 = call i32 @inw(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @STR_CLK, align 4
  %16 = load i32, i32* @STR_WREN, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IO_MASK, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @outw(i32 %18, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @outw(i32 0, i32 %23)
  %25 = call i32 @udelay(i32 16)
  store i32 24, i32* %4, align 4
  br label %26

26:                                               ; preds = %75, %1
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %26
  %31 = load i32, i32* @STR_CLK, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @outw(i32 %31, i32 %32)
  %34 = call i32 @udelay(i32 2)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @inw(i32 %38)
  %40 = load i32, i32* @STR_MOST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 65535
  %45 = load %struct.maestro*, %struct.maestro** %2, align 8
  %46 = getelementptr inbounds %struct.maestro, %struct.maestro* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %30
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @outw(i32 0, i32 %48)
  %50 = call i32 @udelay(i32 2)
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @inw(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @STR_MOST, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 1
  %64 = load %struct.maestro*, %struct.maestro** %2, align 8
  %65 = getelementptr inbounds %struct.maestro, %struct.maestro* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %75

66:                                               ; preds = %47
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @STR_DATA, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %57
  %76 = call i32 @udelay(i32 2)
  br label %26

77:                                               ; preds = %26
  %78 = load %struct.maestro*, %struct.maestro** %2, align 8
  %79 = getelementptr inbounds %struct.maestro, %struct.maestro* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @STR_WREN, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @outw(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = call i32 @udelay(i32 4)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @IO_MASK, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @outw(i32 %88, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 16382
  ret i32 %94
}

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
