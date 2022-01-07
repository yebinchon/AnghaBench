; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_irda-usb.c_get_turnaround_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_irda-usb.c_get_turnaround_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @get_turnaround_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_turnaround_time(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call i32 @irda_get_mtt(%struct.sk_buff* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 10
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %35

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 50
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 2, i32* %2, align 4
  br label %35

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 100
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 3, i32* %2, align 4
  br label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %23, 500
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 4, i32* %2, align 4
  br label %35

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 1000
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 5, i32* %2, align 4
  br label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 5000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 6, i32* %2, align 4
  br label %35

34:                                               ; preds = %30
  store i32 7, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33, %29, %25, %21, %17, %13, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @irda_get_mtt(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
