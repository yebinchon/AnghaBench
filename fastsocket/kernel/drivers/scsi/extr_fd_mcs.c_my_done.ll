; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_my_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_my_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*)* }
%struct.Scsi_Host = type { i32 }

@in_command = common dso_local global i64 0, align 8
@Interrupt_Cntl_port = common dso_local global i32 0, align 4
@current_SC = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"fd_mcs: my_done() called outside of command\0A\00", align 1
@in_interrupt_flag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, i32)* @my_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_done(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @in_command, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  store i64 0, i64* @in_command, align 8
  %8 = load i32, i32* @Interrupt_Cntl_port, align 4
  %9 = call i32 @outb(i32 0, i32 %8)
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %11 = call i32 @fd_mcs_make_bus_idle(%struct.Scsi_Host* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_SC, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_SC, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_SC, align 8
  %19 = call i32 %17(%struct.TYPE_3__* %18)
  br label %22

20:                                               ; preds = %2
  %21 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @fd_mcs_make_bus_idle(%struct.Scsi_Host*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
