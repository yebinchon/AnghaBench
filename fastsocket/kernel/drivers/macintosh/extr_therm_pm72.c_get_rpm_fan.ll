; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_get_rpm_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_get_rpm_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@fcu_fans = common dso_local global %struct.TYPE_2__* null, align 8
@FCU_FAN_RPM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FCU_FAN_ABSENT_ID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@fcu_rpm_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_rpm_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rpm_fan(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fcu_fans, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FCU_FAN_RPM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fcu_fans, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @FCU_FAN_ABSENT_ID, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %99

36:                                               ; preds = %23
  %37 = call i32 @fan_read_reg(i32 11, i8* %6, i32 1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %99

43:                                               ; preds = %36
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %99

53:                                               ; preds = %43
  %54 = call i32 @fan_read_reg(i32 13, i8* %7, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %99

60:                                               ; preds = %53
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 1, %63
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %99

70:                                               ; preds = %60
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 16, i32 17
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 %76, 2
  %78 = add nsw i32 %75, %77
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %80 = call i32 @fan_read_reg(i32 %78, i8* %79, i32 2)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 2
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %99

86:                                               ; preds = %70
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i32, i32* @fcu_rpm_shift, align 4
  %91 = sub nsw i32 8, %90
  %92 = shl i32 %89, %91
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32, i32* @fcu_rpm_shift, align 4
  %97 = ashr i32 %95, %96
  %98 = or i32 %92, %97
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %86, %83, %67, %57, %50, %40, %33, %20
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @fan_read_reg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
