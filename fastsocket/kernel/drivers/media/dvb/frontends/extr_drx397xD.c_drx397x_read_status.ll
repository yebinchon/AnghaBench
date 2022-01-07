; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_drx397xD.c_drx397x_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_drx397xD.c_drx397x_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.drx397xD_state* }
%struct.drx397xD_state = type { i32 }

@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @drx397x_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drx397x_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drx397xD_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.drx397xD_state*, %struct.drx397xD_state** %8, align 8
  store %struct.drx397xD_state* %9, %struct.drx397xD_state** %5, align 8
  %10 = load %struct.drx397xD_state*, %struct.drx397xD_state** %5, align 8
  %11 = call i32 @GetLockStatus(%struct.drx397xD_state* %10, i32* %6)
  %12 = load i32*, i32** %4, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.drx397xD_state*, %struct.drx397xD_state** %5, align 8
  %18 = call i32 @CorrectSysClockDeviation(%struct.drx397xD_state* %17)
  %19 = load %struct.drx397xD_state*, %struct.drx397xD_state** %5, align 8
  %20 = call i32 @ConfigureMPEGOutput(%struct.drx397xD_state* %19, i32 1)
  %21 = load i32, i32* @FE_HAS_LOCK, align 4
  %22 = load i32, i32* @FE_HAS_SYNC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FE_HAS_VITERBI, align 4
  %25 = or i32 %23, %24
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %16, %2
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @FE_HAS_CARRIER, align 4
  %33 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %27
  ret i32 0
}

declare dso_local i32 @GetLockStatus(%struct.drx397xD_state*, i32*) #1

declare dso_local i32 @CorrectSysClockDeviation(%struct.drx397xD_state*) #1

declare dso_local i32 @ConfigureMPEGOutput(%struct.drx397xD_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
