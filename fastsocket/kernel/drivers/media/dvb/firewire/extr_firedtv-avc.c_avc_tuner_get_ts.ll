; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_get_ts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_get_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i64, i32, i32, i64 }
%struct.avc_command_frame = type { i32, i32*, i32, i32 }

@AVC_CTYPE_CONTROL = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_DSIT = common dso_local global i32 0, align 4
@FIREDTV_DVB_T = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_tuner_get_ts(%struct.firedtv* %0) #0 {
  %2 = alloca %struct.firedtv*, align 8
  %3 = alloca %struct.avc_command_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %2, align 8
  %6 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %7 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %10, %struct.avc_command_frame** %3, align 8
  %11 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %12 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %11, i32 0, i32 3
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @AVC_CTYPE_CONTROL, align 4
  %15 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %16 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %18 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %19 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  %22 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %23 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @AVC_OPCODE_DSIT, align 4
  %25 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %26 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %28 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FIREDTV_DVB_T, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 12, i32 17
  store i32 %33, i32* %5, align 4
  %34 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %35 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %39 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 210, i32* %41, align 4
  %42 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %43 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 255, i32* %45, align 4
  %46 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %47 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 32, i32* %49, align 4
  %50 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %51 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 0, i32* %53, align 4
  %54 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %55 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %60 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  store i32 %58, i32* %62, align 4
  %63 = load %struct.avc_command_frame*, %struct.avc_command_frame** %3, align 8
  %64 = call i32 @clear_operands(%struct.avc_command_frame* %63, i32 7, i32 24)
  %65 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %66 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FIREDTV_DVB_T, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 24, i32 28
  %72 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %73 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %75 = call i32 @avc_write(%struct.firedtv* %74)
  store i32 %75, i32* %4, align 4
  %76 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %77 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %76, i32 0, i32 3
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %1
  %82 = call i32 @msleep(i32 250)
  br label %83

83:                                               ; preds = %81, %1
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_operands(%struct.avc_command_frame*, i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
