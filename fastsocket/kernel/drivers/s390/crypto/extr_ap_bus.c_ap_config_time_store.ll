; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_config_time_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_config_time_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.bus_type = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ap_config_time = common dso_local global i32 0, align 4
@ap_config_timer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bus_type*, i8*, i64)* @ap_config_time_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ap_config_time_store(%struct.bus_type* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 120
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %12, %3
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %44

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* @ap_config_time, align 4
  %23 = call i32 @timer_pending(%struct.TYPE_5__* @ap_config_timer)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* @ap_config_time, align 4
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %26, %30
  %32 = call i32 @mod_timer(%struct.TYPE_5__* @ap_config_timer, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %25, %21
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i32, i32* @ap_config_time, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ap_config_timer, i32 0, i32 0), align 8
  %41 = call i32 @add_timer(%struct.TYPE_5__* @ap_config_timer)
  br label %42

42:                                               ; preds = %34, %25
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %42, %18
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
