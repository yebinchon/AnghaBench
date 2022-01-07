; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_set_dvbs2_rolloff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_set_dvbs2_rolloff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@MANUALSX_ROLLOFF = common dso_local global i32 0, align 4
@MATSTR1 = common dso_local global i32 0, align 4
@ROLLOFF_CONTROL = common dso_local global i32 0, align 4
@MANUALS2_ROLLOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0900_internal*, i32)* @stv0900_set_dvbs2_rolloff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0900_set_dvbs2_rolloff(%struct.stv0900_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.stv0900_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %7 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 16
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %12 = load i32, i32* @MANUALSX_ROLLOFF, align 4
  %13 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %11, i32 %12, i32 1)
  %14 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %15 = load i32, i32* @MATSTR1, align 4
  %16 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %14, i32 %15)
  %17 = and i32 %16, 3
  store i32 %17, i32* %5, align 4
  %18 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %19 = load i32, i32* @ROLLOFF_CONTROL, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %18, i32 %19, i32 %20)
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %24 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 32
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %29 = load i32, i32* @MANUALSX_ROLLOFF, align 4
  %30 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %28, i32 %29, i32 0)
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %33 = load i32, i32* @MANUALS2_ROLLOFF, align 4
  %34 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_read_reg(%struct.stv0900_internal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
