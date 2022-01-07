; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_clear_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_clear_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm3510_state = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reset clear timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm3510_state*)* @bcm3510_clear_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_clear_reset(%struct.bcm3510_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm3510_state*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %9 = bitcast %struct.TYPE_6__* %4 to { i32, i64 }*
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %8, i32 160, i32 %11, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load i32, i32* @jiffies, align 4
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 3, %20
  %22 = add nsw i32 %19, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %42, %18
  %25 = load i32, i32* @jiffies, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @time_before(i32 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = call i32 @msleep(i32 10)
  %31 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %32 = call i32 @bcm3510_readB(%struct.bcm3510_state* %31, i32 162, %struct.TYPE_6__* %4)
  store i32 %32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %47

42:                                               ; preds = %36
  br label %24

43:                                               ; preds = %24
  %44 = call i32 @deb_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %41, %34, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @bcm3510_writeB(%struct.bcm3510_state*, i32, i32, i64) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bcm3510_readB(%struct.bcm3510_state*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @deb_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
