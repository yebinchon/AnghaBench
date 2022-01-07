; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_scan.c_scsi_scan_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_scan.c_scsi_scan_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.async_scan_data = type { i32 }

@scsi_scan_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@do_scan_async = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_scan_host(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.async_scan_data*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load i32, i32* @scsi_scan_type, align 4
  %5 = call i64 @strncmp(i32 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %10 = call %struct.async_scan_data* @scsi_prep_async_scan(%struct.Scsi_Host* %9)
  store %struct.async_scan_data* %10, %struct.async_scan_data** %3, align 8
  %11 = load %struct.async_scan_data*, %struct.async_scan_data** %3, align 8
  %12 = icmp ne %struct.async_scan_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %15 = call i32 @do_scsi_scan_host(%struct.Scsi_Host* %14)
  br label %20

16:                                               ; preds = %8
  %17 = load i32, i32* @do_scan_async, align 4
  %18 = load %struct.async_scan_data*, %struct.async_scan_data** %3, align 8
  %19 = call i32 @async_schedule(i32 %17, %struct.async_scan_data* %18)
  br label %20

20:                                               ; preds = %16, %13, %7
  ret void
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local %struct.async_scan_data* @scsi_prep_async_scan(%struct.Scsi_Host*) #1

declare dso_local i32 @do_scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @async_schedule(i32, %struct.async_scan_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
