; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { void (%struct.TYPE_15__*)*, %struct.TYPE_14__, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_16__*, i64, i32* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@in_command = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"fd_mcs: fd_mcs_queue() NOT REENTRANT!\0A\00", align 1
@current_SC = common dso_local global %struct.TYPE_15__* null, align 8
@in_arbitration = common dso_local global i32 0, align 4
@Interrupt_Cntl_port = common dso_local global i32 0, align 4
@SCSI_Cntl_port = common dso_local global i32 0, align 4
@adapter_mask = common dso_local global i32 0, align 4
@SCSI_Data_NoACK_port = common dso_local global i32 0, align 4
@PARITY_MASK = common dso_local global i32 0, align 4
@TMC_Cntl_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, void (%struct.TYPE_15__*)*)* @fd_mcs_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_mcs_queue(%struct.TYPE_15__* %0, void (%struct.TYPE_15__*)* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca void (%struct.TYPE_15__*)*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store void (%struct.TYPE_15__*)* %1, void (%struct.TYPE_15__*)** %4, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %5, align 8
  %11 = load i32, i32* @in_command, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = call i32 @fd_mcs_make_bus_idle(%struct.Scsi_Host* %16)
  %18 = load void (%struct.TYPE_15__*)*, void (%struct.TYPE_15__*)** %4, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store void (%struct.TYPE_15__*)* %18, void (%struct.TYPE_15__*)** %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** @current_SC, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %23 = call i32 @scsi_bufflen(%struct.TYPE_15__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %15
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %27 = call %struct.TYPE_16__* @scsi_sglist(%struct.TYPE_15__* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 6
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = call i32* @sg_virt(%struct.TYPE_16__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 8
  store i32* %35, i32** %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 7
  store i64 %44, i64* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %49 = call i32 @scsi_sg_count(%struct.TYPE_15__* %48)
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 5
  store i64 %51, i64* %54, align 8
  br label %68

55:                                               ; preds = %15
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 8
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 7
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 6
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %55, %25
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @in_arbitration, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** @current_SC, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @Interrupt_Cntl_port, align 4
  %86 = call i32 @outb(i32 0, i32 %85)
  %87 = load i32, i32* @SCSI_Cntl_port, align 4
  %88 = call i32 @outb(i32 0, i32 %87)
  %89 = load i32, i32* @adapter_mask, align 4
  %90 = load i32, i32* @SCSI_Data_NoACK_port, align 4
  %91 = call i32 @outb(i32 %89, i32 %90)
  store i32 1, i32* @in_command, align 4
  %92 = load i32, i32* @Interrupt_Cntl_port, align 4
  %93 = call i32 @outb(i32 32, i32 %92)
  %94 = load i32, i32* @PARITY_MASK, align 4
  %95 = or i32 20, %94
  %96 = load i32, i32* @TMC_Cntl_port, align 4
  %97 = call i32 @outb(i32 %95, i32 %96)
  ret i32 0
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @fd_mcs_make_bus_idle(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_bufflen(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @scsi_sglist(%struct.TYPE_15__*) #1

declare dso_local i32* @sg_virt(%struct.TYPE_16__*) #1

declare dso_local i32 @scsi_sg_count(%struct.TYPE_15__*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
