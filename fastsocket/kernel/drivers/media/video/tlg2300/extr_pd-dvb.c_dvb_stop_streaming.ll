; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_dvb_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_dvb_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_dvb_adapter = type { i64*, i64, %struct.poseidon* }
%struct.poseidon = type { i32 }

@DVB_SBUF_NUM = common dso_local global i64 0, align 8
@PLAY_SERVICE = common dso_local global i32 0, align 4
@TLG_TUNE_PLAY_SVC_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_stop_streaming(%struct.pd_dvb_adapter* %0) #0 {
  %2 = alloca %struct.pd_dvb_adapter*, align 8
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pd_dvb_adapter* %0, %struct.pd_dvb_adapter** %2, align 8
  %7 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %7, i32 0, i32 2
  %9 = load %struct.poseidon*, %struct.poseidon** %8, align 8
  store %struct.poseidon* %9, %struct.poseidon** %3, align 8
  %10 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %11 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  %18 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %41, %17
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @DVB_SBUF_NUM, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @usb_kill_urb(i64 %38)
  br label %40

40:                                               ; preds = %32, %24
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %20

44:                                               ; preds = %20
  %45 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %46 = load i32, i32* @PLAY_SERVICE, align 4
  %47 = load i32, i32* @TLG_TUNE_PLAY_SVC_STOP, align 4
  %48 = call i64 @send_set_req(%struct.poseidon* %45, i32 %46, i32 %47, i64* %6)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = call i32 @log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %44
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %58 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i64 @send_set_req(%struct.poseidon*, i32, i32, i64*) #1

declare dso_local i32 @log(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
