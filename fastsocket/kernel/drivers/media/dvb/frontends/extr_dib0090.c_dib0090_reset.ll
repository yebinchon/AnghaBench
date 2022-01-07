; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@dib0090_defaults = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Pll lock : %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib0090_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_reset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib0090_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib0090_state*, %struct.dib0090_state** %9, align 8
  store %struct.dib0090_state* %10, %struct.dib0090_state** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %13 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @dib0090_reset_digital(%struct.dvb_frontend* %11, %struct.TYPE_4__* %14)
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = call i32 @dib0090_identify(%struct.dvb_frontend* %16)
  %18 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %19 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %21 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 255
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %1
  %28 = load i64, i64* @dib0090_defaults, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %7, align 8
  %32 = ptrtoint i32* %30 to i32
  %33 = call i32 @pgm_read_word(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %56, %27
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  %40 = ptrtoint i32* %38 to i32
  %41 = call i32 @pgm_read_word(i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %52, %37
  %43 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  %47 = ptrtoint i32* %45 to i32
  %48 = call i32 @pgm_read_word(i32 %47)
  %49 = call i32 @dib0090_write_reg(%struct.dib0090_state* %43, i32 %44, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %42, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  %59 = ptrtoint i32* %57 to i32
  %60 = call i32 @pgm_read_word(i32 %59)
  store i32 %60, i32* %5, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %63 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 24000
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %71

70:                                               ; preds = %61
  store i32 2, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @dib0090_write_reg(%struct.dib0090_state* %72, i32 20, i32 %73)
  %75 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %76 = call i32 @dib0090_read_reg(%struct.dib0090_state* %75, i32 26)
  %77 = ashr i32 %76, 11
  %78 = and i32 %77, 1
  %79 = call i32 @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %81 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %80, i32 0, i32 1
  store i32 3, i32* %81, align 4
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %71, %24
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @dib0090_reset_digital(%struct.dvb_frontend*, %struct.TYPE_4__*) #1

declare dso_local i32 @dib0090_identify(%struct.dvb_frontend*) #1

declare dso_local i32 @pgm_read_word(i32) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
