; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"powermode : 774 : %x ; 775 : %x; 776 : %x ; 900 : %x; 1280 : %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, i32)* @dib8000_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_set_power_mode(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 16383, i32* %5, align 4
  store i32 65535, i32* %6, align 4
  store i32 65535, i32* %7, align 4
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %11 = call i32 @dib8000_read_word(%struct.dib8000_state* %10, i32 900)
  %12 = and i32 %11, 65532
  %13 = or i32 %12, 3
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %15 = call i32 @dib8000_read_word(%struct.dib8000_state* %14, i32 1280)
  %16 = and i32 %15, 255
  %17 = or i32 %16, 65280
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %27 [
    i32 129, label %19
    i32 128, label %24
  ]

19:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 65532
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %9, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 255
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %2, %24, %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dib8000_write_word(%struct.dib8000_state* %34, i32 774, i32 %35)
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dib8000_write_word(%struct.dib8000_state* %37, i32 775, i32 %38)
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dib8000_write_word(%struct.dib8000_state* %40, i32 776, i32 %41)
  %43 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dib8000_write_word(%struct.dib8000_state* %43, i32 900, i32 %44)
  %46 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dib8000_write_word(%struct.dib8000_state* %46, i32 1280, i32 %47)
  ret void
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
