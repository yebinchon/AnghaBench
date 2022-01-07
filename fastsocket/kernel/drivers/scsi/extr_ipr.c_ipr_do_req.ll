; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_do_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_do_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { void (%struct.ipr_cmnd*)*, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, void (i64)*, i64 }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@IPR_TRACE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*, void (%struct.ipr_cmnd*)*, void (%struct.ipr_cmnd*)*, i64)* @ipr_do_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_do_req(%struct.ipr_cmnd* %0, void (%struct.ipr_cmnd*)* %1, void (%struct.ipr_cmnd*)* %2, i64 %3) #0 {
  %5 = alloca %struct.ipr_cmnd*, align 8
  %6 = alloca void (%struct.ipr_cmnd*)*, align 8
  %7 = alloca void (%struct.ipr_cmnd*)*, align 8
  %8 = alloca i64, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %5, align 8
  store void (%struct.ipr_cmnd*)* %1, void (%struct.ipr_cmnd*)** %6, align 8
  store void (%struct.ipr_cmnd*)* %2, void (%struct.ipr_cmnd*)** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %10 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %9, i32 0, i32 3
  %11 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %12 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @list_add_tail(i32* %10, i32* %14)
  %16 = load void (%struct.ipr_cmnd*)*, void (%struct.ipr_cmnd*)** %6, align 8
  %17 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %18 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %17, i32 0, i32 0
  store void (%struct.ipr_cmnd*)* %16, void (%struct.ipr_cmnd*)** %18, align 8
  %19 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %20 = ptrtoint %struct.ipr_cmnd* %19 to i64
  %21 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %22 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %28 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i64 %26, i64* %29, align 8
  %30 = load void (%struct.ipr_cmnd*)*, void (%struct.ipr_cmnd*)** %7, align 8
  %31 = bitcast void (%struct.ipr_cmnd*)* %30 to void (i64)*
  %32 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %33 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store void (i64)* %31, void (i64)** %34, align 8
  %35 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %36 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %35, i32 0, i32 1
  %37 = call i32 @add_timer(%struct.TYPE_4__* %36)
  %38 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %39 = load i32, i32* @IPR_TRACE_START, align 4
  %40 = call i32 @ipr_trc_hook(%struct.ipr_cmnd* %38, i32 %39, i32 0)
  %41 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %42 = call i32 @ipr_send_command(%struct.ipr_cmnd* %41)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @ipr_trc_hook(%struct.ipr_cmnd*, i32, i32) #1

declare dso_local i32 @ipr_send_command(%struct.ipr_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
