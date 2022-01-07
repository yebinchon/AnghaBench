; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_do_association_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_do_association_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*)* @lbs_do_association_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_do_association_work(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %3 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %4 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 0
  %11 = call i32 @cancel_delayed_work(i32* %10)
  %12 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 0
  %17 = call i32 @queue_delayed_work(i32 %14, i32* %16, i32 0)
  br label %18

18:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
