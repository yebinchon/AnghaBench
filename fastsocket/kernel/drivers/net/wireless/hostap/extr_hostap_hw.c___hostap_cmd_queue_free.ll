; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_hw.c___hostap_cmd_queue_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_hw.c___hostap_cmd_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.hostap_cmd_queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.hostap_cmd_queue*, i32)* @__hostap_cmd_queue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hostap_cmd_queue_free(%struct.TYPE_3__* %0, %struct.hostap_cmd_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.hostap_cmd_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.hostap_cmd_queue* %1, %struct.hostap_cmd_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load %struct.hostap_cmd_queue*, %struct.hostap_cmd_queue** %5, align 8
  %11 = getelementptr inbounds %struct.hostap_cmd_queue, %struct.hostap_cmd_queue* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.hostap_cmd_queue*, %struct.hostap_cmd_queue** %5, align 8
  %13 = getelementptr inbounds %struct.hostap_cmd_queue, %struct.hostap_cmd_queue* %12, i32 0, i32 2
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = load %struct.hostap_cmd_queue*, %struct.hostap_cmd_queue** %5, align 8
  %18 = getelementptr inbounds %struct.hostap_cmd_queue, %struct.hostap_cmd_queue* %17, i32 0, i32 2
  %19 = call i32 @list_del_init(i32* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %16, %9
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.hostap_cmd_queue*, %struct.hostap_cmd_queue** %5, align 8
  %27 = getelementptr inbounds %struct.hostap_cmd_queue, %struct.hostap_cmd_queue* %26, i32 0, i32 1
  %28 = call i64 @atomic_dec_and_test(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.hostap_cmd_queue*, %struct.hostap_cmd_queue** %5, align 8
  %32 = getelementptr inbounds %struct.hostap_cmd_queue, %struct.hostap_cmd_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.hostap_cmd_queue*, %struct.hostap_cmd_queue** %5, align 8
  %37 = call i32 @kfree(%struct.hostap_cmd_queue* %36)
  br label %38

38:                                               ; preds = %35, %30, %25
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kfree(%struct.hostap_cmd_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
