; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24123_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@XTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"srate=%d, ratio=0x%08x, sample_rate=%i sample_gain=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24123_state*, i32)* @cx24123_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_set_symbolrate(%struct.cx24123_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24123_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx24123_state* %0, %struct.cx24123_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %13 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %11, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %22 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19, %2
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %161

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @XTAL, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sdiv i32 %34, 2
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 2, i32* %10, align 4
  br label %87

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @XTAL, align 4
  %41 = mul nsw i32 %40, 3
  %42 = sdiv i32 %41, 2
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 3, i32* %10, align 4
  br label %86

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @XTAL, align 4
  %48 = mul nsw i32 %47, 4
  %49 = sdiv i32 %48, 2
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 4, i32* %10, align 4
  br label %85

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @XTAL, align 4
  %55 = mul nsw i32 %54, 5
  %56 = sdiv i32 %55, 2
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 5, i32* %10, align 4
  br label %84

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @XTAL, align 4
  %62 = mul nsw i32 %61, 6
  %63 = sdiv i32 %62, 2
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 6, i32* %10, align 4
  br label %83

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @XTAL, align 4
  %69 = mul nsw i32 %68, 7
  %70 = sdiv i32 %69, 2
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 7, i32* %10, align 4
  br label %82

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @XTAL, align 4
  %76 = mul nsw i32 %75, 8
  %77 = sdiv i32 %76, 2
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 8, i32* %10, align 4
  br label %81

80:                                               ; preds = %73
  store i32 9, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81, %72
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %51
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86, %37
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @XTAL, align 4
  %90 = mul nsw i32 %88, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %5, align 4
  %92 = shl i32 %91, 6
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = srem i32 %96, %97
  %99 = shl i32 %98, 6
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  %101 = shl i32 %100, 6
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sdiv i32 %102, %103
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = srem i32 %106, %107
  %109 = shl i32 %108, 6
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %8, align 4
  %111 = shl i32 %110, 6
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sdiv i32 %112, %113
  %115 = add nsw i32 %111, %114
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = srem i32 %116, %117
  %119 = shl i32 %118, 5
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %8, align 4
  %121 = shl i32 %120, 5
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sdiv i32 %122, %123
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %8, align 4
  %126 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 %127, 6
  %129 = call i32 @cx24123_writereg(%struct.cx24123_state* %126, i32 1, i32 %128)
  %130 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %131 = load i32, i32* %8, align 4
  %132 = ashr i32 %131, 16
  %133 = and i32 %132, 63
  %134 = call i32 @cx24123_writereg(%struct.cx24123_state* %130, i32 8, i32 %133)
  %135 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %136 = load i32, i32* %8, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = call i32 @cx24123_writereg(%struct.cx24123_state* %135, i32 9, i32 %138)
  %140 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, 255
  %143 = call i32 @cx24123_writereg(%struct.cx24123_state* %140, i32 10, i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @cx24123_int_log2(i32 %144, i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %148 = call i32 @cx24123_readreg(%struct.cx24123_state* %147, i32 12)
  %149 = and i32 %148, -225
  store i32 %149, i32* %6, align 4
  %150 = load %struct.cx24123_state*, %struct.cx24123_state** %4, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %9, align 4
  %153 = shl i32 %152, 5
  %154 = or i32 %151, %153
  %155 = call i32 @cx24123_writereg(%struct.cx24123_state* %150, i32 12, i32 %154)
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %157, i32 %158, i32 %159)
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %87, %28
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @cx24123_writereg(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @cx24123_int_log2(i32, i32) #1

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
