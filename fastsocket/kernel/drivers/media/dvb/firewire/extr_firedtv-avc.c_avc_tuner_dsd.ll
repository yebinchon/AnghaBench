; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_dsd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_dsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.firedtv = type { i32, i32, i32, i32, i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.avc_command_frame = type { i32, i32 }

@AVC_CTYPE_CONTROL = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@r = common dso_local global %struct.TYPE_2__* null, align 8
@status = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_tuner_dsd(%struct.firedtv* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.avc_command_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %9 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %12, %struct.avc_command_frame** %5, align 8
  %13 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %14 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @AVC_CTYPE_CONTROL, align 4
  %17 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %18 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %20 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %21 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %19, %22
  %24 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %25 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %27 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %41 [
    i32 130, label %29
    i32 129, label %29
    i32 131, label %33
    i32 128, label %37
  ]

29:                                               ; preds = %2, %2
  %30 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %31 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %32 = call i32 @avc_tuner_tuneqpsk(%struct.firedtv* %30, %struct.dvb_frontend_parameters* %31)
  store i32 %32, i32* %6, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %35 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %36 = call i32 @avc_tuner_dsd_dvb_c(%struct.firedtv* %34, %struct.dvb_frontend_parameters* %35)
  store i32 %36, i32* %6, align 4
  br label %43

37:                                               ; preds = %2
  %38 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %39 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %40 = call i32 @avc_tuner_dsd_dvb_t(%struct.firedtv* %38, %struct.dvb_frontend_parameters* %39)
  store i32 %40, i32* %6, align 4
  br label %43

41:                                               ; preds = %2
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %41, %37, %33, %29
  %44 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @pad_operands(%struct.avc_command_frame* %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 3, %47
  %49 = call i32 @ALIGN(i32 %48, i32 4)
  %50 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %51 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %53 = call i32 @avc_write(%struct.firedtv* %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %55 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = call i32 @msleep(i32 500)
  br label %61

61:                                               ; preds = %59, %43
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @avc_tuner_tuneqpsk(%struct.firedtv*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @avc_tuner_dsd_dvb_c(%struct.firedtv*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @avc_tuner_dsd_dvb_t(%struct.firedtv*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @pad_operands(%struct.avc_command_frame*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
