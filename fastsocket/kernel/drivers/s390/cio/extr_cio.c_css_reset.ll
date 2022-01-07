; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_css_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_css_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_id = type { i32 }

@__shutdown_subchannel_easy = common dso_local global i32 0, align 4
@s390_reset_chpids_mcck_handler = common dso_local global i32* null, align 8
@s390_base_mcck_handler_fn = common dso_local global i32* null, align 8
@__MAX_CHPID = common dso_local global i32 0, align 4
@chpid_reset_count = common dso_local global i32 0, align 4
@RCHP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @css_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @css_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.chp_id, align 4
  %5 = load i32, i32* @__shutdown_subchannel_easy, align 4
  %6 = call i32 @for_each_subchannel(i32 %5, i32* null)
  %7 = load i32*, i32** @s390_reset_chpids_mcck_handler, align 8
  store i32* %7, i32** @s390_base_mcck_handler_fn, align 8
  %8 = call i32 @__ctl_set_bit(i32 14, i32 28)
  %9 = call i32 (...) @local_mcck_enable()
  %10 = call i32 @chp_id_init(%struct.chp_id* %4)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %29, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @__MAX_CHPID, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rchp(i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %15
  %27 = call i32 @atomic_inc(i32* @chpid_reset_count)
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %11

32:                                               ; preds = %11
  %33 = call i64 (...) @get_clock()
  %34 = load i32, i32* @RCHP_TIMEOUT, align 4
  %35 = shl i32 %34, 12
  %36 = sext i32 %35 to i64
  %37 = add i64 %33, %36
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %46, %32
  %39 = call i64 @atomic_read(i32* @chpid_reset_count)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = call i64 (...) @get_clock()
  %43 = load i64, i64* %3, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %48

46:                                               ; preds = %41
  %47 = call i32 (...) @cpu_relax()
  br label %38

48:                                               ; preds = %45, %38
  %49 = call i32 (...) @local_mcck_disable()
  %50 = call i32 @__ctl_clear_bit(i32 14, i32 28)
  store i32* null, i32** @s390_base_mcck_handler_fn, align 8
  ret void
}

declare dso_local i32 @for_each_subchannel(i32, i32*) #1

declare dso_local i32 @__ctl_set_bit(i32, i32) #1

declare dso_local i32 @local_mcck_enable(...) #1

declare dso_local i32 @chp_id_init(%struct.chp_id*) #1

declare dso_local i32 @rchp(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @get_clock(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @local_mcck_disable(...) #1

declare dso_local i32 @__ctl_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
