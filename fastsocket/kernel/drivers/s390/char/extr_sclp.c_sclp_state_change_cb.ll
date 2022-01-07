; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_state_change_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_state_change_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuf_header = type { i32 }
%struct.sclp_statechangebuf = type { i32, i32, i64, i32, i64, i32, i64 }

@sclp_lock = common dso_local global i32 0, align 4
@sclp_receive_mask = common dso_local global i32 0, align 4
@sclp_send_mask = common dso_local global i32 0, align 4
@sclp_facilities = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuf_header*)* @sclp_state_change_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_state_change_cb(%struct.evbuf_header* %0) #0 {
  %2 = alloca %struct.evbuf_header*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sclp_statechangebuf*, align 8
  store %struct.evbuf_header* %0, %struct.evbuf_header** %2, align 8
  %5 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %6 = bitcast %struct.evbuf_header* %5 to %struct.sclp_statechangebuf*
  store %struct.sclp_statechangebuf* %6, %struct.sclp_statechangebuf** %4, align 8
  %7 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %8 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %46

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %14)
  %16 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %17 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %22 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* @sclp_receive_mask, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %26 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %31 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* @sclp_send_mask, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %34)
  %36 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %37 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.sclp_statechangebuf*, %struct.sclp_statechangebuf** %4, align 8
  %42 = getelementptr inbounds %struct.sclp_statechangebuf, %struct.sclp_statechangebuf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @sclp_facilities, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = call i32 (...) @sclp_dispatch_state_change()
  br label %46

46:                                               ; preds = %44, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_dispatch_state_change(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
