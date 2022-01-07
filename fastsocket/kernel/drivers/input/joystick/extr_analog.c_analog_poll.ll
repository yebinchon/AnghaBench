; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.analog_port = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@ANALOG_SAITEK = common dso_local global i32 0, align 4
@ANALOG_ANY_CHF = common dso_local global i32 0, align 4
@analog_chf = common dso_local global i32* null, align 8
@ANALOG_AXIS_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @analog_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analog_poll(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.analog_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %7 = load %struct.gameport*, %struct.gameport** %2, align 8
  %8 = call %struct.analog_port* @gameport_get_drvdata(%struct.gameport* %7)
  store %struct.analog_port* %8, %struct.analog_port** %3, align 8
  %9 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %10 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ANALOG_SAITEK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %5, align 1
  %22 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %23 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ANALOG_ANY_CHF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %6, align 1
  %35 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %36 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %1
  %40 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %41 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %44 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %47 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %46, i32 0, i32 0
  %48 = call i64 @gameport_cooked_read(i32 %42, i32 %45, i32* %47)
  %49 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %50 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load i8, i8* %6, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %39
  %58 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %59 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32*, i32** @analog_chf, align 8
  %64 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %65 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 1, %69
  br label %72

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %62
  %73 = phi i32 [ %70, %62 ], [ 0, %71 ]
  %74 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %75 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %39
  %77 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %78 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %124

81:                                               ; preds = %1
  %82 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %83 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = icmp ne i64 %84, 0
  br i1 %86, label %114, label %87

87:                                               ; preds = %81
  %88 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %89 = call i64 @analog_cooked_read(%struct.analog_port* %88)
  %90 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %91 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %97 = load i8, i8* %5, align 1
  %98 = load i8, i8* %6, align 1
  %99 = call i64 @analog_button_read(%struct.analog_port* %96, i8 signext %97, i8 signext %98)
  %100 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %101 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %107 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load i64, i64* @ANALOG_AXIS_TIME, align 8
  %111 = sub nsw i64 %110, 1
  %112 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %113 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  br label %123

114:                                              ; preds = %81
  %115 = load i8, i8* %5, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %119 = load i8, i8* %5, align 1
  %120 = load i8, i8* %6, align 1
  %121 = call i64 @analog_button_read(%struct.analog_port* %118, i8 signext %119, i8 signext %120)
  br label %122

122:                                              ; preds = %117, %114
  br label %123

123:                                              ; preds = %122, %87
  br label %124

124:                                              ; preds = %123, %76
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %157, %124
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %126, 2
  br i1 %127, label %128, label %160

128:                                              ; preds = %125
  %129 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %130 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %129, i32 0, i32 3
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %128
  %139 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %140 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %139, i32 0, i32 3
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %146 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %149 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.analog_port*, %struct.analog_port** %3, align 8
  %152 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = call i32 @analog_decode(%struct.TYPE_2__* %144, i32 %147, i32 %150, i64 %154)
  br label %156

156:                                              ; preds = %138, %128
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %125

160:                                              ; preds = %125
  ret void
}

declare dso_local %struct.analog_port* @gameport_get_drvdata(%struct.gameport*) #1

declare dso_local i64 @gameport_cooked_read(i32, i32, i32*) #1

declare dso_local i64 @analog_cooked_read(%struct.analog_port*) #1

declare dso_local i64 @analog_button_read(%struct.analog_port*, i8 signext, i8 signext) #1

declare dso_local i32 @analog_decode(%struct.TYPE_2__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
