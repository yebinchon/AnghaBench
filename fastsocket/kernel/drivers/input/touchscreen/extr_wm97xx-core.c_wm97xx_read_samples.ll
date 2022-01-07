; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_read_samples.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_read_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.wm97xx*, %struct.wm97xx_data*)* }
%struct.wm97xx_data = type { i32, i32, i32 }
%struct.TYPE_3__ = type { {}*, i64 }

@RC_PENUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pen up\0A\00", align 1
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@RC_AGAIN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RC_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"pen down: x=%x:%d, y=%x:%d, pressure=%x:%d\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@RC_PENDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"pen down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*)* @wm97xx_read_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_read_samples(%struct.wm97xx* %0) #0 {
  %2 = alloca %struct.wm97xx*, align 8
  %3 = alloca %struct.wm97xx_data, align 4
  %4 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %2, align 8
  %5 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %6 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %5, i32 0, i32 3
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %9 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %8, i32 0, i32 7
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %14 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %13, i32 0, i32 7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %21 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %20, i32 0, i32 7
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.wm97xx*)**
  %25 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %24, align 8
  %26 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %27 = call i32 %25(%struct.wm97xx* %26)
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %12, %1
  %29 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %30 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %29, i32 0, i32 6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.wm97xx*, %struct.wm97xx_data*)*, i32 (%struct.wm97xx*, %struct.wm97xx_data*)** %32, align 8
  %34 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %35 = call i32 %33(%struct.wm97xx* %34, %struct.wm97xx_data* %3)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %19
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @RC_PENUP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %36
  %42 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %43 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %48 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %50 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %54 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ABS_PRESSURE, align 4
  %57 = call i32 @input_report_abs(i32 %55, i32 %56, i32 0)
  %58 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %59 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BTN_TOUCH, align 4
  %62 = call i32 @input_report_key(i32 %60, i32 %61, i32 0)
  %63 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %64 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @input_sync(i32 %65)
  br label %86

67:                                               ; preds = %41
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RC_AGAIN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %67
  %73 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %74 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @HZ, align 4
  %77 = sdiv i32 %76, 10
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %81 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %79, %72
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %46
  br label %174

87:                                               ; preds = %36
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @RC_VALID, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %155

92:                                               ; preds = %87
  %93 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %94 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 12
  %99 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 4095
  %102 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 12
  %105 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 4095
  %108 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 12
  %111 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 4095
  %114 = call i32 (i32, i8*, ...) @dev_dbg(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101, i32 %104, i32 %107, i32 %110, i32 %113)
  %115 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %116 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ABS_X, align 4
  %119 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 4095
  %122 = call i32 @input_report_abs(i32 %117, i32 %118, i32 %121)
  %123 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %124 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ABS_Y, align 4
  %127 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 4095
  %130 = call i32 @input_report_abs(i32 %125, i32 %126, i32 %129)
  %131 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %132 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ABS_PRESSURE, align 4
  %135 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %3, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 4095
  %138 = call i32 @input_report_abs(i32 %133, i32 %134, i32 %137)
  %139 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %140 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @BTN_TOUCH, align 4
  %143 = call i32 @input_report_key(i32 %141, i32 %142, i32 1)
  %144 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %145 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @input_sync(i32 %146)
  %148 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %149 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  %150 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %151 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %154 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %173

155:                                              ; preds = %87
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @RC_PENDOWN, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %162 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, ...) @dev_dbg(i32 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %165 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %166 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %168 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %171 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %160, %155
  br label %173

173:                                              ; preds = %172, %92
  br label %174

174:                                              ; preds = %173, %86
  %175 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %176 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %175, i32 0, i32 3
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
