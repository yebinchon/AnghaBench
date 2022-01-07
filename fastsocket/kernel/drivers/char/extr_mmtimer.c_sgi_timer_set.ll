; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mmtimer.c_sgi_timer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mmtimer.c_sgi_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.rb_node* }
%struct.rb_node = type { i32 }
%struct.k_itimer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i32 }
%struct.mmtimer = type { i32, %struct.k_itimer* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TIMER_ABSTIME = common dso_local global i32 0, align 4
@sgi_clock_period = common dso_local global i64 0, align 8
@timers = common dso_local global %struct.TYPE_6__* null, align 8
@TIMER_SET = common dso_local global i32 0, align 4
@COMPARATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.k_itimer*, i32, %struct.itimerspec*, %struct.itimerspec*)* @sgi_timer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgi_timer_set(%struct.k_itimer* %0, i32 %1, %struct.itimerspec* %2, %struct.itimerspec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.k_itimer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.itimerspec*, align 8
  %9 = alloca %struct.itimerspec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.mmtimer*, align 8
  %16 = alloca %struct.rb_node*, align 8
  %17 = alloca %struct.timespec, align 4
  %18 = alloca i64, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.itimerspec* %2, %struct.itimerspec** %8, align 8
  store %struct.itimerspec* %3, %struct.itimerspec** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %20 = icmp ne %struct.itimerspec* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %23 = load %struct.itimerspec*, %struct.itimerspec** %9, align 8
  %24 = call i32 @sgi_timer_get(%struct.k_itimer* %22, %struct.itimerspec* %23)
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %27 = call i32 @sgi_timer_del(%struct.k_itimer* %26)
  %28 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %29 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %28, i32 0, i32 1
  %30 = call i64 @timespec_to_ns(%struct.timespec* %29)
  store i64 %30, i64* %10, align 8
  %31 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %32 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %31, i32 0, i32 0
  %33 = call i64 @timespec_to_ns(%struct.timespec* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %154

37:                                               ; preds = %25
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mmtimer* @kmalloc(i32 16, i32 %38)
  store %struct.mmtimer* %39, %struct.mmtimer** %15, align 8
  %40 = load %struct.mmtimer*, %struct.mmtimer** %15, align 8
  %41 = icmp eq %struct.mmtimer* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %154

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TIMER_ABSTIME, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = call i32 @getnstimeofday(%struct.timespec* %17)
  %52 = call i64 @timespec_to_ns(%struct.timespec* %17)
  store i64 %52, i64* %18, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %18, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* %10, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %10, align 8
  br label %61

60:                                               ; preds = %50
  store i64 0, i64* %10, align 8
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @sgi_clock_period, align 8
  %65 = add i64 %63, %64
  %66 = sub i64 %65, 1
  %67 = load i64, i64* @sgi_clock_period, align 8
  %68 = udiv i64 %66, %67
  %69 = call i64 (...) @rtc_time()
  %70 = add i64 %68, %69
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @sgi_clock_period, align 8
  %73 = add i64 %71, %72
  %74 = sub i64 %73, 1
  %75 = load i64, i64* @sgi_clock_period, align 8
  %76 = udiv i64 %74, %75
  store i64 %76, i64* %11, align 8
  %77 = call i32 (...) @preempt_disable()
  %78 = call i32 (...) @smp_processor_id()
  %79 = call i64 @cpu_to_node(i32 %78)
  store i64 %79, i64* %14, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @timers, align 8
  %81 = load i64, i64* %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %87 = load %struct.mmtimer*, %struct.mmtimer** %15, align 8
  %88 = getelementptr inbounds %struct.mmtimer, %struct.mmtimer* %87, i32 0, i32 1
  store %struct.k_itimer* %86, %struct.k_itimer** %88, align 8
  %89 = call i32 (...) @smp_processor_id()
  %90 = load %struct.mmtimer*, %struct.mmtimer** %15, align 8
  %91 = getelementptr inbounds %struct.mmtimer, %struct.mmtimer* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @TIMER_SET, align 4
  %93 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %94 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32 %92, i32* %96, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %99 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i64 %97, i64* %101, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %104 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i64 %102, i64* %106, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %109 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i64 %107, i64* %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @timers, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.rb_node*, %struct.rb_node** %115, align 8
  store %struct.rb_node* %116, %struct.rb_node** %16, align 8
  %117 = load %struct.mmtimer*, %struct.mmtimer** %15, align 8
  %118 = call i32 @mmtimer_add_list(%struct.mmtimer* %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @timers, align 8
  %120 = load i64, i64* %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.rb_node*, %struct.rb_node** %122, align 8
  %124 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  %125 = icmp eq %struct.rb_node* %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %62
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @timers, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = call i32 (...) @preempt_enable()
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %5, align 4
  br label %154

135:                                              ; preds = %62
  %136 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  %137 = icmp ne %struct.rb_node* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @cnodeid_to_nasid(i64 %139)
  %141 = load i32, i32* @COMPARATOR, align 4
  %142 = call i32 @mmtimer_disable_int(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %135
  %144 = load i64, i64* %14, align 8
  %145 = call i32 @mmtimer_set_next_timer(i64 %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @timers, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = call i32 (...) @preempt_enable()
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %143, %126, %42, %36
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @sgi_timer_get(%struct.k_itimer*, %struct.itimerspec*) #1

declare dso_local i32 @sgi_timer_del(%struct.k_itimer*) #1

declare dso_local i64 @timespec_to_ns(%struct.timespec*) #1

declare dso_local %struct.mmtimer* @kmalloc(i32, i32) #1

declare dso_local i32 @getnstimeofday(%struct.timespec*) #1

declare dso_local i64 @rtc_time(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @cpu_to_node(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmtimer_add_list(%struct.mmtimer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @mmtimer_disable_int(i32, i32) #1

declare dso_local i32 @cnodeid_to_nasid(i64) #1

declare dso_local i32 @mmtimer_set_next_timer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
