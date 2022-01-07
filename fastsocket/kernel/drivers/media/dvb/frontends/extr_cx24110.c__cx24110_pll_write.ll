; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c__cx24110_pll_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c__cx24110_pll_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24110_state* }
%struct.cx24110_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32)* @_cx24110_pll_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cx24110_pll_write(%struct.dvb_frontend* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.cx24110_state*, %struct.cx24110_state** %10, align 8
  store %struct.cx24110_state* %11, %struct.cx24110_state** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %71

17:                                               ; preds = %3
  %18 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %19 = call i32 @cx24110_writereg(%struct.cx24110_state* %18, i32 109, i32 48)
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %21 = call i32 @cx24110_writereg(%struct.cx24110_state* %20, i32 112, i32 21)
  br label %22

22:                                               ; preds = %27, %17
  %23 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %24 = call i32 @cx24110_readreg(%struct.cx24110_state* %23, i32 109)
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %29 = call i32 @cx24110_writereg(%struct.cx24110_state* %28, i32 114, i32 0)
  br label %22

30:                                               ; preds = %22
  %31 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cx24110_writereg(%struct.cx24110_state* %31, i32 114, i32 %34)
  br label %36

36:                                               ; preds = %41, %30
  %37 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %38 = call i32 @cx24110_readreg(%struct.cx24110_state* %37, i32 109)
  %39 = and i32 %38, 192
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %36

42:                                               ; preds = %36
  %43 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cx24110_writereg(%struct.cx24110_state* %43, i32 114, i32 %46)
  br label %48

48:                                               ; preds = %53, %42
  %49 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %50 = call i32 @cx24110_readreg(%struct.cx24110_state* %49, i32 109)
  %51 = and i32 %50, 192
  %52 = icmp eq i32 %51, 128
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %48

54:                                               ; preds = %48
  %55 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cx24110_writereg(%struct.cx24110_state* %55, i32 114, i32 %58)
  br label %60

60:                                               ; preds = %65, %54
  %61 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %62 = call i32 @cx24110_readreg(%struct.cx24110_state* %61, i32 109)
  %63 = and i32 %62, 192
  %64 = icmp eq i32 %63, 128
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %60

66:                                               ; preds = %60
  %67 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %68 = call i32 @cx24110_writereg(%struct.cx24110_state* %67, i32 109, i32 50)
  %69 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %70 = call i32 @cx24110_writereg(%struct.cx24110_state* %69, i32 109, i32 48)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %14
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @cx24110_writereg(%struct.cx24110_state*, i32, i32) #1

declare dso_local i32 @cx24110_readreg(%struct.cx24110_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
