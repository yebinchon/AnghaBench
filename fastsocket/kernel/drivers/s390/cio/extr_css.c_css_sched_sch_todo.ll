; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_sched_sch_todo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_sched_sch_todo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"sch_todo: sched sch=0.%x.%04x todo=%d\0A\00", align 1
@cio_work_q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @css_sched_sch_todo(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %6 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @CIO_MSG_EVENT(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12, i32 %13)
  %15 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %16 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 1
  %24 = call i32 @get_device(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %40

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %30 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @cio_work_q, align 4
  %32 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %33 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %32, i32 0, i32 2
  %34 = call i32 @queue_work(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %38 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %37, i32 0, i32 1
  %39 = call i32 @put_device(i32* %38)
  br label %40

40:                                               ; preds = %20, %26, %36, %27
  ret void
}

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
