; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_keyup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_keyup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i32, i32, i32, i64, i32 }

@wbcir_lock = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @wbcir_keyup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_keyup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wbcir_data*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.wbcir_data*
  store %struct.wbcir_data* %6, %struct.wbcir_data** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @wbcir_lock, i64 %7)
  %9 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %10 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @time_is_after_eq_jiffies(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %16 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %21 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %23 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LED_OFF, align 4
  %26 = call i32 @led_trigger_event(i32 %24, i32 %25)
  %27 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %28 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %31 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @input_report_key(i32 %29, i32 %32, i32 0)
  %34 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %35 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @input_sync(i32 %36)
  br label %38

38:                                               ; preds = %19, %14, %1
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* @wbcir_lock, i64 %39)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_is_after_eq_jiffies(i32) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
