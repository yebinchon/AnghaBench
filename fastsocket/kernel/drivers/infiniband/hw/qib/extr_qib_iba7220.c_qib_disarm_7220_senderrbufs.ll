; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_disarm_7220_senderrbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_disarm_7220_senderrbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i64, i64 }

@kr_sendbuffererror = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @qib_disarm_7220_senderrbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_disarm_7220_senderrbufs(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca [3 x i64], align 16
  %4 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %5 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %5, i32 0, i32 0
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  store %struct.qib_devdata* %7, %struct.qib_devdata** %4, align 8
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %9 = load i64, i64* @kr_sendbuffererror, align 8
  %10 = call i64 @qib_read_kreg64(%struct.qib_devdata* %8, i64 %9)
  %11 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  store i64 %10, i64* %11, align 16
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %13 = load i64, i64* @kr_sendbuffererror, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i64 @qib_read_kreg64(%struct.qib_devdata* %12, i64 %14)
  %16 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  store i64 %15, i64* %16, align 8
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %18 = load i64, i64* @kr_sendbuffererror, align 8
  %19 = add nsw i64 %18, 2
  %20 = call i64 @qib_read_kreg64(%struct.qib_devdata* %17, i64 %19)
  %21 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 2
  store i64 %20, i64* %21, align 16
  %22 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %23 = load i64, i64* %22, align 16
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 2
  %31 = load i64, i64* %30, align 16
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29, %25, %1
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %37 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @qib_disarm_piobufs_set(%struct.qib_devdata* %34, i64* %35, i64 %42)
  br label %44

44:                                               ; preds = %33, %29
  ret void
}

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i64) #1

declare dso_local i32 @qib_disarm_piobufs_set(%struct.qib_devdata*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
