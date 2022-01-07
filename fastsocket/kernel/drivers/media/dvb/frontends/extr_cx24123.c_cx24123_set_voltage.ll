; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24123_state* }
%struct.cx24123_state = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"setting voltage 13V\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"setting voltage 18V\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @cx24123_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx24123_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %9, align 8
  store %struct.cx24123_state* %10, %struct.cx24123_state** %6, align 8
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %12 = call i32 @cx24123_readreg(%struct.cx24123_state* %11, i32 41)
  %13 = and i32 %12, -65
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %28 [
    i32 130, label %15
    i32 129, label %21
    i32 128, label %27
  ]

15:                                               ; preds = %2
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 127
  %20 = call i32 @cx24123_writereg(%struct.cx24123_state* %17, i32 41, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %2
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 128
  %26 = call i32 @cx24123_writereg(%struct.cx24123_state* %23, i32 41, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %27, %21, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cx24123_writereg(%struct.cx24123_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
