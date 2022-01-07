; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_jornada680_kbd.c_jornadakbd680_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_jornada680_kbd.c_jornadakbd680_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.jornadakbd* }
%struct.jornadakbd = type { i32, i32 }

@JORNADA_SCAN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @jornadakbd680_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jornadakbd680_poll(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.jornadakbd*, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %4 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %5 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %4, i32 0, i32 0
  %6 = load %struct.jornadakbd*, %struct.jornadakbd** %5, align 8
  store %struct.jornadakbd* %6, %struct.jornadakbd** %3, align 8
  %7 = load %struct.jornadakbd*, %struct.jornadakbd** %3, align 8
  %8 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @jornada_scan_keyb(i32 %9)
  %11 = load %struct.jornadakbd*, %struct.jornadakbd** %3, align 8
  %12 = call i32 @jornada_parse_kbd(%struct.jornadakbd* %11)
  %13 = load %struct.jornadakbd*, %struct.jornadakbd** %3, align 8
  %14 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.jornadakbd*, %struct.jornadakbd** %3, align 8
  %17 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @JORNADA_SCAN_SIZE, align 4
  %20 = call i32 @memcpy(i32 %15, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @jornada_scan_keyb(i32) #1

declare dso_local i32 @jornada_parse_kbd(%struct.jornadakbd*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
