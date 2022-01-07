; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_show_ordinals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_show_ordinals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw2100_priv = type { i32 }

@show_ordinals.loop = internal global i32 0, align 4
@STATUS_RF_KILL_MASK = common dso_local global i32 0, align 4
@ord_data = common dso_local global %struct.TYPE_3__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"[0x%02X] = ERROR    %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"[0x%02X] = 0x%08X %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_ordinals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_ordinals(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipw2100_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.ipw2100_priv* @dev_get_drvdata(%struct.device* %12)
  store %struct.ipw2100_priv* %13, %struct.ipw2100_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %15 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STATUS_RF_KILL_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

21:                                               ; preds = %3
  %22 = load i32, i32* @show_ordinals.loop, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ord_data, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %23)
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* @show_ordinals.loop, align 4
  br label %27

27:                                               ; preds = %26, %21
  br label %28

28:                                               ; preds = %95, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sub nsw i32 %30, 128
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @show_ordinals.loop, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ord_data, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %35)
  %37 = icmp slt i32 %34, %36
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %98

40:                                               ; preds = %38
  store i32 4, i32* %11, align 4
  %41 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ord_data, align 8
  %43 = load i32, i32* @show_ordinals.loop, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @ipw2100_get_ordinal(%struct.ipw2100_priv* %41, i32 %47, i32* %9, i32* %11)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ord_data, align 8
  %56 = load i32, i32* @show_ordinals.loop, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ord_data, align 8
  %62 = load i32, i32* @show_ordinals.loop, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %66)
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  br label %95

72:                                               ; preds = %40
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ord_data, align 8
  %78 = load i32, i32* @show_ordinals.loop, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ord_data, align 8
  %85 = load i32, i32* @show_ordinals.loop, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83, i8* %89)
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %72, %50
  %96 = load i32, i32* @show_ordinals.loop, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @show_ordinals.loop, align 4
  br label %28

98:                                               ; preds = %38
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %20
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.ipw2100_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @ipw2100_get_ordinal(%struct.ipw2100_priv*, i32, i32*, i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
