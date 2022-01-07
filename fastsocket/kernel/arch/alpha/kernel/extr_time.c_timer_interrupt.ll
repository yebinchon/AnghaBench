; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_time.c_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_time.c_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@CPU_PROFILING = common dso_local global i32 0, align 4
@xtime_lock = common dso_local global i32 0, align 4
@state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FIX_SHIFT = common dso_local global i64 0, align 8
@xtime = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TICK_SIZE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @CPU_PROFILING, align 4
  %10 = call i32 @profile_tick(i32 %9)
  %11 = call i32 @write_seqlock(i32* @xtime_lock)
  %12 = call i8* (...) @rpcc()
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  store i64 %17, i64* %5, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1), align 8
  %21 = mul i64 %19, %20
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 2), align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @FIX_SHIFT, align 8
  %26 = shl i64 1, %25
  %27 = sub i64 %26, 1
  %28 = and i64 %24, %27
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 2), align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @FIX_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @do_timer(i64 %35)
  br label %37

37:                                               ; preds = %34, %2
  %38 = call i64 (...) @ntp_synced()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xtime, i32 0, i32 0), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 3), align 8
  %43 = add nsw i64 %42, 660
  %44 = icmp sgt i64 %41, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xtime, i32 0, i32 1), align 8
  %47 = load i64, i64* @TICK_SIZE, align 8
  %48 = trunc i64 %47 to i32
  %49 = udiv i32 %48, 2
  %50 = sub i32 500000, %49
  %51 = icmp uge i32 %46, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xtime, i32 0, i32 1), align 8
  %54 = load i64, i64* @TICK_SIZE, align 8
  %55 = trunc i64 %54 to i32
  %56 = udiv i32 %55, 2
  %57 = add i32 500000, %56
  %58 = icmp ule i32 %53, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xtime, i32 0, i32 0), align 8
  %61 = call i32 @set_rtc_mmss(i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xtime, i32 0, i32 0), align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 600, i32 0
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %62, %67
  store i64 %68, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 3), align 8
  br label %69

69:                                               ; preds = %59, %52, %45, %40, %37
  %70 = call i32 @write_sequnlock(i32* @xtime_lock)
  br label %71

71:                                               ; preds = %75, %69
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %7, align 8
  %74 = icmp ne i64 %72, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = call i32 (...) @get_irq_regs()
  %77 = call i32 @user_mode(i32 %76)
  %78 = call i32 @update_process_times(i32 %77)
  br label %71

79:                                               ; preds = %71
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %80
}

declare dso_local i32 @profile_tick(i32) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i8* @rpcc(...) #1

declare dso_local i32 @do_timer(i64) #1

declare dso_local i64 @ntp_synced(...) #1

declare dso_local i32 @set_rtc_mmss(i64) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @update_process_times(i32) #1

declare dso_local i32 @user_mode(i32) #1

declare dso_local i32 @get_irq_regs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
