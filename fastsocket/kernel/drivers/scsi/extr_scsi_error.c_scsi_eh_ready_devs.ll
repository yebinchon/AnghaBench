; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_eh_ready_devs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_eh_ready_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_eh_ready_devs(%struct.Scsi_Host* %0, %struct.list_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %8 = load %struct.list_head*, %struct.list_head** %5, align 8
  %9 = load %struct.list_head*, %struct.list_head** %6, align 8
  %10 = call i32 @scsi_eh_stu(%struct.Scsi_Host* %7, %struct.list_head* %8, %struct.list_head* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %3
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = load %struct.list_head*, %struct.list_head** %5, align 8
  %15 = load %struct.list_head*, %struct.list_head** %6, align 8
  %16 = call i32 @scsi_eh_bus_device_reset(%struct.Scsi_Host* %13, %struct.list_head* %14, %struct.list_head* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %12
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = load %struct.list_head*, %struct.list_head** %5, align 8
  %21 = load %struct.list_head*, %struct.list_head** %6, align 8
  %22 = call i32 @scsi_eh_target_reset(%struct.Scsi_Host* %19, %struct.list_head* %20, %struct.list_head* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %18
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %26 = load %struct.list_head*, %struct.list_head** %5, align 8
  %27 = load %struct.list_head*, %struct.list_head** %6, align 8
  %28 = call i32 @scsi_eh_bus_reset(%struct.Scsi_Host* %25, %struct.list_head* %26, %struct.list_head* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load %struct.list_head*, %struct.list_head** %5, align 8
  %32 = load %struct.list_head*, %struct.list_head** %6, align 8
  %33 = call i32 @scsi_eh_host_reset(%struct.list_head* %31, %struct.list_head* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.list_head*, %struct.list_head** %5, align 8
  %37 = load %struct.list_head*, %struct.list_head** %6, align 8
  %38 = call i32 @scsi_eh_offline_sdevs(%struct.list_head* %36, %struct.list_head* %37)
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %40, %18
  br label %42

42:                                               ; preds = %41, %12
  br label %43

43:                                               ; preds = %42, %3
  ret void
}

declare dso_local i32 @scsi_eh_stu(%struct.Scsi_Host*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @scsi_eh_bus_device_reset(%struct.Scsi_Host*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @scsi_eh_target_reset(%struct.Scsi_Host*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @scsi_eh_bus_reset(%struct.Scsi_Host*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @scsi_eh_host_reset(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @scsi_eh_offline_sdevs(%struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
