; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_check_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_check_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @sh_rtc_check_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_check_alarm(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  %4 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %5 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 65535
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 255
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 1
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 255
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 2
  store i32 -1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 255
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 3
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 255
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 4
  store i32 -1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 255
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 5
  store i32 -1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 255
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 6
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 9999
  br i1 %63, label %99, label %64

64:                                               ; preds = %59
  %65 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 12
  br i1 %68, label %99, label %69

69:                                               ; preds = %64
  %70 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %69
  %75 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %77, 32
  br i1 %78, label %99, label %79

79:                                               ; preds = %74
  %80 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 7
  br i1 %83, label %99, label %84

84:                                               ; preds = %79
  %85 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %87, 24
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 60
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %97, 60
  br i1 %98, label %99, label %102

99:                                               ; preds = %94, %89, %84, %79, %74, %69, %64, %59
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %103

102:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
