; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_find_best_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_find_best_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3c_data = type { i32, i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3c_data*, i16)* @find_best_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_best_mtu(%struct.t3c_data* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.t3c_data*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.t3c_data* %0, %struct.t3c_data** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.t3c_data*, %struct.t3c_data** %3, align 8
  %9 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %6
  %14 = load %struct.t3c_data*, %struct.t3c_data** %3, align 8
  %15 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %14, i32 0, i32 1
  %16 = load i16*, i16** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %16, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* %4, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp sle i32 %22, %24
  br label %26

26:                                               ; preds = %13, %6
  %27 = phi i1 [ false, %6 ], [ %25, %13 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
