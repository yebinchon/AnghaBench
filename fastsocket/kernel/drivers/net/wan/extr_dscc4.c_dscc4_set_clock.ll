; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dscc4_dev_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@Ccr0ClockMask = common dso_local global i32 0, align 4
@BRR_DIVIDER_MAX = common dso_local global i32 0, align 4
@BRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*)* @dscc4_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dscc4_set_clock(%struct.net_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dscc4_dev_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.dscc4_dev_priv* @dscc4_priv(%struct.net_device* %14)
  store %struct.dscc4_dev_priv* %15, %struct.dscc4_dev_priv** %7, align 8
  store i32 -1, i32* %8, align 4
  %16 = load i32, i32* @Ccr0ClockMask, align 4
  %17 = xor i32 %16, -1
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %7, align 8
  %26 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %106

33:                                               ; preds = %24
  %34 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %7, align 8
  %35 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @dscc4_check_clock_ability(i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %106

40:                                               ; preds = %33
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %41, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @BRR_DIVIDER_MAX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 4
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 54
  store i32 %53, i32* %51, align 4
  br label %58

54:                                               ; preds = %40
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 55
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %12, align 4
  %60 = ashr i32 %59, 22
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 63, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %79

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i32, i32* %12, align 4
  %69 = and i32 -64, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %67

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %76, %63
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i32, i32* %11, align 4
  %81 = shl i32 %80, 8
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = shl i32 %84, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %12, align 4
  %93 = shl i32 %92, 4
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %91, %79
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %12, align 4
  %97 = sdiv i32 %95, %96
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  br label %100

99:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %94
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %7, align 8
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = load i32, i32* @BRR, align 4
  %105 = call i32 @scc_writel(i32 %101, %struct.dscc4_dev_priv* %102, %struct.net_device* %103, i32 %104)
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %100, %39, %32
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local %struct.dscc4_dev_priv* @dscc4_priv(%struct.net_device*) #1

declare dso_local i64 @dscc4_check_clock_ability(i32) #1

declare dso_local i32 @scc_writel(i32, %struct.dscc4_dev_priv*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
