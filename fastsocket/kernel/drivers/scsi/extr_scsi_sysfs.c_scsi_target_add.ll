; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_target_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_target_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32 }

@STARGET_CREATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"target device_add failed, error %d\0A\00", align 1
@STARGET_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_target*)* @scsi_target_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_target_add(%struct.scsi_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  %5 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STARGET_CREATED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %12, i32 0, i32 1
  %14 = call i32 @device_add(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %18, i32 0, i32 1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %22, i32 0, i32 1
  %24 = call i32 @get_device(i32* %23)
  %25 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %26 = call i32 @scsi_target_reap(%struct.scsi_target* %25)
  %27 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %27, i32 0, i32 1
  %29 = call i32 @put_device(i32* %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %11
  %32 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %32, i32 0, i32 1
  %34 = call i32 @transport_add_device(i32* %33)
  %35 = load i64, i64* @STARGET_RUNNING, align 8
  %36 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %17, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @scsi_target_reap(%struct.scsi_target*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @transport_add_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
