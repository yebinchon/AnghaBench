; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_scan.c___scsi_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_scan.c___scsi_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.Scsi_Host = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.scsi_target = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@scsi_scan_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_device* @__scsi_add_device(%struct.Scsi_Host* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.scsi_device*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.scsi_target*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.scsi_device* @ERR_PTR(i32 %16)
  store %struct.scsi_device* %17, %struct.scsi_device** %12, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 2
  store %struct.device* %19, %struct.device** %13, align 8
  %20 = load i32, i32* @scsi_scan_type, align 4
  %21 = call i64 @strncmp(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.scsi_device* @ERR_PTR(i32 %25)
  store %struct.scsi_device* %26, %struct.scsi_device** %6, align 8
  br label %67

27:                                               ; preds = %5
  %28 = load %struct.device*, %struct.device** %13, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.scsi_target* @scsi_alloc_target(%struct.device* %28, i32 %29, i32 %30)
  store %struct.scsi_target* %31, %struct.scsi_target** %14, align 8
  %32 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %33 = icmp ne %struct.scsi_target* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.scsi_device* @ERR_PTR(i32 %36)
  store %struct.scsi_device* %37, %struct.scsi_device** %6, align 8
  br label %67

38:                                               ; preds = %27
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = call i32 (...) @scsi_complete_async_scans()
  br label %48

48:                                               ; preds = %46, %38
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %50 = call i64 @scsi_host_scan_allowed(%struct.Scsi_Host* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @scsi_probe_and_add_lun(%struct.scsi_target* %53, i32 %54, i32* null, %struct.scsi_device** %12, i32 1, i8* %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %62 = call i32 @scsi_target_reap(%struct.scsi_target* %61)
  %63 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %64 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %63, i32 0, i32 0
  %65 = call i32 @put_device(i32* %64)
  %66 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  store %struct.scsi_device* %66, %struct.scsi_device** %6, align 8
  br label %67

67:                                               ; preds = %57, %34, %23
  %68 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  ret %struct.scsi_device* %68
}

declare dso_local %struct.scsi_device* @ERR_PTR(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local %struct.scsi_target* @scsi_alloc_target(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_complete_async_scans(...) #1

declare dso_local i64 @scsi_host_scan_allowed(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_probe_and_add_lun(%struct.scsi_target*, i32, i32*, %struct.scsi_device**, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scsi_target_reap(%struct.scsi_target*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
