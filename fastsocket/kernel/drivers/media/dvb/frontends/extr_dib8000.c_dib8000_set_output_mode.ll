; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_output_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_set_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"-I-  Setting output mode for demod %p to %d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Unhandled output_mode passed to be set for demod %p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*, i32)* @dib8000_set_output_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_output_mode(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 517, i32* %9, align 4
  store i32 0, i32* %6, align 4
  store i32 1792, i32* %7, align 4
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %11 = call i32 @dib8000_read_word(%struct.dib8000_state* %10, i32 299)
  %12 = and i32 %11, 80
  %13 = or i32 %12, 2
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %15 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %14, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32* %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %42 [
    i32 129, label %19
    i32 130, label %20
    i32 128, label %21
    i32 133, label %22
    i32 131, label %35
    i32 132, label %38
    i32 134, label %39
  ]

19:                                               ; preds = %2
  store i32 1024, i32* %6, align 4
  br label %48

20:                                               ; preds = %2
  store i32 1088, i32* %6, align 4
  br label %48

21:                                               ; preds = %2
  store i32 1152, i32* %6, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  store i32 1280, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 65023
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, 3072
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %48

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, 6
  store i32 %37, i32* %8, align 4
  store i32 512, i32* %7, align 4
  store i32 1344, i32* %6, align 4
  br label %48

38:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %48

39:                                               ; preds = %2
  store i32 1216, i32* %6, align 4
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %41 = call i32 @dib8000_set_acquisition_mode(%struct.dib8000_state* %40)
  br label %48

42:                                               ; preds = %2
  %43 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %44 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %43, i32 0, i32 1
  %45 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %70

48:                                               ; preds = %39, %38, %35, %34, %21, %20, %19
  %49 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %50 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, 32
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dib8000_write_word(%struct.dib8000_state* %58, i32 299, i32 %59)
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @dib8000_write_word(%struct.dib8000_state* %61, i32 300, i32 %62)
  %64 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dib8000_write_word(%struct.dib8000_state* %64, i32 1286, i32 %65)
  %67 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dib8000_write_word(%struct.dib8000_state* %67, i32 1291, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %57, %42
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32*, ...) #1

declare dso_local i32 @dib8000_set_acquisition_mode(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
