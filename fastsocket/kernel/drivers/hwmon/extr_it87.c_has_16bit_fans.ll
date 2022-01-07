; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_has_16bit_fans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_has_16bit_fans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.it87_data = type { i64, i32 }

@it87 = common dso_local global i64 0, align 8
@it8712 = common dso_local global i64 0, align 8
@it8716 = common dso_local global i64 0, align 8
@it8718 = common dso_local global i64 0, align 8
@it8720 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.it87_data*)* @has_16bit_fans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_16bit_fans(%struct.it87_data* %0) #0 {
  %2 = alloca %struct.it87_data*, align 8
  store %struct.it87_data* %0, %struct.it87_data** %2, align 8
  %3 = load %struct.it87_data*, %struct.it87_data** %2, align 8
  %4 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @it87, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.it87_data*, %struct.it87_data** %2, align 8
  %10 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %11, 3
  br i1 %12, label %42, label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.it87_data*, %struct.it87_data** %2, align 8
  %15 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @it8712, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.it87_data*, %struct.it87_data** %2, align 8
  %21 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 8
  br i1 %23, label %42, label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.it87_data*, %struct.it87_data** %2, align 8
  %26 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @it8716, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load %struct.it87_data*, %struct.it87_data** %2, align 8
  %32 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @it8718, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.it87_data*, %struct.it87_data** %2, align 8
  %38 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @it8720, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %36, %30, %24, %19, %8
  %43 = phi i1 [ true, %30 ], [ true, %24 ], [ true, %19 ], [ true, %8 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
