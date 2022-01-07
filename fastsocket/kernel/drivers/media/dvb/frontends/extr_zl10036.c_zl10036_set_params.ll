; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_zl10036.c_zl10036_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_zl10036.c_zl10036_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.zl10036_state* }
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i32, i32 }
%struct.zl10036_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@STATUS_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @zl10036_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl10036_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.zl10036_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.zl10036_state*, %struct.zl10036_state** %13, align 8
  store %struct.zl10036_state* %14, %struct.zl10036_state** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %26, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25, %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %146

36:                                               ; preds = %25
  %37 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 27, %41
  %43 = sdiv i32 %42, 32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 1000
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 3000
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 950000
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %146

53:                                               ; preds = %36
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 1250000
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %70

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 1750000
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %69

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 2175000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 2, i32* %11, align 4
  br label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %146

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %60
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %74, align 8
  %76 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %79 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %80, align 8
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %83 = bitcast %struct.dvb_frontend* %82 to %struct.dvb_frontend.0*
  %84 = call i32 %81(%struct.dvb_frontend.0* %83, i32 1)
  br label %85

85:                                               ; preds = %77, %71
  %86 = load %struct.zl10036_state*, %struct.zl10036_state** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @zl10036_set_gain_params(%struct.zl10036_state* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %130

92:                                               ; preds = %85
  %93 = load %struct.zl10036_state*, %struct.zl10036_state** %6, align 8
  %94 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %95 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @zl10036_set_frequency(%struct.zl10036_state* %93, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %130

101:                                              ; preds = %92
  %102 = load %struct.zl10036_state*, %struct.zl10036_state** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @zl10036_set_bandwidth(%struct.zl10036_state* %102, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %130

108:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %126, %108
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 20
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load %struct.zl10036_state*, %struct.zl10036_state** %6, align 8
  %114 = call i32 @zl10036_read_status_reg(%struct.zl10036_state* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %130

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @STATUS_FL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %129

124:                                              ; preds = %118
  %125 = call i32 @msleep(i32 10)
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %109

129:                                              ; preds = %123, %109
  br label %130

130:                                              ; preds = %129, %117, %107, %100, %91
  %131 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %132 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %133, align 8
  %135 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %138 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %139, align 8
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %142 = bitcast %struct.dvb_frontend* %141 to %struct.dvb_frontend.0*
  %143 = call i32 %140(%struct.dvb_frontend.0* %142, i32 0)
  br label %144

144:                                              ; preds = %136, %130
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %65, %50, %33
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @zl10036_set_gain_params(%struct.zl10036_state*, i32) #1

declare dso_local i32 @zl10036_set_frequency(%struct.zl10036_state*, i32) #1

declare dso_local i32 @zl10036_set_bandwidth(%struct.zl10036_state*, i32) #1

declare dso_local i32 @zl10036_read_status_reg(%struct.zl10036_state*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
