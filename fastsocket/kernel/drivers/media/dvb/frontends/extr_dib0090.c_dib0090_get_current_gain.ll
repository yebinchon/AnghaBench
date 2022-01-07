; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_get_current_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_get_current_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dib0090_get_current_gain(%struct.dvb_frontend* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dib0090_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.dib0090_state*, %struct.dib0090_state** %13, align 8
  store %struct.dib0090_state* %14, %struct.dib0090_state** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.dib0090_state*, %struct.dib0090_state** %11, align 8
  %19 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %5
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.dib0090_state*, %struct.dib0090_state** %11, align 8
  %29 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.dib0090_state*, %struct.dib0090_state** %11, align 8
  %39 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.dib0090_state*, %struct.dib0090_state** %11, align 8
  %47 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 10
  %50 = and i32 %49, 7
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
