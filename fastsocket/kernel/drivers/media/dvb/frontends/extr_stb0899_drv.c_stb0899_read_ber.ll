; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_read_ber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32, i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32, i32 }

@STB0899_ECNT1L = common dso_local global i32 0, align 4
@STB0899_ECNT1M = common dso_local global i32 0, align 4
@VSTATUS_PRFVIT = common dso_local global i32 0, align 4
@NOE = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb0899_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %12, align 8
  store %struct.stb0899_state* %13, %struct.stb0899_state** %6, align 8
  %14 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %15 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %14, i32 0, i32 2
  store %struct.stb0899_internal* %15, %struct.stb0899_internal** %7, align 8
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %18 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %119 [
    i32 129, label %20
    i32 130, label %20
    i32 128, label %76
  ]

20:                                               ; preds = %2, %2
  %21 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %22 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = call i32 @msleep(i32 100)
  %31 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %32 = load i32, i32* @STB0899_ECNT1L, align 4
  %33 = call i32 @stb0899_read_reg(%struct.stb0899_state* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %35 = load i32, i32* @STB0899_ECNT1M, align 4
  %36 = call i32 @stb0899_read_reg(%struct.stb0899_state* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MAKEWORD16(i32 %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 5
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @VSTATUS_PRFVIT, align 4
  %51 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %52 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @STB0899_GETFIELD(i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %46
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 9766
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @NOE, align 4
  %61 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %62 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @STB0899_GETFIELD(i32 %60, i32 %63)
  %65 = mul nsw i32 2, %64
  %66 = shl i32 1, %65
  %67 = add nsw i32 -1, %66
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 8
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %56, %46
  br label %75

75:                                               ; preds = %74, %20
  br label %127

76:                                               ; preds = %2
  %77 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %78 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %99, %81
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 5
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = call i32 @msleep(i32 100)
  %87 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %88 = load i32, i32* @STB0899_ECNT1L, align 4
  %89 = call i32 @stb0899_read_reg(%struct.stb0899_state* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %91 = load i32, i32* @STB0899_ECNT1M, align 4
  %92 = call i32 @stb0899_read_reg(%struct.stb0899_state* %90, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @MAKEWORD16(i32 %93, i32 %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %82

102:                                              ; preds = %82
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 10000000
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @NOE, align 4
  %107 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %108 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @STB0899_GETFIELD(i32 %106, i32 %109)
  %111 = mul nsw i32 2, %110
  %112 = add nsw i32 4, %111
  %113 = shl i32 1, %112
  %114 = add nsw i32 -1, %113
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %102, %76
  br label %127

119:                                              ; preds = %2
  %120 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %121 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FE_DEBUG, align 4
  %124 = call i32 @dprintk(i32 %122, i32 %123, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %128

127:                                              ; preds = %118, %75
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %119
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
