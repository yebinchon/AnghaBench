; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_fec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24123_state = type { i32 }

@FEC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"set FEC to 1/2\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"set FEC to 2/3\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"set FEC to 3/4\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"set FEC to 4/5\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"set FEC to 5/6\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"set FEC to 6/7\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"set FEC to 7/8\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"set FEC to auto\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24123_state*, i32)* @cx24123_set_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_set_fec(%struct.cx24123_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24123_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx24123_state* %0, %struct.cx24123_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %8 = call i32 @cx24123_readreg(%struct.cx24123_state* %7, i32 14)
  %9 = and i32 %8, -8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FEC_NONE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 128
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 128, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 135
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %22 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %23 = call i32 @cx24123_readreg(%struct.cx24123_state* %22, i32 67)
  %24 = or i32 %23, 1
  %25 = call i32 @cx24123_writereg(%struct.cx24123_state* %21, i32 67, i32 %24)
  br label %32

26:                                               ; preds = %17
  %27 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %28 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %29 = call i32 @cx24123_readreg(%struct.cx24123_state* %28, i32 67)
  %30 = and i32 %29, -2
  %31 = call i32 @cx24123_writereg(%struct.cx24123_state* %27, i32 67, i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %94 [
    i32 135, label %34
    i32 134, label %42
    i32 133, label %50
    i32 132, label %58
    i32 131, label %66
    i32 130, label %74
    i32 129, label %82
    i32 128, label %90
  ]

34:                                               ; preds = %32
  %35 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, 1
  %39 = call i32 @cx24123_writereg(%struct.cx24123_state* %36, i32 14, i32 %38)
  %40 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %41 = call i32 @cx24123_writereg(%struct.cx24123_state* %40, i32 15, i32 2)
  br label %97

42:                                               ; preds = %32
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, 2
  %47 = call i32 @cx24123_writereg(%struct.cx24123_state* %44, i32 14, i32 %46)
  %48 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %49 = call i32 @cx24123_writereg(%struct.cx24123_state* %48, i32 15, i32 4)
  br label %97

50:                                               ; preds = %32
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, 3
  %55 = call i32 @cx24123_writereg(%struct.cx24123_state* %52, i32 14, i32 %54)
  %56 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %57 = call i32 @cx24123_writereg(%struct.cx24123_state* %56, i32 15, i32 8)
  br label %97

58:                                               ; preds = %32
  %59 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, 4
  %63 = call i32 @cx24123_writereg(%struct.cx24123_state* %60, i32 14, i32 %62)
  %64 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %65 = call i32 @cx24123_writereg(%struct.cx24123_state* %64, i32 15, i32 16)
  br label %97

66:                                               ; preds = %32
  %67 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, 5
  %71 = call i32 @cx24123_writereg(%struct.cx24123_state* %68, i32 14, i32 %70)
  %72 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %73 = call i32 @cx24123_writereg(%struct.cx24123_state* %72, i32 15, i32 32)
  br label %97

74:                                               ; preds = %32
  %75 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, 6
  %79 = call i32 @cx24123_writereg(%struct.cx24123_state* %76, i32 14, i32 %78)
  %80 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %81 = call i32 @cx24123_writereg(%struct.cx24123_state* %80, i32 15, i32 64)
  br label %97

82:                                               ; preds = %32
  %83 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %84 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, 7
  %87 = call i32 @cx24123_writereg(%struct.cx24123_state* %84, i32 14, i32 %86)
  %88 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %89 = call i32 @cx24123_writereg(%struct.cx24123_state* %88, i32 15, i32 128)
  br label %97

90:                                               ; preds = %32
  %91 = call i32 @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %92 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %93 = call i32 @cx24123_writereg(%struct.cx24123_state* %92, i32 15, i32 254)
  br label %97

94:                                               ; preds = %32
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %90, %82, %74, %66, %58, %50, %42, %34
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_writereg(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
