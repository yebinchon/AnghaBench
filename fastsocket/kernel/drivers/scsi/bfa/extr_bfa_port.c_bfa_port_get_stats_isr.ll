; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_get_stats_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_get_stats_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_port_s = type { i32 (i32, i64)*, i32, i64, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.timeval = type { i64 }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_port_s*, i64)* @bfa_port_get_stats_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_port_get_stats_isr(%struct.bfa_port_s* %0, i64 %1) #0 {
  %3 = alloca %struct.bfa_port_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timeval, align 8
  store %struct.bfa_port_s* %0, %struct.bfa_port_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %7, i32 0, i32 6
  store i64 %6, i64* %8, align 8
  %9 = load i32, i32* @BFA_FALSE, align 4
  %10 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @BFA_STATUS_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %16, i32 0, i32 3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @memcpy(%struct.TYPE_7__* %18, i32 %22, i32 4)
  %24 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %25 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i32 @bfa_port_stats_swap(%struct.bfa_port_s* %24, %struct.TYPE_7__* %27)
  %29 = call i32 @do_gettimeofday(%struct.timeval* %5)
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %36, i32 0, i32 3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %35, i64* %40, align 8
  br label %41

41:                                               ; preds = %15, %2
  %42 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %42, i32 0, i32 0
  %44 = load i32 (i32, i64)*, i32 (i32, i64)** %43, align 8
  %45 = icmp ne i32 (i32, i64)* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %47, i32 0, i32 0
  %49 = load i32 (i32, i64)*, i32 (i32, i64)** %48, align 8
  %50 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 %49(i32 %52, i64 %53)
  %55 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %55, i32 0, i32 0
  store i32 (i32, i64)* null, i32 (i32, i64)** %56, align 8
  br label %57

57:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @bfa_port_stats_swap(%struct.bfa_port_s*, %struct.TYPE_7__*) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
