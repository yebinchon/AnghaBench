; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32*, i32, i32, i32, i32 }

@SCSI_QDEPTH_DEFAULT = common dso_local global i32 0, align 4
@SCSI_QDEPTH_RAMP_UP = common dso_local global i32 0, align 4
@SCSI_QDEPTH_QFULL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"qdepth(%d), tagged(%d), simple(%d), ordered(%d), scsi_level(%d), cmd_que(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32, i32)* @_scsih_change_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_change_queue_depth(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SCSI_QDEPTH_DEFAULT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SCSI_QDEPTH_RAMP_UP, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %3
  %16 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @_scsih_adjust_queue_depth(%struct.scsi_device* %16, i32 %17)
  br label %31

19:                                               ; preds = %11
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SCSI_QDEPTH_QFULL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @scsi_track_queue_full(%struct.scsi_device* %24, i32 %25)
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %66

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %15
  %32 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 7
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = load i32, i32* @KERN_INFO, align 4
  %38 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %39 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %55 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 2
  %60 = ashr i32 %59, 1
  %61 = call i32 @sdev_printk(i32 %37, %struct.scsi_device* %38, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %36, %31
  %63 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @_scsih_adjust_queue_depth(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_track_queue_full(%struct.scsi_device*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
