; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm3510_state = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"reset timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm3510_state*)* @bcm3510_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_reset(%struct.bcm3510_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm3510_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %3, align 8
  %7 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %8 = call i32 @bcm3510_readB(%struct.bcm3510_state* %7, i32 160, %struct.TYPE_8__* %6)
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %12 = bitcast %struct.TYPE_8__* %6 to { i64, i32 }*
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %11, i32 160, i64 %14, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load i32, i32* @jiffies, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 3, %23
  %25 = add nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %45, %21
  %28 = load i32, i32* @jiffies, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @time_before(i32 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = call i32 @msleep(i32 10)
  %34 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %35 = call i32 @bcm3510_readB(%struct.bcm3510_state* %34, i32 162, %struct.TYPE_8__* %6)
  store i32 %35, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %50

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %50

45:                                               ; preds = %39
  br label %27

46:                                               ; preds = %27
  %47 = call i32 @deb_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %44, %37, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @bcm3510_readB(%struct.bcm3510_state*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @bcm3510_writeB(%struct.bcm3510_state*, i32, i64, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @deb_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
