; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_16x0_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_16x0_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }

@in_command = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@aborted = common dso_local global i32 0, align 4
@current_SC = common dso_local global %struct.TYPE_4__* null, align 8
@DID_ABORT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @fdomain_16x0_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_16x0_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %4 = load i32, i32* @in_command, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @FAILED, align 4
  store i32 %7, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8
  %11 = call i32 (...) @fdomain_make_bus_idle()
  %12 = load i32, i32* @aborted, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_SC, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %12
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @DID_ABORT, align 4
  %19 = shl i32 %18, 16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_SC, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @DID_ABORT, align 4
  %23 = shl i32 %22, 16
  %24 = call i32 @my_done(i32 %23)
  %25 = load i32, i32* @SUCCESS, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %10, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @fdomain_make_bus_idle(...) #1

declare dso_local i32 @my_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
