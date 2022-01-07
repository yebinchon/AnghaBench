; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_cx_device_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_cx_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx_device_id = type { i64, i64 }
%struct.cx_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cx_device_id* (%struct.cx_device_id*, %struct.cx_dev*)* @cx_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cx_device_id* @cx_device_match(%struct.cx_device_id* %0, %struct.cx_dev* %1) #0 {
  %3 = alloca %struct.cx_device_id*, align 8
  %4 = alloca %struct.cx_device_id*, align 8
  %5 = alloca %struct.cx_dev*, align 8
  store %struct.cx_device_id* %0, %struct.cx_device_id** %4, align 8
  store %struct.cx_dev* %1, %struct.cx_dev** %5, align 8
  br label %6

6:                                                ; preds = %38, %2
  %7 = load %struct.cx_device_id*, %struct.cx_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.cx_device_id, %struct.cx_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.cx_device_id*, %struct.cx_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.cx_device_id, %struct.cx_device_id* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %41

18:                                               ; preds = %16
  %19 = load %struct.cx_device_id*, %struct.cx_device_id** %4, align 8
  %20 = getelementptr inbounds %struct.cx_device_id, %struct.cx_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cx_dev*, %struct.cx_dev** %5, align 8
  %23 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load %struct.cx_device_id*, %struct.cx_device_id** %4, align 8
  %29 = getelementptr inbounds %struct.cx_device_id, %struct.cx_device_id* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cx_dev*, %struct.cx_dev** %5, align 8
  %32 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load %struct.cx_device_id*, %struct.cx_device_id** %4, align 8
  store %struct.cx_device_id* %37, %struct.cx_device_id** %3, align 8
  br label %42

38:                                               ; preds = %27, %18
  %39 = load %struct.cx_device_id*, %struct.cx_device_id** %4, align 8
  %40 = getelementptr inbounds %struct.cx_device_id, %struct.cx_device_id* %39, i32 1
  store %struct.cx_device_id* %40, %struct.cx_device_id** %4, align 8
  br label %6

41:                                               ; preds = %16
  store %struct.cx_device_id* null, %struct.cx_device_id** %3, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.cx_device_id*, %struct.cx_device_id** %3, align 8
  ret %struct.cx_device_id* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
