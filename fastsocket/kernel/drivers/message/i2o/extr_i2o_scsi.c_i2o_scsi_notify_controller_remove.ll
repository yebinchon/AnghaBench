; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_notify_controller_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_notify_controller_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.i2o_controller = type { i32** }
%struct.i2o_scsi_host = type { i32 }

@i2o_scsi_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"I2O SCSI host removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2o_controller*)* @i2o_scsi_notify_controller_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_scsi_notify_controller_remove(%struct.i2o_controller* %0) #0 {
  %2 = alloca %struct.i2o_controller*, align 8
  %3 = alloca %struct.i2o_scsi_host*, align 8
  store %struct.i2o_controller* %0, %struct.i2o_controller** %2, align 8
  %4 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %5 = call %struct.i2o_scsi_host* @i2o_scsi_get_host(%struct.i2o_controller* %4)
  store %struct.i2o_scsi_host* %5, %struct.i2o_scsi_host** %3, align 8
  %6 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %3, align 8
  %7 = icmp ne %struct.i2o_scsi_host* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %11 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i2o_scsi_driver, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  store i32* null, i32** %14, align 8
  %15 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %3, align 8
  %16 = getelementptr inbounds %struct.i2o_scsi_host, %struct.i2o_scsi_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @scsi_remove_host(i32 %17)
  %19 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %3, align 8
  %20 = getelementptr inbounds %struct.i2o_scsi_host, %struct.i2o_scsi_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @scsi_host_put(i32 %21)
  %23 = call i32 @osm_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.i2o_scsi_host* @i2o_scsi_get_host(%struct.i2o_controller*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @osm_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
