; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_set_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@set_pll.pre = internal global [6 x i32] [i32 0, i32 0, i32 0, i32 3, i32 2, i32 1], align 16
@xtal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s/0: pll out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"set_pll:    MO_PLL_REG       0x%08x [old=0x%08x,freq=%d]\0A\00", align 1
@MO_PLL_REG = common dso_local global i32 0, align 4
@MO_DEVICE_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"pll locked [pre=%d,ofreq=%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"pll not locked yet, waiting ...\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"pll NOT locked [pre=%d,ofreq=%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_core*, i32, i32)* @set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pll(%struct.cx88_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx88_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 2, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 5
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 5, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = mul nsw i32 %22, 1048576
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @xtal, align 4
  %26 = call i32 @do_div(i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 67108863
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* @set_pll.pre, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 26
  %34 = or i32 %28, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 20
  %37 = and i32 %36, 63
  %38 = icmp slt i32 %37, 14
  br i1 %38, label %39, label %44

39:                                               ; preds = %18
  %40 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %41 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %4, align 4
  br label %76

44:                                               ; preds = %18
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MO_PLL_REG, align 4
  %47 = call i32 @cx_read(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47, i32 %48)
  %50 = load i32, i32* @MO_PLL_REG, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @cx_write(i32 %50, i32 %51)
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %69, %44
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 100
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i32, i32* @MO_DEVICE_STATUS, align 4
  %58 = call i32 @cx_read(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64)
  store i32 0, i32* %4, align 4
  br label %76

66:                                               ; preds = %56
  %67 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 @msleep(i32 10)
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %74)
  store i32 -1, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %62, %39
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
