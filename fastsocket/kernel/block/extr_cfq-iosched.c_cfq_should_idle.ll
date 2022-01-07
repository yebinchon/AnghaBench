; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_should_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_should_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i64, i64, i32 }
%struct.cfq_queue = type { %struct.cfq_rb_root* }
%struct.cfq_rb_root = type { i32 }

@IDLE_WORKLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Not idling. st->count:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfq_data*, %struct.cfq_queue*)* @cfq_should_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_should_idle(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfq_rb_root*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %5, align 8
  %8 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %9 = call i32 @cfqq_prio(%struct.cfq_queue* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %11 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %10, i32 0, i32 0
  %12 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %11, align 8
  store %struct.cfq_rb_root* %12, %struct.cfq_rb_root** %7, align 8
  %13 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %7, align 8
  %14 = icmp ne %struct.cfq_rb_root* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %7, align 8
  %19 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IDLE_WORKLOAD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

29:                                               ; preds = %2
  %30 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %31 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %68

35:                                               ; preds = %29
  %36 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %37 = call i64 @cfq_cfqq_idle_window(%struct.cfq_queue* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %41 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @blk_queue_nonrot(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %47 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %39
  store i32 1, i32* %3, align 4
  br label %68

51:                                               ; preds = %45, %35
  %52 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %7, align 8
  %53 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %58 = call i64 @cfq_cfqq_sync(%struct.cfq_queue* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %68

61:                                               ; preds = %56, %51
  %62 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %63 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %64 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %7, align 8
  %65 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cfq_log_cfqq(%struct.cfq_data* %62, %struct.cfq_queue* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %60, %50, %34, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @cfqq_prio(%struct.cfq_queue*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @cfq_cfqq_idle_window(%struct.cfq_queue*) #1

declare dso_local i64 @blk_queue_nonrot(i32) #1

declare dso_local i64 @cfq_cfqq_sync(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
