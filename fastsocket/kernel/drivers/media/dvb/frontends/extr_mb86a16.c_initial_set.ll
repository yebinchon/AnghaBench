; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_initial_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_initial_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@MB86A16_CRLFILTCOEF1 = common dso_local global i32 0, align 4
@MB86A16_VIMAG = common dso_local global i32 0, align 4
@MB86A16_FAGCS1 = common dso_local global i32 0, align 4
@MB86A16_FAGCS2 = common dso_local global i32 0, align 4
@MB86A16_FAGCS3 = common dso_local global i32 0, align 4
@MB86A16_FAGCS4 = common dso_local global i32 0, align 4
@MB86A16_FAGCS5 = common dso_local global i32 0, align 4
@MB86A16_TSOUT = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*)* @initial_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initial_set(%struct.mb86a16_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mb86a16_state*, align 8
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %3, align 8
  %4 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %5 = call i64 @stlp_set(%struct.mb86a16_state* %4, i32 5, i32 7)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %80

8:                                                ; preds = %1
  %9 = call i32 @udelay(i32 100)
  %10 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %11 = call i64 @afcex_data_set(%struct.mb86a16_state* %10, i32 0, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %80

14:                                               ; preds = %8
  %15 = call i32 @udelay(i32 100)
  %16 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %17 = call i64 @afcofs_data_set(%struct.mb86a16_state* %16, i32 0, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %80

20:                                               ; preds = %14
  %21 = call i32 @udelay(i32 100)
  %22 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %23 = load i32, i32* @MB86A16_CRLFILTCOEF1, align 4
  %24 = call i64 @mb86a16_write(%struct.mb86a16_state* %22, i32 %23, i32 22)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %80

27:                                               ; preds = %20
  %28 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %29 = call i64 @mb86a16_write(%struct.mb86a16_state* %28, i32 47, i32 33)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %80

32:                                               ; preds = %27
  %33 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %34 = load i32, i32* @MB86A16_VIMAG, align 4
  %35 = call i64 @mb86a16_write(%struct.mb86a16_state* %33, i32 %34, i32 56)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %80

38:                                               ; preds = %32
  %39 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %40 = load i32, i32* @MB86A16_FAGCS1, align 4
  %41 = call i64 @mb86a16_write(%struct.mb86a16_state* %39, i32 %40, i32 0)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %80

44:                                               ; preds = %38
  %45 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %46 = load i32, i32* @MB86A16_FAGCS2, align 4
  %47 = call i64 @mb86a16_write(%struct.mb86a16_state* %45, i32 %46, i32 28)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %80

50:                                               ; preds = %44
  %51 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %52 = load i32, i32* @MB86A16_FAGCS3, align 4
  %53 = call i64 @mb86a16_write(%struct.mb86a16_state* %51, i32 %52, i32 32)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %80

56:                                               ; preds = %50
  %57 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %58 = load i32, i32* @MB86A16_FAGCS4, align 4
  %59 = call i64 @mb86a16_write(%struct.mb86a16_state* %57, i32 %58, i32 30)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %80

62:                                               ; preds = %56
  %63 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %64 = load i32, i32* @MB86A16_FAGCS5, align 4
  %65 = call i64 @mb86a16_write(%struct.mb86a16_state* %63, i32 %64, i32 35)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %80

68:                                               ; preds = %62
  %69 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %70 = call i64 @mb86a16_write(%struct.mb86a16_state* %69, i32 84, i32 255)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %80

73:                                               ; preds = %68
  %74 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %75 = load i32, i32* @MB86A16_TSOUT, align 4
  %76 = call i64 @mb86a16_write(%struct.mb86a16_state* %74, i32 %75, i32 0)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %80

79:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %86

80:                                               ; preds = %78, %72, %67, %61, %55, %49, %43, %37, %31, %26, %19, %13, %7
  %81 = load i32, i32* @verbose, align 4
  %82 = load i32, i32* @MB86A16_ERROR, align 4
  %83 = call i32 @dprintk(i32 %81, i32 %82, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EREMOTEIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %79
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @stlp_set(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @afcex_data_set(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i64 @afcofs_data_set(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i64 @mb86a16_write(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
