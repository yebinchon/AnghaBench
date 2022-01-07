; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_get_fec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_get_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24123_state = type { i32 }

@FEC_1_2 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@FEC_4_5 = common dso_local global i32 0, align 4
@FEC_5_6 = common dso_local global i32 0, align 4
@FEC_6_7 = common dso_local global i32 0, align 4
@FEC_7_8 = common dso_local global i32 0, align 4
@FEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24123_state*, i32*)* @cx24123_get_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_get_fec(%struct.cx24123_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24123_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.cx24123_state* %0, %struct.cx24123_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %8 = call i32 @cx24123_readreg(%struct.cx24123_state* %7, i32 27)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 7
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %38 [
    i32 1, label %17
    i32 2, label %20
    i32 3, label %23
    i32 4, label %26
    i32 5, label %29
    i32 6, label %32
    i32 7, label %35
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @FEC_1_2, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %41

20:                                               ; preds = %13
  %21 = load i32, i32* @FEC_2_3, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %41

23:                                               ; preds = %13
  %24 = load i32, i32* @FEC_3_4, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %41

26:                                               ; preds = %13
  %27 = load i32, i32* @FEC_4_5, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %41

29:                                               ; preds = %13
  %30 = load i32, i32* @FEC_5_6, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %41

32:                                               ; preds = %13
  %33 = load i32, i32* @FEC_6_7, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %41

35:                                               ; preds = %13
  %36 = load i32, i32* @FEC_7_8, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %41

38:                                               ; preds = %13
  %39 = load i32, i32* @FEC_NONE, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35, %32, %29, %26, %23, %20, %17
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
