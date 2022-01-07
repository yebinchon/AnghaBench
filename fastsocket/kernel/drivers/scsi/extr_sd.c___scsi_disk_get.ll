; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c___scsi_disk_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c___scsi_disk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32 }
%struct.gendisk = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_disk* (%struct.gendisk*)* @__scsi_disk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_disk* @__scsi_disk_get(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.scsi_disk*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  store %struct.scsi_disk* null, %struct.scsi_disk** %3, align 8
  %4 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %5 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %10 = call %struct.scsi_disk* @scsi_disk(%struct.gendisk* %9)
  store %struct.scsi_disk* %10, %struct.scsi_disk** %3, align 8
  %11 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @scsi_device_get(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %17, i32 0, i32 0
  %19 = call i32 @get_device(i32* %18)
  br label %21

20:                                               ; preds = %8
  store %struct.scsi_disk* null, %struct.scsi_disk** %3, align 8
  br label %21

21:                                               ; preds = %20, %16
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  ret %struct.scsi_disk* %23
}

declare dso_local %struct.scsi_disk* @scsi_disk(%struct.gendisk*) #1

declare dso_local i64 @scsi_device_get(i32) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
