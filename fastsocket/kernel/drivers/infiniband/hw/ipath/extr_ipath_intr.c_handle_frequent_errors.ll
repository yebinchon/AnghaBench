; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_frequent_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_frequent_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }

@handle_frequent_errors.nextmsg_time = internal global i64 0, align 8
@handle_frequent_errors.nmsgs = internal global i32 0, align 4
@handle_frequent_errors.supp_msgs = internal global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32, i8*, i32, i32*)* @handle_frequent_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_frequent_errors(%struct.ipath_devdata* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ipath_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i32, i32* @handle_frequent_errors.nmsgs, align 4
  %14 = icmp ugt i32 %13, 10
  br i1 %14, label %15, label %43

15:                                               ; preds = %5
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @handle_frequent_errors.nextmsg_time, align 8
  %18 = call i64 @time_before(i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32*, i32** %10, align 8
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @handle_frequent_errors.supp_msgs, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* @handle_frequent_errors.supp_msgs, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = add i64 %26, %29
  store i64 %30, i64* @handle_frequent_errors.nextmsg_time, align 8
  br label %31

31:                                               ; preds = %25, %20
  br label %42

32:                                               ; preds = %15
  %33 = load i32, i32* @handle_frequent_errors.supp_msgs, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %37 = load i32, i32* @handle_frequent_errors.supp_msgs, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @handle_supp_msgs(%struct.ipath_devdata* %36, i32 %37, i8* %38, i32 %39)
  store i32 0, i32* @handle_frequent_errors.supp_msgs, align 4
  store i32 0, i32* @handle_frequent_errors.nmsgs, align 4
  br label %41

41:                                               ; preds = %35, %32
  br label %42

42:                                               ; preds = %41, %31
  br label %59

43:                                               ; preds = %5
  %44 = load i32, i32* @handle_frequent_errors.nmsgs, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* @handle_frequent_errors.nmsgs, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @handle_frequent_errors.nextmsg_time, align 8
  %50 = call i64 @time_after(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %43
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* @HZ, align 4
  %55 = sdiv i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = add i64 %53, %56
  store i64 %57, i64* @handle_frequent_errors.nextmsg_time, align 8
  br label %58

58:                                               ; preds = %52, %47
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* @handle_frequent_errors.supp_msgs, align 4
  ret i32 %60
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @handle_supp_msgs(%struct.ipath_devdata*, i32, i8*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
