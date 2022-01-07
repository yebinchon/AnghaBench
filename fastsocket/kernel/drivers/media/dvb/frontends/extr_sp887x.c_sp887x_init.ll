; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp887x.c_sp887x_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp887x.c_sp887x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.sp887x_state* }
%struct.sp887x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*, %struct.firmware**, i32)* }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"sp887x: waiting for firmware upload (%s)...\0A\00", align 1
@SP887X_DEFAULT_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"sp887x: no firmware upload (timeout or file not found?)\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"sp887x: writing firmware to device failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"sp887x: firmware upload complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @sp887x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp887x_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.sp887x_state*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.sp887x_state*, %struct.sp887x_state** %8, align 8
  store %struct.sp887x_state* %9, %struct.sp887x_state** %4, align 8
  store %struct.firmware* null, %struct.firmware** %5, align 8
  %10 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %11 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @SP887X_DEFAULT_FIRMWARE, align 4
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %18 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i32)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i32)** %20, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = load i32, i32* @SP887X_DEFAULT_FIRMWARE, align 4
  %24 = call i32 %21(%struct.dvb_frontend* %22, %struct.firmware** %5, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %14
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = load %struct.firmware*, %struct.firmware** %5, align 8
  %33 = call i32 @sp887x_initial_setup(%struct.dvb_frontend* %31, %struct.firmware* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.firmware*, %struct.firmware** %5, align 8
  %35 = call i32 @release_firmware(%struct.firmware* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %30
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %44 = getelementptr inbounds %struct.sp887x_state, %struct.sp887x_state* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %1
  %46 = load %struct.sp887x_state*, %struct.sp887x_state** %4, align 8
  %47 = call i32 @sp887x_writereg(%struct.sp887x_state* %46, i32 3096, i32 13)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %38, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @sp887x_initial_setup(%struct.dvb_frontend*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @sp887x_writereg(%struct.sp887x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
