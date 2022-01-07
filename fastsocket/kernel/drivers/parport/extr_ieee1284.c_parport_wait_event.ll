; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_ieee1284.c_parport_wait_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_ieee1284.c_parport_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.timer_list = type { i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@timeout_waiting_on_port = common dso_local global i32 0, align 4
@port_from_cookie = common dso_local global %struct.parport** null, align 8
@PARPORT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parport_wait_event(%struct.parport* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timer_list, align 8
  store %struct.parport* %0, %struct.parport** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.parport*, %struct.parport** %4, align 8
  %9 = getelementptr inbounds %struct.parport, %struct.parport* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = call i32 @init_timer_on_stack(%struct.timer_list* %7)
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  %22 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* @timeout_waiting_on_port, align 4
  %24 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load %struct.parport*, %struct.parport** %4, align 8
  %26 = load %struct.parport**, %struct.parport*** @port_from_cookie, align 8
  %27 = load %struct.parport*, %struct.parport** %4, align 8
  %28 = getelementptr inbounds %struct.parport, %struct.parport* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PARPORT_MAX, align 8
  %31 = urem i64 %29, %30
  %32 = getelementptr inbounds %struct.parport*, %struct.parport** %26, i64 %31
  store %struct.parport* %25, %struct.parport** %32, align 8
  %33 = load %struct.parport*, %struct.parport** %4, align 8
  %34 = getelementptr inbounds %struct.parport, %struct.parport* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = call i32 @add_timer(%struct.timer_list* %7)
  %38 = load %struct.parport*, %struct.parport** %4, align 8
  %39 = getelementptr inbounds %struct.parport, %struct.parport* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @down_interruptible(i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = call i32 @del_timer_sync(%struct.timer_list* %7)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %17
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %46, %17
  %51 = call i32 @destroy_timer_on_stack(%struct.timer_list* %7)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @init_timer_on_stack(%struct.timer_list*) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @del_timer_sync(%struct.timer_list*) #1

declare dso_local i32 @destroy_timer_on_stack(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
