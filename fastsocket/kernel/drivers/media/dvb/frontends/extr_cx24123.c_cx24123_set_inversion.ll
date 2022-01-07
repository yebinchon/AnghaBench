; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_inversion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_inversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24123_state = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"inversion off\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"inversion on\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"inversion auto\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24123_state*, i32)* @cx24123_set_inversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_set_inversion(%struct.cx24123_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24123_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx24123_state* %0, %struct.cx24123_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %9 = call i32 @cx24123_readreg(%struct.cx24123_state* %8, i32 14)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %11 = call i32 @cx24123_readreg(%struct.cx24123_state* %10, i32 16)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %39 [
    i32 129, label %13
    i32 128, label %23
    i32 130, label %33
  ]

13:                                               ; preds = %2
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -129
  %18 = call i32 @cx24123_writereg(%struct.cx24123_state* %15, i32 14, i32 %17)
  %19 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 128
  %22 = call i32 @cx24123_writereg(%struct.cx24123_state* %19, i32 16, i32 %21)
  br label %42

23:                                               ; preds = %2
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, 128
  %28 = call i32 @cx24123_writereg(%struct.cx24123_state* %25, i32 14, i32 %27)
  %29 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 128
  %32 = call i32 @cx24123_writereg(%struct.cx24123_state* %29, i32 16, i32 %31)
  br label %42

33:                                               ; preds = %2
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, -129
  %38 = call i32 @cx24123_writereg(%struct.cx24123_state* %35, i32 16, i32 %37)
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %33, %23, %13
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %3, align 4
  ret i32 %44
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
