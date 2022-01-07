; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_device_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_device_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.Scsi_Host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.scsi_device* @__scsi_device_lookup(%struct.Scsi_Host* %16, i32 %17, i32 %18, i32 %19)
  store %struct.scsi_device* %20, %struct.scsi_device** %9, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %22 = icmp ne %struct.scsi_device* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %25 = call i64 @scsi_device_get(%struct.scsi_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.scsi_device* null, %struct.scsi_device** %9, align 8
  br label %28

28:                                               ; preds = %27, %23, %4
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32 %31, i64 %32)
  %34 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  ret %struct.scsi_device* %34
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.scsi_device* @__scsi_device_lookup(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i64 @scsi_device_get(%struct.scsi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
