; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pps/extr_kapi.c_pps_add_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pps/extr_kapi.c_pps_add_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_ktime = type { i64, i64 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pps_ktime*, %struct.pps_ktime*)* @pps_add_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pps_add_offset(%struct.pps_ktime* %0, %struct.pps_ktime* %1) #0 {
  %3 = alloca %struct.pps_ktime*, align 8
  %4 = alloca %struct.pps_ktime*, align 8
  store %struct.pps_ktime* %0, %struct.pps_ktime** %3, align 8
  store %struct.pps_ktime* %1, %struct.pps_ktime** %4, align 8
  %5 = load %struct.pps_ktime*, %struct.pps_ktime** %4, align 8
  %6 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.pps_ktime*, %struct.pps_ktime** %3, align 8
  %9 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %18, %2
  %13 = load %struct.pps_ktime*, %struct.pps_ktime** %3, align 8
  %14 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NSEC_PER_SEC, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load i64, i64* @NSEC_PER_SEC, align 8
  %20 = load %struct.pps_ktime*, %struct.pps_ktime** %3, align 8
  %21 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.pps_ktime*, %struct.pps_ktime** %3, align 8
  %25 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  br label %12

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %34, %28
  %30 = load %struct.pps_ktime*, %struct.pps_ktime** %3, align 8
  %31 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i64, i64* @NSEC_PER_SEC, align 8
  %36 = load %struct.pps_ktime*, %struct.pps_ktime** %3, align 8
  %37 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.pps_ktime*, %struct.pps_ktime** %3, align 8
  %41 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.pps_ktime*, %struct.pps_ktime** %4, align 8
  %46 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.pps_ktime*, %struct.pps_ktime** %3, align 8
  %49 = getelementptr inbounds %struct.pps_ktime, %struct.pps_ktime* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
