; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_put_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_put_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device*, i32 }
%struct.scsi_device = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_put_command(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  store %struct.scsi_device* %7, %struct.scsi_device** %3, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = call i32 @list_empty(i32* %15)
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 1
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load %struct.scsi_device*, %struct.scsi_device** %22, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 2
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load %struct.scsi_device*, %struct.scsi_device** %28, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 0
  %35 = call i32 @__scsi_put_command(i32 %31, %struct.scsi_cmnd* %32, i32* %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__scsi_put_command(i32, %struct.scsi_cmnd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
