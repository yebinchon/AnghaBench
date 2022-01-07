; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_event_deregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_event_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPT_MAX_PROTOCOL_DRIVERS = common dso_local global i64 0, align 8
@MptEvHandlers = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt_event_deregister(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @MPT_MAX_PROTOCOL_DRIVERS, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  br label %14

10:                                               ; preds = %5
  %11 = load i32**, i32*** @MptEvHandlers, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
