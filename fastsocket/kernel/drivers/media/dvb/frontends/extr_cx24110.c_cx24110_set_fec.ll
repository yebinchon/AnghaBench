; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_set_fec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_set_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24110_state = type { i32 }

@cx24110_set_fec.rate = internal constant [7 x i32] [i32 -1, i32 1, i32 2, i32 3, i32 5, i32 7, i32 -1], align 16
@cx24110_set_fec.g1 = internal constant [7 x i32] [i32 -1, i32 1, i32 2, i32 5, i32 21, i32 69, i32 -1], align 16
@cx24110_set_fec.g2 = internal constant [7 x i32] [i32 -1, i32 1, i32 3, i32 6, i32 26, i32 122, i32 -1], align 16
@FEC_AUTO = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24110_state*, i64)* @cx24110_set_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_set_fec(%struct.cx24110_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24110_state*, align 8
  %5 = alloca i64, align 8
  store %struct.cx24110_state* %0, %struct.cx24110_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FEC_AUTO, align 8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @FEC_AUTO, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @FEC_AUTO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %17 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %18 = call i32 @cx24110_readreg(%struct.cx24110_state* %17, i32 55)
  %19 = and i32 %18, 223
  %20 = call i32 @cx24110_writereg(%struct.cx24110_state* %16, i32 55, i32 %19)
  %21 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %22 = call i32 @cx24110_writereg(%struct.cx24110_state* %21, i32 24, i32 174)
  %23 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %24 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %25 = call i32 @cx24110_readreg(%struct.cx24110_state* %24, i32 5)
  %26 = and i32 %25, 240
  %27 = or i32 %26, 3
  %28 = call i32 @cx24110_writereg(%struct.cx24110_state* %23, i32 5, i32 %27)
  %29 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %30 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %31 = call i32 @cx24110_readreg(%struct.cx24110_state* %30, i32 34)
  %32 = and i32 %31, 240
  %33 = or i32 %32, 3
  %34 = call i32 @cx24110_writereg(%struct.cx24110_state* %29, i32 34, i32 %33)
  %35 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %36 = call i32 @cx24110_writereg(%struct.cx24110_state* %35, i32 26, i32 5)
  %37 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %38 = call i32 @cx24110_writereg(%struct.cx24110_state* %37, i32 27, i32 6)
  store i32 0, i32* %3, align 4
  br label %83

39:                                               ; preds = %11
  %40 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %41 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %42 = call i32 @cx24110_readreg(%struct.cx24110_state* %41, i32 55)
  %43 = or i32 %42, 32
  %44 = call i32 @cx24110_writereg(%struct.cx24110_state* %40, i32 55, i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* @cx24110_set_fec.rate, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %39
  %50 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %51 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %52 = call i32 @cx24110_readreg(%struct.cx24110_state* %51, i32 5)
  %53 = and i32 %52, 240
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds [7 x i32], [7 x i32]* @cx24110_set_fec.rate, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = call i32 @cx24110_writereg(%struct.cx24110_state* %50, i32 5, i32 %57)
  %59 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %60 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %61 = call i32 @cx24110_readreg(%struct.cx24110_state* %60, i32 34)
  %62 = and i32 %61, 240
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds [7 x i32], [7 x i32]* @cx24110_set_fec.rate, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  %67 = call i32 @cx24110_writereg(%struct.cx24110_state* %59, i32 34, i32 %66)
  %68 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds [7 x i32], [7 x i32]* @cx24110_set_fec.g1, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cx24110_writereg(%struct.cx24110_state* %68, i32 26, i32 %71)
  %73 = load %struct.cx24110_state*, %struct.cx24110_state** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* @cx24110_set_fec.g2, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cx24110_writereg(%struct.cx24110_state* %73, i32 27, i32 %76)
  br label %81

78:                                               ; preds = %39
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %49
  br label %82

82:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %78, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @cx24110_writereg(%struct.cx24110_state*, i32, i32) #1

declare dso_local i32 @cx24110_readreg(%struct.cx24110_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
