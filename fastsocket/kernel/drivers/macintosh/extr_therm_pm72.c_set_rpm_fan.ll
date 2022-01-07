; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_set_rpm_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_set_rpm_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@fcu_fans = common dso_local global %struct.TYPE_2__* null, align 8
@FCU_FAN_RPM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FCU_FAN_ABSENT_ID = common dso_local global i32 0, align 4
@fcu_rpm_shift = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @set_rpm_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rpm_fan(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fcu_fans, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FCU_FAN_RPM, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fcu_fans, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @FCU_FAN_ABSENT_ID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %75

35:                                               ; preds = %22
  %36 = load i32, i32* @fcu_rpm_shift, align 4
  %37 = ashr i32 2400, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @fcu_rpm_shift, align 4
  %39 = ashr i32 56000, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %5, align 4
  br label %52

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @fcu_rpm_shift, align 4
  %55 = sub nsw i32 8, %54
  %56 = ashr i32 %53, %55
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %57, i8* %58, align 1
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @fcu_rpm_shift, align 4
  %61 = shl i32 %59, %60
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %62, i8* %63, align 1
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 16, %65
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %68 = call i32 @fan_write_reg(i32 %66, i8* %67, i32 2)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %71, %32, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @fan_write_reg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
