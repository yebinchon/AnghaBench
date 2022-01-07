; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_max2165.c_max2165_set_rf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_max2165.c_max2165_set_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2165_priv = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_NDIV_INT = common dso_local global i32 0, align 4
@REG_NDIV_FRAC2 = common dso_local global i32 0, align 4
@REG_NDIV_FRAC1 = common dso_local global i32 0, align 4
@REG_NDIV_FRAC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tf = %X\0A\00", align 1
@REG_TRACK_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2165_priv*, i32)* @max2165_set_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2165_set_rf(%struct.max2165_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.max2165_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max2165_priv* %0, %struct.max2165_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %10, 1000
  %12 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %13 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = call i32 @fixpt_div32(i32 %11, i32 %17, i32* %8, i32* %9)
  %19 = load i32, i32* %9, align 4
  %20 = ashr i32 %19, 12
  store i32 %20, i32* %9, align 4
  %21 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %22 = load i32, i32* @REG_NDIV_INT, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @max2165_write_reg(%struct.max2165_priv* %21, i32 %22, i32 %23)
  %25 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %26 = load i32, i32* @REG_NDIV_FRAC2, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 16
  %29 = call i32 @max2165_mask_write_reg(%struct.max2165_priv* %25, i32 %26, i32 15, i32 %28)
  %30 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %31 = load i32, i32* @REG_NDIV_FRAC1, align 4
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 8
  %34 = call i32 @max2165_write_reg(%struct.max2165_priv* %30, i32 %31, i32 %33)
  %35 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %36 = load i32, i32* @REG_NDIV_FRAC0, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @max2165_write_reg(%struct.max2165_priv* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 725000000
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %43 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %47 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ]
  store i32 %50, i32* %6, align 4
  %51 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %52 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %7, align 4
  %54 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %55 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %58 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %56, %59
  %61 = load i32, i32* %4, align 4
  %62 = sdiv i32 %61, 1000
  %63 = sub nsw i32 %62, 470000
  %64 = mul nsw i32 %60, %63
  %65 = sdiv i32 %64, 310000
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @dprintk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 %71, 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.max2165_priv*, %struct.max2165_priv** %3, align 8
  %76 = load i32, i32* @REG_TRACK_FILTER, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @max2165_write_reg(%struct.max2165_priv* %75, i32 %76, i32 %77)
  ret i32 0
}

declare dso_local i32 @fixpt_div32(i32, i32, i32*, i32*) #1

declare dso_local i32 @max2165_write_reg(%struct.max2165_priv*, i32, i32) #1

declare dso_local i32 @max2165_mask_write_reg(%struct.max2165_priv*, i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
