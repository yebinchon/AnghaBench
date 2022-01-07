; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_scsi_cd_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_scsi_cd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cd = type { i32, i32 }
%struct.gendisk = type { i32* }

@sr_ref_mutex = common dso_local global i32 0, align 4
@sr_kref_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_cd* (%struct.gendisk*)* @scsi_cd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_cd* @scsi_cd_get(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.scsi_cd*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  store %struct.scsi_cd* null, %struct.scsi_cd** %3, align 8
  %4 = call i32 @mutex_lock(i32* @sr_ref_mutex)
  %5 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %6 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %12 = call %struct.scsi_cd* @scsi_cd(%struct.gendisk* %11)
  store %struct.scsi_cd* %12, %struct.scsi_cd** %3, align 8
  %13 = load %struct.scsi_cd*, %struct.scsi_cd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %13, i32 0, i32 0
  %15 = call i32 @kref_get(i32* %14)
  %16 = load %struct.scsi_cd*, %struct.scsi_cd** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @scsi_device_get(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %23

22:                                               ; preds = %10
  br label %28

23:                                               ; preds = %21
  %24 = load %struct.scsi_cd*, %struct.scsi_cd** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %24, i32 0, i32 0
  %26 = load i32, i32* @sr_kref_release, align 4
  %27 = call i32 @kref_put(i32* %25, i32 %26)
  store %struct.scsi_cd* null, %struct.scsi_cd** %3, align 8
  br label %28

28:                                               ; preds = %23, %22, %9
  %29 = call i32 @mutex_unlock(i32* @sr_ref_mutex)
  %30 = load %struct.scsi_cd*, %struct.scsi_cd** %3, align 8
  ret %struct.scsi_cd* %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.scsi_cd* @scsi_cd(%struct.gendisk*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @scsi_device_get(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
