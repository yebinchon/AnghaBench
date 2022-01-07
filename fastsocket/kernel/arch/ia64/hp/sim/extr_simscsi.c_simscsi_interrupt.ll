; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simscsi.c_simscsi_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simscsi.c_simscsi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i32 }

@queue = common dso_local global %struct.TYPE_2__* null, align 8
@rd = common dso_local global i64 0, align 8
@num_reqs = common dso_local global i32 0, align 4
@DBG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"simscsi_interrupt: done with %ld\0A\00", align 1
@SIMSCSI_REQ_QUEUE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @simscsi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simscsi_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  store i64 %0, i64* %2, align 8
  br label %4

4:                                                ; preds = %24, %1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @queue, align 8
  %6 = load i64, i64* @rd, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %3, align 8
  %10 = icmp ne %struct.scsi_cmnd* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %4
  %12 = call i32 @atomic_dec(i32* @num_reqs)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @queue, align 8
  %14 = load i64, i64* @rd, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %16, align 8
  %17 = load i64, i64* @DBG, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %26, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %29 = call i32 %27(%struct.scsi_cmnd* %28)
  %30 = load i64, i64* @rd, align 8
  %31 = add i64 %30, 1
  %32 = load i64, i64* @SIMSCSI_REQ_QUEUE_LEN, align 8
  %33 = urem i64 %31, %32
  store i64 %33, i64* @rd, align 8
  br label %4

34:                                               ; preds = %4
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
