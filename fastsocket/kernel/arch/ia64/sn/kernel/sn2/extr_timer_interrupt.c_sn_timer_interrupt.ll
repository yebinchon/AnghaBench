; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_timer_interrupt.c_sn_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_timer_interrupt.c_sn_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i64, i32 }

@pda = common dso_local global %struct.TYPE_2__* null, align 8
@HZ = common dso_local global i32 0, align 4
@LED_CPU_HEARTBEAT = common dso_local global i32 0, align 4
@SN_LB_INT_WAR_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sn_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %6, align 8
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @HZ, align 4
  %12 = sdiv i32 %11, 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @LED_CPU_HEARTBEAT, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = xor i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @LED_CPU_HEARTBEAT, align 4
  %21 = call i32 @set_led_bits(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %10, %2
  %23 = call i64 (...) @is_shub1()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  %26 = call i64 (...) @enable_shub_wars_1_1()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32 16, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @sn_lb_int_war_check()
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SN_LB_INT_WAR_INTERVAL, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %45
  br label %59

59:                                               ; preds = %58, %22
  ret void
}

declare dso_local i32 @set_led_bits(i32, i32) #1

declare dso_local i64 @is_shub1(...) #1

declare dso_local i64 @enable_shub_wars_1_1(...) #1

declare dso_local i32 @sn_lb_int_war_check(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
