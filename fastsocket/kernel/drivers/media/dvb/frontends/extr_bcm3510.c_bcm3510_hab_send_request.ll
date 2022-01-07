; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_hab_send_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_hab_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm3510_state = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"HAB is running already - clearing it.\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"waiting for HAB to complete\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"send_request execution timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm3510_state*, i32*, i32)* @bcm3510_hab_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_hab_send_request(%struct.bcm3510_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm3510_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %14 = call i32 @bcm3510_readB(%struct.bcm3510_state* %13, i32 168, %struct.TYPE_8__* %8)
  store i32 %14, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %99

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = call i32 @deb_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %28 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %27, i32 168, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %8)
  br label %29

29:                                               ; preds = %23, %18
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %33 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %32, i32 166, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %9)
  store i32 %33, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %99

37:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %50 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %49, i32 167, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %9)
  store i32 %50, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %99

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %38

58:                                               ; preds = %38
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %65 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %64, i32 168, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %8)
  store i32 %65, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %99

69:                                               ; preds = %58
  %70 = load i32, i32* @jiffies, align 4
  %71 = load i32, i32* @HZ, align 4
  %72 = mul nsw i32 1, %71
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %94, %69
  %76 = load i32, i32* @jiffies, align 4
  %77 = load i64, i64* %12, align 8
  %78 = call i64 @time_before(i32 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = call i32 @deb_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @msleep(i32 10)
  %83 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %84 = call i32 @bcm3510_readB(%struct.bcm3510_state* %83, i32 168, %struct.TYPE_8__* %8)
  store i32 %84, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %99

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %99

94:                                               ; preds = %88
  br label %75

95:                                               ; preds = %75
  %96 = call i32 @deb_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %93, %86, %67, %52, %35, %16
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @bcm3510_readB(%struct.bcm3510_state*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i32 @bcm3510_writeB(%struct.bcm3510_state*, i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
