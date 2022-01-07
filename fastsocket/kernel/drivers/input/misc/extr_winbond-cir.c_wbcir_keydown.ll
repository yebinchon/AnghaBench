; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_keydown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_keydown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i64, i64, i32, i32, i64, i32, i32, i32 }

@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IR_KEYPRESS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbcir_data*, i64, i64)* @wbcir_keydown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_keydown(%struct.wbcir_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.wbcir_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.wbcir_data* %0, %struct.wbcir_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %9 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %15 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %21 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %77

25:                                               ; preds = %19, %13, %3
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %28 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %30 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %35 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %38 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @input_report_key(i32 %36, i32 %39, i32 0)
  %41 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %42 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @input_sync(i32 %43)
  %45 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %46 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %33, %25
  %48 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %49 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @EV_MSC, align 4
  %52 = load i32, i32* @MSC_SCAN, align 4
  %53 = load i64, i64* %5, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @input_event(i32 %50, i32 %51, i32 %52, i32 %54)
  %56 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @wbcir_do_getkeycode(%struct.wbcir_data* %56, i64 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @KEY_RESERVED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %77

63:                                               ; preds = %47
  %64 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %65 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @input_report_key(i32 %66, i32 %67, i32 1)
  %69 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %70 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %73 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %76 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %63, %62, %24
  %78 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %79 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @input_sync(i32 %80)
  %82 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %83 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %86 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* @LED_FULL, align 4
  br label %93

91:                                               ; preds = %77
  %92 = load i32, i32* @LED_OFF, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @led_trigger_event(i32 %84, i32 %94)
  %96 = load i64, i64* @jiffies, align 8
  %97 = load i32, i32* @IR_KEYPRESS_TIMEOUT, align 4
  %98 = call i64 @msecs_to_jiffies(i32 %97)
  %99 = add nsw i64 %96, %98
  %100 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %101 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  %102 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %103 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %102, i32 0, i32 5
  %104 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %105 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @mod_timer(i32* %103, i64 %106)
  ret void
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @wbcir_do_getkeycode(%struct.wbcir_data*, i64) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
