; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d.c_lis3lv02d_poweron.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lis3lv02d.c_lis3lv02d_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i64, i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32*)*, i32 (%struct.lis3lv02d*)* }

@LIS_DOUBLE_ID = common dso_local global i64 0, align 8
@CTRL_REG2 = common dso_local global i32 0, align 4
@CTRL2_BDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lis3lv02d_poweron(%struct.lis3lv02d* %0) #0 {
  %2 = alloca %struct.lis3lv02d*, align 8
  %3 = alloca i32, align 4
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %2, align 8
  %4 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %5 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %4, i32 0, i32 3
  %6 = load i32 (%struct.lis3lv02d*)*, i32 (%struct.lis3lv02d*)** %5, align 8
  %7 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %8 = call i32 %6(%struct.lis3lv02d* %7)
  %9 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %10 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LIS_DOUBLE_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %16 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %15, i32 0, i32 2
  %17 = load i32 (%struct.lis3lv02d*, i32, i32*)*, i32 (%struct.lis3lv02d*, i32, i32*)** %16, align 8
  %18 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %19 = load i32, i32* @CTRL_REG2, align 4
  %20 = call i32 %17(%struct.lis3lv02d* %18, i32 %19, i32* %3)
  %21 = load i32, i32* @CTRL2_BDU, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %25 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %24, i32 0, i32 1
  %26 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %25, align 8
  %27 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %28 = load i32, i32* @CTRL_REG2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 %26(%struct.lis3lv02d* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %14, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
