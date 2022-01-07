; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_get_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_get_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_io_context = type { i32 }
%struct.cfq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.io_context = type { i32, i32 }

@__GFP_WAIT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_io_context* (%struct.cfq_data*, i32)* @cfq_get_io_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_io_context* @cfq_get_io_context(%struct.cfq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cfq_io_context*, align 8
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_context*, align 8
  %7 = alloca %struct.cfq_io_context*, align 8
  %8 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.io_context* null, %struct.io_context** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @__GFP_WAIT, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @might_sleep_if(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %15 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.io_context* @get_io_context(i32 %13, i32 %18)
  store %struct.io_context* %19, %struct.io_context** %6, align 8
  %20 = load %struct.io_context*, %struct.io_context** %6, align 8
  %21 = icmp ne %struct.io_context* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.cfq_io_context* null, %struct.cfq_io_context** %3, align 8
  br label %75

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %48, %23
  %25 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %26 = load %struct.io_context*, %struct.io_context** %6, align 8
  %27 = call %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data* %25, %struct.io_context* %26)
  store %struct.cfq_io_context* %27, %struct.cfq_io_context** %7, align 8
  %28 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %29 = icmp ne %struct.cfq_io_context* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %57

31:                                               ; preds = %24
  %32 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.cfq_io_context* @cfq_alloc_io_context(%struct.cfq_data* %32, i32 %33)
  store %struct.cfq_io_context* %34, %struct.cfq_io_context** %7, align 8
  %35 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %36 = icmp eq %struct.cfq_io_context* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %72

38:                                               ; preds = %31
  %39 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %40 = load %struct.io_context*, %struct.io_context** %6, align 8
  %41 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cfq_cic_link(%struct.cfq_data* %39, %struct.io_context* %40, %struct.cfq_io_context* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @EEXIST, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %50 = call i32 @cfq_cic_free(%struct.cfq_io_context* %49)
  br label %24

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %69

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %30
  %58 = call i32 (...) @smp_read_barrier_depends()
  %59 = load %struct.io_context*, %struct.io_context** %6, align 8
  %60 = getelementptr inbounds %struct.io_context, %struct.io_context* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.io_context*, %struct.io_context** %6, align 8
  %66 = call i32 @cfq_ioc_set_ioprio(%struct.io_context* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  store %struct.cfq_io_context* %68, %struct.cfq_io_context** %3, align 8
  br label %75

69:                                               ; preds = %54
  %70 = load %struct.cfq_io_context*, %struct.cfq_io_context** %7, align 8
  %71 = call i32 @cfq_cic_free(%struct.cfq_io_context* %70)
  br label %72

72:                                               ; preds = %69, %37
  %73 = load %struct.io_context*, %struct.io_context** %6, align 8
  %74 = call i32 @put_io_context(%struct.io_context* %73)
  store %struct.cfq_io_context* null, %struct.cfq_io_context** %3, align 8
  br label %75

75:                                               ; preds = %72, %67, %22
  %76 = load %struct.cfq_io_context*, %struct.cfq_io_context** %3, align 8
  ret %struct.cfq_io_context* %76
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local %struct.io_context* @get_io_context(i32, i32) #1

declare dso_local %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data*, %struct.io_context*) #1

declare dso_local %struct.cfq_io_context* @cfq_alloc_io_context(%struct.cfq_data*, i32) #1

declare dso_local i32 @cfq_cic_link(%struct.cfq_data*, %struct.io_context*, %struct.cfq_io_context*, i32) #1

declare dso_local i32 @cfq_cic_free(%struct.cfq_io_context*) #1

declare dso_local i32 @smp_read_barrier_depends(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cfq_ioc_set_ioprio(%struct.io_context*) #1

declare dso_local i32 @put_io_context(%struct.io_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
