; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_agc_soft_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_agc_soft_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@FE_CALLBACK_TIME_NEVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AGC split_offset: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*)* @dib8000_agc_soft_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_agc_soft_split(%struct.dib8000_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  %6 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %7 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %12 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %19 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %10, %1
  %26 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  store i32 %26, i32* %2, align 4
  br label %105

27:                                               ; preds = %17
  %28 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %29 = call i32 @dib8000_read_word(%struct.dib8000_state* %28, i32 390)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %31, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %41 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %5, align 8
  br label %93

46:                                               ; preds = %27
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %49 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %47, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %57 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %5, align 8
  br label %92

62:                                               ; preds = %46
  %63 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %64 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %71 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %69, %75
  %77 = mul nsw i64 %68, %76
  %78 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %79 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %85 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %83, %89
  %91 = sdiv i64 %77, %90
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %62, %55
  br label %93

93:                                               ; preds = %92, %39
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %94)
  %96 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %97 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %98 = call i32 @dib8000_read_word(%struct.dib8000_state* %97, i32 107)
  %99 = and i32 %98, 65280
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %5, align 8
  %102 = or i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @dib8000_write_word(%struct.dib8000_state* %96, i32 107, i32 %103)
  store i32 5000, i32* %2, align 4
  br label %105

105:                                              ; preds = %93, %25
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
