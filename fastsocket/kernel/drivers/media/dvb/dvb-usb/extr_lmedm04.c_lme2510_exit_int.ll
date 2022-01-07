; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_exit_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_exit_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.dvb_usb_adapter*, %struct.lme2510_state* }
%struct.dvb_usb_adapter = type { i64, i32 }
%struct.lme2510_state = type { i32, %struct.TYPE_2__*, i32, i8*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Interupt Service Stopped\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Remote Stopped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lme2510_exit_int(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca %struct.lme2510_state*, align 8
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i8*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %6 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %6, i32 0, i32 3
  %8 = load %struct.lme2510_state*, %struct.lme2510_state** %7, align 8
  store %struct.lme2510_state* %8, %struct.lme2510_state** %3, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 2
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %10, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i64 0
  store %struct.dvb_usb_adapter* %12, %struct.dvb_usb_adapter** %4, align 8
  store i8* null, i8** %5, align 8
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %14 = icmp ne %struct.dvb_usb_adapter* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 1
  %18 = call i32 @lme2510_kill_urb(i32* %17)
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %23 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %60

26:                                               ; preds = %21
  %27 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %28 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %30 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %32 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %34 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %36 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %5, align 8
  %38 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %39 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @usb_kill_urb(%struct.TYPE_2__* %40)
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %46 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %49 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @usb_buffer_free(i32 %44, i32 5000, i32 %47, i32 %52)
  %54 = call i32 @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @rc_unregister_device(i32 %57)
  %59 = call i32 @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %26, %21
  %61 = load i8*, i8** %5, align 8
  ret i8* %61
}

declare dso_local i32 @lme2510_kill_urb(i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_2__*) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @rc_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
