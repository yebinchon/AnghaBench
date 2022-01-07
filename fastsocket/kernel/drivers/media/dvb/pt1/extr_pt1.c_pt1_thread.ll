; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pt1_buffer_page* }
%struct.pt1_buffer_page = type { i32 }

@HZ = common dso_local global i32 0, align 4
@PT1_NR_BUFS = common dso_local global i32 0, align 4
@pt1_nr_tables = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pt1_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt1_buffer_page*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.pt1*
  store %struct.pt1* %8, %struct.pt1** %3, align 8
  %9 = call i32 (...) @set_freezable()
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %52, %33, %1
  %11 = call i32 (...) @kthread_should_stop()
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = call i32 (...) @try_to_freeze()
  %16 = load %struct.pt1*, %struct.pt1** %3, align 8
  %17 = getelementptr inbounds %struct.pt1, %struct.pt1* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %27, align 8
  store %struct.pt1_buffer_page* %28, %struct.pt1_buffer_page** %6, align 8
  %29 = load %struct.pt1*, %struct.pt1** %3, align 8
  %30 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %6, align 8
  %31 = call i32 @pt1_filter(%struct.pt1* %29, %struct.pt1_buffer_page* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %14
  %34 = load i32, i32* @HZ, align 4
  %35 = add nsw i32 %34, 999
  %36 = sdiv i32 %35, 1000
  %37 = call i32 @schedule_timeout_interruptible(i32 %36)
  br label %10

38:                                               ; preds = %14
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @PT1_NR_BUFS, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.pt1*, %struct.pt1** %3, align 8
  %45 = call i32 @pt1_increment_table_count(%struct.pt1* %44)
  store i32 0, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @pt1_nr_tables, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %43
  br label %52

52:                                               ; preds = %51, %38
  br label %10

53:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @pt1_filter(%struct.pt1*, %struct.pt1_buffer_page*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @pt1_increment_table_count(%struct.pt1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
