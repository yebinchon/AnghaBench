; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_sysfs.c_stats_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_sysfs.c_stats_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ctcm_priv = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @stats_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stats_write(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ctcm_priv*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.ctcm_priv* @dev_get_drvdata(%struct.device* %11)
  store %struct.ctcm_priv* %12, %struct.ctcm_priv** %10, align 8
  %13 = load %struct.ctcm_priv*, %struct.ctcm_priv** %10, align 8
  %14 = icmp ne %struct.ctcm_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @ENODEV, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %28

18:                                               ; preds = %4
  %19 = load %struct.ctcm_priv*, %struct.ctcm_priv** %10, align 8
  %20 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i64, i64* @WRITE, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %18, %15
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
