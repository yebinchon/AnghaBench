; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hosts.c_scsi_remove_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hosts.c_scsi_remove_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32 }

@SHOST_CANCEL = common dso_local global i32 0, align 4
@SHOST_CANCEL_RECOVERY = common dso_local global i32 0, align 4
@SHOST_DEL = common dso_local global i32 0, align 4
@SHOST_DEL_RECOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_remove_host(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %4, i32 0, i32 3
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32 %9, i64 %10)
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %13 = load i32, i32* @SHOST_CANCEL, align 4
  %14 = call i64 @scsi_host_set_state(%struct.Scsi_Host* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %18 = load i32, i32* @SHOST_CANCEL_RECOVERY, align 4
  %19 = call i64 @scsi_host_set_state(%struct.Scsi_Host* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32 %24, i64 %25)
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 3
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %73

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32 %34, i64 %35)
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %38 = call i32 @scsi_forget_host(%struct.Scsi_Host* %37)
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 3
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %43 = call i32 @scsi_proc_host_rm(%struct.Scsi_Host* %42)
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_lock_irqsave(i32 %46, i64 %47)
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %50 = load i32, i32* @SHOST_DEL, align 4
  %51 = call i64 @scsi_host_set_state(%struct.Scsi_Host* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %31
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %55 = load i32, i32* @SHOST_DEL_RECOVERY, align 4
  %56 = call i64 @scsi_host_set_state(%struct.Scsi_Host* %54, i32 %55)
  %57 = call i32 @BUG_ON(i64 %56)
  br label %58

58:                                               ; preds = %53, %31
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32 %61, i64 %62)
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 0
  %66 = call i32 @transport_unregister_device(i32* %65)
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 1
  %69 = call i32 @device_unregister(i32* %68)
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %71 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %70, i32 0, i32 0
  %72 = call i32 @device_del(i32* %71)
  br label %73

73:                                               ; preds = %58, %21
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @scsi_host_set_state(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scsi_forget_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_proc_host_rm(%struct.Scsi_Host*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @transport_unregister_device(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @device_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
