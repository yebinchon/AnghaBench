; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_next_mca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_next_mca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_msg = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_msg*)* @mon_next_mca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_next_mca(%struct.mon_msg* %0) #0 {
  %2 = alloca %struct.mon_msg*, align 8
  store %struct.mon_msg* %0, %struct.mon_msg** %2, align 8
  %3 = load %struct.mon_msg*, %struct.mon_msg** %2, align 8
  %4 = call i32 @mon_mca_size(%struct.mon_msg* %3)
  %5 = load %struct.mon_msg*, %struct.mon_msg** %2, align 8
  %6 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %4, %7
  %9 = icmp eq i32 %8, 12
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.mon_msg*, %struct.mon_msg** %2, align 8
  %16 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 12
  store i32 %18, i32* %16, align 8
  %19 = load %struct.mon_msg*, %struct.mon_msg** %2, align 8
  %20 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mon_mca_size(%struct.mon_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
