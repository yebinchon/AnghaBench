; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_core.c_m5602_probe_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_core.c_m5602_probe_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { {}* }
%struct.sd = type { %struct.TYPE_7__* }

@po1030 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@mt9m111 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@s5k4aa = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ov9650 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ov7660 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@s5k83a = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"Failed to find a sensor\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @m5602_probe_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5602_probe_sensor(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  %4 = load %struct.sd*, %struct.sd** %3, align 8
  %5 = getelementptr inbounds %struct.sd, %struct.sd* %4, i32 0, i32 0
  store %struct.TYPE_7__* @po1030, %struct.TYPE_7__** %5, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.sd*)**
  %11 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %10, align 8
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = call i32 %11(%struct.sd* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

16:                                               ; preds = %1
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  store %struct.TYPE_7__* @mt9m111, %struct.TYPE_7__** %18, align 8
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.sd*)**
  %24 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %23, align 8
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = call i32 %24(%struct.sd* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %87

29:                                               ; preds = %16
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 0
  store %struct.TYPE_7__* @s5k4aa, %struct.TYPE_7__** %31, align 8
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.sd*)**
  %37 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %36, align 8
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = call i32 %37(%struct.sd* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %87

42:                                               ; preds = %29
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 0
  store %struct.TYPE_7__* @ov9650, %struct.TYPE_7__** %44, align 8
  %45 = load %struct.sd*, %struct.sd** %3, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.sd*)**
  %50 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %49, align 8
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = call i32 %50(%struct.sd* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %87

55:                                               ; preds = %42
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 0
  store %struct.TYPE_7__* @ov7660, %struct.TYPE_7__** %57, align 8
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.sd*)**
  %63 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %62, align 8
  %64 = load %struct.sd*, %struct.sd** %3, align 8
  %65 = call i32 %63(%struct.sd* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %87

68:                                               ; preds = %55
  %69 = load %struct.sd*, %struct.sd** %3, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 0
  store %struct.TYPE_7__* @s5k83a, %struct.TYPE_7__** %70, align 8
  %71 = load %struct.sd*, %struct.sd** %3, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = bitcast {}** %74 to i32 (%struct.sd*)**
  %76 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %75, align 8
  %77 = load %struct.sd*, %struct.sd** %3, align 8
  %78 = call i32 %76(%struct.sd* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %87

81:                                               ; preds = %68
  %82 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.sd*, %struct.sd** %3, align 8
  %84 = getelementptr inbounds %struct.sd, %struct.sd* %83, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %84, align 8
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %80, %67, %54, %41, %28, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
