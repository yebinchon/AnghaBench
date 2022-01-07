; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_linear.c_which_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_linear.c_which_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { i64 }
%struct.mddev = type { i32, i32 }
%struct.linear_conf = type { %struct.dev_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dev_info* (%struct.mddev*, i64)* @which_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dev_info* @which_dev(%struct.mddev* %0, i64 %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.linear_conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mddev*, %struct.mddev** %3, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.linear_conf* @rcu_dereference(i32 %15)
  store %struct.linear_conf* %16, %struct.linear_conf** %8, align 8
  br label %17

17:                                               ; preds = %41, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.linear_conf*, %struct.linear_conf** %8, align 8
  %28 = getelementptr inbounds %struct.linear_conf, %struct.linear_conf* %27, i32 0, i32 0
  %29 = load %struct.dev_info*, %struct.dev_info** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %29, i64 %31
  %33 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %26, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %7, align 4
  br label %41

38:                                               ; preds = %21
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %36
  br label %17

42:                                               ; preds = %17
  %43 = load %struct.linear_conf*, %struct.linear_conf** %8, align 8
  %44 = getelementptr inbounds %struct.linear_conf, %struct.linear_conf* %43, i32 0, i32 0
  %45 = load %struct.dev_info*, %struct.dev_info** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %45, i64 %47
  ret %struct.dev_info* %48
}

declare dso_local %struct.linear_conf* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
