; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_fix_ffdc_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_fix_ffdc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i32, i32, i64 }

@IPS_DAYS_NORMAL_YEAR = common dso_local global i32 0, align 4
@IPS_DAYS_LEAP_YEAR = common dso_local global i32 0, align 4
@__const.ips_fix_ffdc_time.month_lengths = private unnamed_addr constant [12 x [2 x i32]] [[2 x i32] [i32 31, i32 31], [2 x i32] [i32 28, i32 29], [2 x i32] [i32 31, i32 31], [2 x i32] [i32 30, i32 30], [2 x i32] [i32 31, i32 31], [2 x i32] [i32 30, i32 30], [2 x i32] [i32 31, i32 31], [2 x i32] [i32 31, i32 31], [2 x i32] [i32 30, i32 30], [2 x i32] [i32 31, i32 31], [2 x i32] [i32 30, i32 30], [2 x i32] [i32 31, i32 31]], align 16
@.str = private unnamed_addr constant [18 x i8] c"ips_fix_ffdc_time\00", align 1
@IPS_SECS_DAY = common dso_local global i64 0, align 8
@IPS_SECS_HOUR = common dso_local global i64 0, align 8
@IPS_SECS_MIN = common dso_local global i64 0, align 8
@IPS_EPOCH_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i64)* @ips_fix_ffdc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_fix_ffdc_time(i32* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [12 x [2 x i32]], align 16
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %16 = load i32, i32* @IPS_DAYS_NORMAL_YEAR, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @IPS_DAYS_LEAP_YEAR, align 4
  store i32 %18, i32* %17, align 4
  %19 = bitcast [12 x [2 x i32]]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([12 x [2 x i32]]* @__const.ips_fix_ffdc_time.month_lengths to i8*), i64 96, i1 false)
  %20 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 1)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @IPS_SECS_DAY, align 8
  %23 = sdiv i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @IPS_SECS_DAY, align 8
  %26 = srem i64 %24, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @IPS_SECS_HOUR, align 8
  %29 = sdiv i64 %27, %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i64 %29, i64* %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @IPS_SECS_HOUR, align 8
  %36 = srem i64 %34, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @IPS_SECS_MIN, align 8
  %39 = sdiv i64 %37, %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i64 %39, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @IPS_SECS_MIN, align 8
  %46 = srem i64 %44, %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i64 %46, i64* %50, align 8
  %51 = load i32, i32* @IPS_EPOCH_YEAR, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %80, %3
  %53 = load i64, i64* %7, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @IPS_IS_LEAP_YEAR(i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp sge i64 %56, %62
  br label %64

64:                                               ; preds = %55, %52
  %65 = phi i1 [ true, %52 ], [ %63, %55 ]
  br i1 %65, label %66, label %98

66:                                               ; preds = %64
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* @IPS_DAYS_NORMAL_YEAR, align 4
  %71 = sext i32 %70 to i64
  %72 = sdiv i64 %69, %71
  %73 = add nsw i64 %68, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = load i64, i64* %7, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %66
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* @IPS_DAYS_NORMAL_YEAR, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i64 @IPS_NUM_LEAP_YEARS_THROUGH(i32 %88)
  %90 = add nsw i64 %86, %89
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i64 @IPS_NUM_LEAP_YEARS_THROUGH(i32 %92)
  %94 = sub nsw i64 %90, %93
  %95 = load i64, i64* %7, align 8
  %96 = sub nsw i64 %95, %94
  store i64 %96, i64* %7, align 8
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %10, align 4
  br label %52

98:                                               ; preds = %64
  %99 = load i32, i32* %10, align 4
  %100 = sdiv i32 %99, 100
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = srem i32 %105, 100
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  store i32 %106, i32* %110, align 4
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %133, %98
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [12 x [2 x i32]], [12 x [2 x i32]]* %13, i64 0, i64 %114
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %115, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp sge i64 %112, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %111
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [12 x [2 x i32]], [12 x [2 x i32]]* %13, i64 0, i64 %124
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %125, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %7, align 8
  %132 = sub nsw i64 %131, %130
  store i64 %132, i64* %7, align 8
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %111

136:                                              ; preds = %111
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 5
  store i32 %138, i32* %142, align 8
  %143 = load i64, i64* %7, align 8
  %144 = add nsw i64 %143, 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 6
  store i64 %144, i64* %148, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @METHOD_TRACE(i8*, i32) #2

declare dso_local i32 @IPS_IS_LEAP_YEAR(i32) #2

declare dso_local i64 @IPS_NUM_LEAP_YEARS_THROUGH(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
