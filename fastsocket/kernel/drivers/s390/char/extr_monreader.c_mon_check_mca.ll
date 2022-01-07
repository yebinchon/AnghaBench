; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_check_mca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_check_mca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_msg = type { i32 }

@mon_dcss_start = common dso_local global i64 0, align 8
@mon_dcss_end = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_msg*)* @mon_check_mca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_check_mca(%struct.mon_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mon_msg*, align 8
  store %struct.mon_msg* %0, %struct.mon_msg** %3, align 8
  %4 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %5 = call i64 @mon_rec_end(%struct.mon_msg* %4)
  %6 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %7 = call i64 @mon_rec_start(%struct.mon_msg* %6)
  %8 = icmp sle i64 %5, %7
  br i1 %8, label %52, label %9

9:                                                ; preds = %1
  %10 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %11 = call i64 @mon_rec_start(%struct.mon_msg* %10)
  %12 = load i64, i64* @mon_dcss_start, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %52, label %14

14:                                               ; preds = %9
  %15 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %16 = call i64 @mon_rec_end(%struct.mon_msg* %15)
  %17 = load i64, i64* @mon_dcss_end, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %52, label %19

19:                                               ; preds = %14
  %20 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %21 = call i64 @mon_mca_type(%struct.mon_msg* %20, i32 0)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %25 = call i32 @mon_mca_size(%struct.mon_msg* %24)
  %26 = srem i32 %25, 12
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %23
  %29 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %30 = call i64 @mon_mca_end(%struct.mon_msg* %29)
  %31 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %32 = call i64 @mon_mca_start(%struct.mon_msg* %31)
  %33 = icmp sle i64 %30, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %36 = call i64 @mon_mca_end(%struct.mon_msg* %35)
  %37 = load i64, i64* @mon_dcss_end, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %41 = call i64 @mon_mca_start(%struct.mon_msg* %40)
  %42 = load i64, i64* @mon_dcss_start, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %46 = call i64 @mon_mca_type(%struct.mon_msg* %45, i32 1)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.mon_msg*, %struct.mon_msg** %3, align 8
  %50 = call i64 @mon_mca_type(%struct.mon_msg* %49, i32 2)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %39, %34, %28, %23, %19, %14, %9, %1
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %48, %44
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @mon_rec_end(%struct.mon_msg*) #1

declare dso_local i64 @mon_rec_start(%struct.mon_msg*) #1

declare dso_local i64 @mon_mca_type(%struct.mon_msg*, i32) #1

declare dso_local i32 @mon_mca_size(%struct.mon_msg*) #1

declare dso_local i64 @mon_mca_end(%struct.mon_msg*) #1

declare dso_local i64 @mon_mca_start(%struct.mon_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
