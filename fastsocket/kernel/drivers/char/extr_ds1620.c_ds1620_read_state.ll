; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ds1620.c_ds1620_read_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ds1620.c_ds1620_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.therm = type { i8*, i8* }

@THERM_READ_TL = common dso_local global i32 0, align 4
@THERM_READ_TH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.therm*)* @ds1620_read_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1620_read_state(%struct.therm* %0) #0 {
  %2 = alloca %struct.therm*, align 8
  store %struct.therm* %0, %struct.therm** %2, align 8
  %3 = load i32, i32* @THERM_READ_TL, align 4
  %4 = call i32 @ds1620_in(i32 %3, i32 9)
  %5 = call i8* @cvt_9_to_int(i32 %4)
  %6 = load %struct.therm*, %struct.therm** %2, align 8
  %7 = getelementptr inbounds %struct.therm, %struct.therm* %6, i32 0, i32 1
  store i8* %5, i8** %7, align 8
  %8 = load i32, i32* @THERM_READ_TH, align 4
  %9 = call i32 @ds1620_in(i32 %8, i32 9)
  %10 = call i8* @cvt_9_to_int(i32 %9)
  %11 = load %struct.therm*, %struct.therm** %2, align 8
  %12 = getelementptr inbounds %struct.therm, %struct.therm* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  ret void
}

declare dso_local i8* @cvt_9_to_int(i32) #1

declare dso_local i32 @ds1620_in(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
