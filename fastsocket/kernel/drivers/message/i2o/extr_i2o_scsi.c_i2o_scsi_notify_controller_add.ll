; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_notify_controller_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_notify_controller_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.i2o_controller = type { %struct.i2o_scsi_host**, i32 }
%struct.i2o_scsi_host = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Could not initialize SCSI host\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not add SCSI host\0A\00", align 1
@i2o_scsi_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"new I2O SCSI host added\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2o_controller*)* @i2o_scsi_notify_controller_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_scsi_notify_controller_add(%struct.i2o_controller* %0) #0 {
  %2 = alloca %struct.i2o_controller*, align 8
  %3 = alloca %struct.i2o_scsi_host*, align 8
  %4 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %2, align 8
  %5 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %6 = call %struct.i2o_scsi_host* @i2o_scsi_host_alloc(%struct.i2o_controller* %5)
  store %struct.i2o_scsi_host* %6, %struct.i2o_scsi_host** %3, align 8
  %7 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %3, align 8
  %8 = call i64 @IS_ERR(%struct.i2o_scsi_host* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @osm_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %3, align 8
  %14 = getelementptr inbounds %struct.i2o_scsi_host, %struct.i2o_scsi_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %17 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %16, i32 0, i32 1
  %18 = call i32 @scsi_add_host(i32 %15, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = call i32 @osm_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %3, align 8
  %24 = getelementptr inbounds %struct.i2o_scsi_host, %struct.i2o_scsi_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scsi_host_put(i32 %25)
  br label %35

27:                                               ; preds = %12
  %28 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %3, align 8
  %29 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %30 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %29, i32 0, i32 0
  %31 = load %struct.i2o_scsi_host**, %struct.i2o_scsi_host*** %30, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i2o_scsi_driver, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %31, i64 %32
  store %struct.i2o_scsi_host* %28, %struct.i2o_scsi_host** %33, align 8
  %34 = call i32 @osm_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %27, %21, %10
  ret void
}

declare dso_local %struct.i2o_scsi_host* @i2o_scsi_host_alloc(%struct.i2o_controller*) #1

declare dso_local i64 @IS_ERR(%struct.i2o_scsi_host*) #1

declare dso_local i32 @osm_err(i8*) #1

declare dso_local i32 @scsi_add_host(i32, i32*) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @osm_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
