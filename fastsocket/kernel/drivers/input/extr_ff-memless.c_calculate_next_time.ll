; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-memless.c_calculate_next_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-memless.c_calculate_next_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ml_effect_state = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ff_envelope = type { i64, i64 }

@FF_ENVELOPE_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ml_effect_state*)* @calculate_next_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calculate_next_time(%struct.ml_effect_state* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ml_effect_state*, align 8
  %4 = alloca %struct.ff_envelope*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ml_effect_state* %0, %struct.ml_effect_state** %3, align 8
  %8 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %9 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.ff_envelope* @get_envelope(%struct.TYPE_4__* %10)
  store %struct.ff_envelope* %11, %struct.ff_envelope** %4, align 8
  %12 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %13 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %18 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %21 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @msecs_to_jiffies(i64 %22)
  %24 = add i64 %19, %23
  store i64 %24, i64* %5, align 8
  %25 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %26 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @time_before(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %16
  %32 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %33 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FF_ENVELOPE_INTERVAL, align 8
  %36 = call i64 @msecs_to_jiffies(i64 %35)
  %37 = add i64 %34, %36
  store i64 %37, i64* %2, align 8
  br label %93

38:                                               ; preds = %16
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %41 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %39
  %48 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %49 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %54 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %57 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @msecs_to_jiffies(i64 %58)
  %60 = sub i64 %55, %59
  store i64 %60, i64* %6, align 8
  %61 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %62 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @time_before(i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %2, align 8
  br label %93

69:                                               ; preds = %52
  %70 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %71 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FF_ENVELOPE_INTERVAL, align 8
  %74 = call i64 @msecs_to_jiffies(i64 %73)
  %75 = add i64 %72, %74
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %78 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @time_before(i64 %76, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i64, i64* %7, align 8
  store i64 %83, i64* %2, align 8
  br label %93

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %47
  %86 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %87 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %2, align 8
  br label %93

89:                                               ; preds = %39
  %90 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %91 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %2, align 8
  br label %93

93:                                               ; preds = %89, %85, %82, %67, %31
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

declare dso_local %struct.ff_envelope* @get_envelope(%struct.TYPE_4__*) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
