; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_fabric_logoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_fabric_logoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (...)*, i32 (i64)*, i32 (%struct.fc_lport.0*)* }
%struct.fc_lport.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_fabric_logoff(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i32 (%struct.fc_lport.0*)*, i32 (%struct.fc_lport.0*)** %5, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = bitcast %struct.fc_lport* %7 to %struct.fc_lport.0*
  %9 = call i32 %6(%struct.fc_lport.0* %8)
  %10 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %11 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %19 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (i64)*, i32 (i64)** %20, align 8
  %22 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 %21(i64 %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %28 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (...)*, i32 (...)** %32, align 8
  %34 = call i32 (...) %33()
  %35 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %36 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %39 = call i32 @fc_lport_enter_logo(%struct.fc_lport* %38)
  %40 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %41 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %44 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %43, i32 0, i32 0
  %45 = call i32 @cancel_delayed_work_sync(i32* %44)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_lport_enter_logo(%struct.fc_lport*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
