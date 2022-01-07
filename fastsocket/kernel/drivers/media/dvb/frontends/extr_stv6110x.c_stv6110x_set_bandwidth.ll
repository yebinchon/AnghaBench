; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv6110x_state* }
%struct.stv6110x_state = type { i32* }

@STV6110x_CTRL3 = common dso_local global i64 0, align 8
@CTRL3_CF = common dso_local global i32 0, align 4
@CTRL3_RCCLK_OFF = common dso_local global i32 0, align 4
@STV6110x_STAT1 = common dso_local global i64 0, align 8
@STAT1_CALRC_STRT = common dso_local global i32 0, align 4
@TRIALS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv6110x_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110x_set_bandwidth(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stv6110x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stv6110x_state*, %struct.stv6110x_state** %9, align 8
  store %struct.stv6110x_state* %10, %struct.stv6110x_state** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 36000000
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %17 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @STV6110x_CTRL3, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CTRL3_CF, align 4
  %23 = call i32 @STV6110x_SETFIELD(i32 %21, i32 %22, i32 31)
  br label %49

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 5000000
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %29 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @STV6110x_CTRL3, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CTRL3_CF, align 4
  %35 = call i32 @STV6110x_SETFIELD(i32 %33, i32 %34, i32 0)
  br label %48

36:                                               ; preds = %24
  %37 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %38 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @STV6110x_CTRL3, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CTRL3_CF, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sdiv i32 %44, 1000000
  %46 = sub nsw i32 %45, 5
  %47 = call i32 @STV6110x_SETFIELD(i32 %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %36, %27
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %51 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @STV6110x_CTRL3, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CTRL3_RCCLK_OFF, align 4
  %57 = call i32 @STV6110x_SETFIELD(i32 %55, i32 %56, i32 0)
  %58 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %59 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @STV6110x_STAT1, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @STAT1_CALRC_STRT, align 4
  %65 = call i32 @STV6110x_SETFIELD(i32 %63, i32 %64, i32 1)
  %66 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %67 = load i64, i64* @STV6110x_CTRL3, align 8
  %68 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %69 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @STV6110x_CTRL3, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @stv6110x_write_reg(%struct.stv6110x_state* %66, i64 %67, i32 %73)
  %75 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %76 = load i64, i64* @STV6110x_STAT1, align 8
  %77 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %78 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @STV6110x_STAT1, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @stv6110x_write_reg(%struct.stv6110x_state* %75, i64 %76, i32 %82)
  store i64 0, i64* %7, align 8
  br label %84

84:                                               ; preds = %109, %49
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @TRIALS, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %84
  %89 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %90 = load i64, i64* @STV6110x_STAT1, align 8
  %91 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %92 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @STV6110x_STAT1, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = call i32 @stv6110x_read_reg(%struct.stv6110x_state* %89, i64 %90, i32* %95)
  %97 = load i32, i32* @STAT1_CALRC_STRT, align 4
  %98 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %99 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @STV6110x_STAT1, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @STV6110x_GETFIELD(i32 %97, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %88
  br label %112

107:                                              ; preds = %88
  %108 = call i32 @msleep(i32 1)
  br label %109

109:                                              ; preds = %107
  %110 = load i64, i64* %7, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %7, align 8
  br label %84

112:                                              ; preds = %106, %84
  %113 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %114 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @STV6110x_CTRL3, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CTRL3_RCCLK_OFF, align 4
  %120 = call i32 @STV6110x_SETFIELD(i32 %118, i32 %119, i32 1)
  %121 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %122 = load i64, i64* @STV6110x_CTRL3, align 8
  %123 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %124 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @STV6110x_CTRL3, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @stv6110x_write_reg(%struct.stv6110x_state* %121, i64 %122, i32 %128)
  ret i32 0
}

declare dso_local i32 @STV6110x_SETFIELD(i32, i32, i32) #1

declare dso_local i32 @stv6110x_write_reg(%struct.stv6110x_state*, i64, i32) #1

declare dso_local i32 @stv6110x_read_reg(%struct.stv6110x_state*, i64, i32*) #1

declare dso_local i32 @STV6110x_GETFIELD(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
