; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_emit_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_emit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.sclp_buffer = type { i64, void (%struct.sclp_buffer*, i32)*, %struct.TYPE_8__, %struct.write_sccb*, i32* }
%struct.TYPE_8__ = type { %struct.write_sccb*, %struct.sclp_buffer*, i32, i32, i32 }
%struct.write_sccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@sclp_rw_event = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@EVTYP_MSG_MASK = common dso_local global i32 0, align 4
@EVTYP_MSG = common dso_local global i32 0, align 4
@EVTYP_PMSGCMD_MASK = common dso_local global i32 0, align 4
@EVTYP_PMSGCMD = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i32 0, align 4
@sclp_writedata_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_emit_buffer(%struct.sclp_buffer* %0, void (%struct.sclp_buffer*, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sclp_buffer*, align 8
  %5 = alloca void (%struct.sclp_buffer*, i32)*, align 8
  %6 = alloca %struct.write_sccb*, align 8
  store %struct.sclp_buffer* %0, %struct.sclp_buffer** %4, align 8
  store void (%struct.sclp_buffer*, i32)* %1, void (%struct.sclp_buffer*, i32)** %5, align 8
  %7 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %13 = call i32 @sclp_finalize_mto(%struct.sclp_buffer* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %14
  %23 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %23, i32 0, i32 3
  %25 = load %struct.write_sccb*, %struct.write_sccb** %24, align 8
  store %struct.write_sccb* %25, %struct.write_sccb** %6, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_rw_event, i32 0, i32 0), align 4
  %27 = load i32, i32* @EVTYP_MSG_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @EVTYP_MSG, align 4
  %32 = load %struct.write_sccb*, %struct.write_sccb** %6, align 8
  %33 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  br label %51

36:                                               ; preds = %22
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_rw_event, i32 0, i32 0), align 4
  %38 = load i32, i32* @EVTYP_PMSGCMD_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @EVTYP_PMSGCMD, align 4
  %43 = load %struct.write_sccb*, %struct.write_sccb** %6, align 8
  %44 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @ENOSYS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %78

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %53 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @SCLP_REQ_FILLED, align 4
  %57 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %58 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @sclp_writedata_callback, align 4
  %61 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %65 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store %struct.sclp_buffer* %64, %struct.sclp_buffer** %67, align 8
  %68 = load %struct.write_sccb*, %struct.write_sccb** %6, align 8
  %69 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %70 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store %struct.write_sccb* %68, %struct.write_sccb** %71, align 8
  %72 = load void (%struct.sclp_buffer*, i32)*, void (%struct.sclp_buffer*, i32)** %5, align 8
  %73 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %73, i32 0, i32 1
  store void (%struct.sclp_buffer*, i32)* %72, void (%struct.sclp_buffer*, i32)** %74, align 8
  %75 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %76 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %75, i32 0, i32 2
  %77 = call i32 @sclp_add_request(%struct.TYPE_8__* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %51, %47, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @sclp_finalize_mto(%struct.sclp_buffer*) #1

declare dso_local i32 @sclp_add_request(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
