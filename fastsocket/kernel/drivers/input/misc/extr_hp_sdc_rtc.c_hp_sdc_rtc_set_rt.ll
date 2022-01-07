; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_set_rt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_set_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }

@HP_SDC_ACT_PRECMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAOUT = common dso_local global i32 0, align 4
@HP_SDC_CMD_SET_RTMS = common dso_local global i32 0, align 4
@HP_SDC_CMD_SET_RTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*)* @hp_sdc_rtc_set_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_rtc_set_rt(%struct.timeval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca [11 x i32], align 16
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* @HP_SDC_ACT_PRECMD, align 4
  %10 = load i32, i32* @HP_SDC_ACT_DATAOUT, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds i32, i32* %8, i64 1
  %13 = load i32, i32* @HP_SDC_CMD_SET_RTMS, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 3, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* @HP_SDC_ACT_PRECMD, align 4
  %20 = load i32, i32* @HP_SDC_ACT_DATAOUT, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds i32, i32* %18, i64 1
  %23 = load i32, i32* @HP_SDC_CMD_SET_RTD, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 2, i32* %24, align 4
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 10, i32* %27, align 8
  %28 = load %struct.timeval*, %struct.timeval** %3, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 86400
  %32 = icmp slt i32 65535, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %114

34:                                               ; preds = %1
  %35 = load %struct.timeval*, %struct.timeval** %3, align 8
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 86400
  store i32 %38, i32* %5, align 4
  %39 = load %struct.timeval*, %struct.timeval** %3, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 1000000
  %43 = sdiv i32 %42, 86400
  %44 = icmp slt i32 65535, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %114

46:                                               ; preds = %34
  %47 = load %struct.timeval*, %struct.timeval** %3, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = srem i32 %49, 86400
  %51 = load %struct.timeval*, %struct.timeval** %3, align 8
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 1000000
  %55 = add nsw i32 %50, %54
  %56 = sdiv i32 %55, 86400
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ugt i32 %59, 65535
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %114

62:                                               ; preds = %46
  %63 = load %struct.timeval*, %struct.timeval** %3, align 8
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 16777215, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %114

68:                                               ; preds = %62
  %69 = load %struct.timeval*, %struct.timeval** %3, align 8
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 100
  store i32 %72, i32* %4, align 4
  %73 = load %struct.timeval*, %struct.timeval** %3, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 10000
  %77 = icmp slt i32 16777215, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 -1, i32* %2, align 4
  br label %114

79:                                               ; preds = %68
  %80 = load %struct.timeval*, %struct.timeval** %3, align 8
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 10000
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp sgt i32 %86, 16777215
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 -1, i32* %2, align 4
  br label %114

89:                                               ; preds = %79
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 255
  %92 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %4, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 4
  store i32 %95, i32* %96, align 16
  %97 = load i32, i32* %4, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 5
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, 255
  %103 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 9
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  %105 = lshr i32 %104, 8
  %106 = and i32 %105, 255
  %107 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 10
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32* %108, i32** %109, align 8
  %110 = call i64 @hp_sdc_enqueue_transaction(%struct.TYPE_3__* %6)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %89
  store i32 -1, i32* %2, align 4
  br label %114

113:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %112, %88, %78, %67, %61, %45, %33
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @hp_sdc_enqueue_transaction(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
