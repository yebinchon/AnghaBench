; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_slice_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_slice_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { %struct.TYPE_5__*, %struct.TYPE_4__, %struct.cfq_queue* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.cfq_queue = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"slice expired t=%d\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"resid=%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*, i32)* @__cfq_slice_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cfq_slice_expired(%struct.cfq_data* %0, %struct.cfq_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %8 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @cfq_log_cfqq(%struct.cfq_data* %7, %struct.cfq_queue* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %12 = call i64 @cfq_cfqq_wait_request(%struct.cfq_queue* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %16 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %17 = call i32 @cfq_del_timer(%struct.cfq_data* %15, %struct.cfq_queue* %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %20 = call i32 @cfq_clear_cfqq_wait_request(%struct.cfq_queue* %19)
  %21 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %22 = call i32 @cfq_clear_cfqq_wait_busy(%struct.cfq_queue* %21)
  %23 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %24 = call i64 @cfq_cfqq_coop(%struct.cfq_queue* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %28 = call i64 @CFQQ_SEEKY(%struct.cfq_queue* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %32 = call i32 @cfq_mark_cfqq_split_coop(%struct.cfq_queue* %31)
  br label %33

33:                                               ; preds = %30, %26, %18
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %38 = call i32 @cfq_cfqq_slice_new(%struct.cfq_queue* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %42 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @jiffies, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %47 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %49 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %50 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %51 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @cfq_log_cfqq(%struct.cfq_data* %48, %struct.cfq_queue* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %40, %36, %33
  %55 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %56 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %57 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %60 = call i32 @cfq_group_served(%struct.cfq_data* %55, %struct.TYPE_6__* %58, %struct.cfq_queue* %59)
  %61 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %62 = call i64 @cfq_cfqq_on_rr(%struct.cfq_queue* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %54
  %65 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %66 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %65, i32 0, i32 3
  %67 = call i64 @RB_EMPTY_ROOT(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %71 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %72 = call i32 @cfq_del_cfqq_rr(%struct.cfq_data* %70, %struct.cfq_queue* %71)
  br label %73

73:                                               ; preds = %69, %64, %54
  %74 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %75 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %76 = call i32 @cfq_resort_rr_list(%struct.cfq_data* %74, %struct.cfq_queue* %75)
  %77 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %78 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %79 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %78, i32 0, i32 2
  %80 = load %struct.cfq_queue*, %struct.cfq_queue** %79, align 8
  %81 = icmp eq %struct.cfq_queue* %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %84 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %83, i32 0, i32 2
  store %struct.cfq_queue* null, %struct.cfq_queue** %84, align 8
  br label %85

85:                                               ; preds = %82, %73
  %86 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %87 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %91 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %89, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %97 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %95, %85
  %100 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %101 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = icmp ne %struct.TYPE_5__* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %106 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @put_io_context(i32 %109)
  %111 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %112 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %111, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %112, align 8
  br label %113

113:                                              ; preds = %104, %99
  ret void
}

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*, i32) #1

declare dso_local i64 @cfq_cfqq_wait_request(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_del_timer(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_wait_request(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_wait_busy(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_cfqq_coop(%struct.cfq_queue*) #1

declare dso_local i64 @CFQQ_SEEKY(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_mark_cfqq_split_coop(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_cfqq_slice_new(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_group_served(%struct.cfq_data*, %struct.TYPE_6__*, %struct.cfq_queue*) #1

declare dso_local i64 @cfq_cfqq_on_rr(%struct.cfq_queue*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @cfq_del_cfqq_rr(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @cfq_resort_rr_list(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @put_io_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
