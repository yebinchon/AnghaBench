; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_util.c_adj_guesttime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_util.c_adj_guesttime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adj_time_work = type { i32, i32 }

@adj_guesttime.scnt = internal global i64 50, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ICTIMESYNCFLAG_SYNC = common dso_local global i32 0, align 4
@hv_set_host_time = common dso_local global i32 0, align 4
@ICTIMESYNCFLAG_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @adj_guesttime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adj_guesttime(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.adj_time_work*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.adj_time_work* @kmalloc(i32 8, i32 %6)
  store %struct.adj_time_work* %7, %struct.adj_time_work** %5, align 8
  %8 = load %struct.adj_time_work*, %struct.adj_time_work** %5, align 8
  %9 = icmp eq %struct.adj_time_work* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %48

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.adj_time_work*, %struct.adj_time_work** %5, align 8
  %14 = getelementptr inbounds %struct.adj_time_work, %struct.adj_time_work* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ICTIMESYNCFLAG_SYNC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.adj_time_work*, %struct.adj_time_work** %5, align 8
  %21 = getelementptr inbounds %struct.adj_time_work, %struct.adj_time_work* %20, i32 0, i32 0
  %22 = load i32, i32* @hv_set_host_time, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load %struct.adj_time_work*, %struct.adj_time_work** %5, align 8
  %25 = getelementptr inbounds %struct.adj_time_work, %struct.adj_time_work* %24, i32 0, i32 0
  %26 = call i32 @schedule_work(i32* %25)
  br label %48

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ICTIMESYNCFLAG_SAMPLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i64, i64* @adj_guesttime.scnt, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i64, i64* @adj_guesttime.scnt, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* @adj_guesttime.scnt, align 8
  %38 = load %struct.adj_time_work*, %struct.adj_time_work** %5, align 8
  %39 = getelementptr inbounds %struct.adj_time_work, %struct.adj_time_work* %38, i32 0, i32 0
  %40 = load i32, i32* @hv_set_host_time, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.adj_time_work*, %struct.adj_time_work** %5, align 8
  %43 = getelementptr inbounds %struct.adj_time_work, %struct.adj_time_work* %42, i32 0, i32 0
  %44 = call i32 @schedule_work(i32* %43)
  br label %48

45:                                               ; preds = %32, %27
  %46 = load %struct.adj_time_work*, %struct.adj_time_work** %5, align 8
  %47 = call i32 @kfree(%struct.adj_time_work* %46)
  br label %48

48:                                               ; preds = %10, %19, %45, %35
  ret void
}

declare dso_local %struct.adj_time_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @kfree(%struct.adj_time_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
