; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_read_cycle_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_read_cycle_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hpsb_host*, i32, i32)* }
%struct.timeval = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GET_CYCLE_COUNTER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_read_cycle_timer(%struct.hpsb_host* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpsb_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i64, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %12 = icmp ne %struct.hpsb_host* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64*, i64** %7, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %16
  %23 = call i32 (...) @preempt_disable()
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @local_irq_save(i64 %24)
  %26 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %27 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.hpsb_host*, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32)** %29, align 8
  %31 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %32 = load i32, i32* @GET_CYCLE_COUNTER, align 4
  %33 = call i32 %30(%struct.hpsb_host* %31, i32 %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = call i32 @do_gettimeofday(%struct.timeval* %9)
  br label %38

38:                                               ; preds = %36, %22
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @local_irq_restore(i64 %39)
  %41 = call i32 (...) @preempt_enable()
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %57

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %51, 1000000
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %52, %54
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %47, %44, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
