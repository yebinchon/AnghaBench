; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ibmvscsi_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsi_work(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ibmvscsi_host_data*
  store %struct.ibmvscsi_host_data* %6, %struct.ibmvscsi_host_data** %3, align 8
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @set_user_nice(i32 %7, i32 -20)
  br label %9

9:                                                ; preds = %1, %21
  %10 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %11 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %14 = call i32 @ibmvscsi_work_to_do(%struct.ibmvscsi_host_data* %13)
  %15 = call i32 @wait_event_interruptible(i32 %12, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = call i64 (...) @kthread_should_stop()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %24

21:                                               ; preds = %9
  %22 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %23 = call i32 @ibmvscsi_do_work(%struct.ibmvscsi_host_data* %22)
  br label %9

24:                                               ; preds = %20
  ret i32 0
}

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @ibmvscsi_work_to_do(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @ibmvscsi_do_work(%struct.ibmvscsi_host_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
