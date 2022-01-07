; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32* }

@CONNECT_NORMAL = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @imm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %4, i32 0, i32 1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_9__* @imm_dev(i32 %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32 @imm_disconnect(%struct.TYPE_9__* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load i32, i32* @CONNECT_NORMAL, align 4
  %23 = call i32 @imm_connect(%struct.TYPE_9__* %21, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @imm_reset_pulse(i32 %26)
  %28 = call i32 @mdelay(i32 1)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @imm_disconnect(%struct.TYPE_9__* %29)
  %31 = call i32 @mdelay(i32 1)
  %32 = load i32, i32* @SUCCESS, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_9__* @imm_dev(i32) #1

declare dso_local i32 @imm_disconnect(%struct.TYPE_9__*) #1

declare dso_local i32 @imm_connect(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @imm_reset_pulse(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
