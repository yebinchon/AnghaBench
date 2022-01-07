; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7879.c_ad7879_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7879.c_ad7879_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7879 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AD7879_YPLUS_BIT = common dso_local global i32 0, align 4
@AD7879_XPLUS_BIT = common dso_local global i32 0, align 4
@AD7879_Z2_BIT = common dso_local global i32 0, align 4
@AD7879_Z1_BIT = common dso_local global i32 0, align 4
@AD7879_TEMPMASK_BIT = common dso_local global i32 0, align 4
@AD7879_AUXVBATMASK_BIT = common dso_local global i32 0, align 4
@AD7879_GPIOALERTMASK_BIT = common dso_local global i32 0, align 4
@AD7879_PM_DYN = common dso_local global i32 0, align 4
@AD7879_DFR = common dso_local global i32 0, align 4
@AD7879_MODE_INT = common dso_local global i32 0, align 4
@AD7879_MODE_SEQ1 = common dso_local global i32 0, align 4
@AD7879_REG_CTRL2 = common dso_local global i32 0, align 4
@AD7879_REG_CTRL3 = common dso_local global i32 0, align 4
@AD7879_REG_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7879*)* @ad7879_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7879_setup(%struct.ad7879* %0) #0 {
  %2 = alloca %struct.ad7879*, align 8
  store %struct.ad7879* %0, %struct.ad7879** %2, align 8
  %3 = load i32, i32* @AD7879_YPLUS_BIT, align 4
  %4 = load i32, i32* @AD7879_XPLUS_BIT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @AD7879_Z2_BIT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @AD7879_Z1_BIT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @AD7879_TEMPMASK_BIT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AD7879_AUXVBATMASK_BIT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AD7879_GPIOALERTMASK_BIT, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %17 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @AD7879_PM_DYN, align 4
  %19 = call i32 @AD7879_PM(i32 %18)
  %20 = load i32, i32* @AD7879_DFR, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %23 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @AD7879_AVG(i32 %24)
  %26 = or i32 %21, %25
  %27 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %28 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @AD7879_MFS(i32 %29)
  %31 = or i32 %26, %30
  %32 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %33 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @AD7879_FCD(i32 %34)
  %36 = or i32 %31, %35
  %37 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %38 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %42 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @AD7879_MODE_INT, align 4
  %44 = load i32, i32* @AD7879_MODE_SEQ1, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %47 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @AD7879_ACQ(i32 %48)
  %50 = or i32 %45, %49
  %51 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %52 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @AD7879_TMR(i32 %53)
  %55 = or i32 %50, %54
  %56 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %57 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %59 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AD7879_REG_CTRL2, align 4
  %62 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %63 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ad7879_write(i32 %60, i32 %61, i32 %64)
  %66 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %67 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AD7879_REG_CTRL3, align 4
  %70 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %71 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ad7879_write(i32 %68, i32 %69, i32 %72)
  %74 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %75 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AD7879_REG_CTRL1, align 4
  %78 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %79 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ad7879_write(i32 %76, i32 %77, i32 %80)
  ret void
}

declare dso_local i32 @AD7879_PM(i32) #1

declare dso_local i32 @AD7879_AVG(i32) #1

declare dso_local i32 @AD7879_MFS(i32) #1

declare dso_local i32 @AD7879_FCD(i32) #1

declare dso_local i32 @AD7879_ACQ(i32) #1

declare dso_local i32 @AD7879_TMR(i32) #1

declare dso_local i32 @ad7879_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
