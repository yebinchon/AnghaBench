; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_xmit_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_xmit_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_task*, %struct.TYPE_4__*, i32 }
%struct.iscsi_task = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.iscsi_task*)* }

@ISCSI_SUSPEND_BIT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*)* @iscsi_xmit_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_xmit_task(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %6, i32 0, i32 0
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  store %struct.iscsi_task* %8, %struct.iscsi_task** %4, align 8
  %9 = load i32, i32* @ISCSI_SUSPEND_BIT, align 4
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %19 = call i32 @__iscsi_get_task(%struct.iscsi_task* %18)
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.iscsi_task*)*, i32 (%struct.iscsi_task*)** %30, align 8
  %32 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %33 = call i32 %31(%struct.iscsi_task* %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %17
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 0
  store %struct.iscsi_task* null, %struct.iscsi_task** %46, align 8
  br label %47

47:                                               ; preds = %41, %17
  %48 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %49 = call i32 @__iscsi_put_task(%struct.iscsi_task* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__iscsi_get_task(%struct.iscsi_task*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__iscsi_put_task(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
