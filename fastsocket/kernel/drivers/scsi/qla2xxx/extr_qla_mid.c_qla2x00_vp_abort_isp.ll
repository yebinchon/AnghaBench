; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mid.c_qla2x00_vp_abort_isp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mid.c_qla2x00_vp_abort_isp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@LOOP_DOWN = common dso_local global i64 0, align 8
@LOOP_DOWN_TIME = common dso_local global i64 0, align 8
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@VCE_COMMAND_DISABLE_VPS_LOGO_ALL = common dso_local global i32 0, align 4
@ql_dbg_taskm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Scheduling enable of Vport %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_vp_abort_isp(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  %5 = call i64 @atomic_read(i32* %4)
  %6 = load i64, i64* @LOOP_DOWN, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %11 = load i64, i64* @LOOP_DOWN, align 8
  %12 = call i32 @atomic_set(i32* %10, i64 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = call i32 @qla2x00_mark_all_devices_lost(%struct.TYPE_7__* %13, i32 0)
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i64, i64* @LOOP_DOWN_TIME, align 8
  %24 = call i32 @atomic_set(i32* %22, i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  br label %26

26:                                               ; preds = %25, %8
  %27 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = load i32, i32* @VCE_COMMAND_DISABLE_VPS_LOGO_ALL, align 4
  %35 = call i32 @qla24xx_control_vp(%struct.TYPE_7__* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32, i32* @ql_dbg_taskm, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ql_dbg(i32 %37, %struct.TYPE_7__* %38, i32 32797, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = call i32 @qla24xx_enable_vp(%struct.TYPE_7__* %43)
  ret i32 %44
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @qla2x00_mark_all_devices_lost(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qla24xx_control_vp(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i32 @qla24xx_enable_vp(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
