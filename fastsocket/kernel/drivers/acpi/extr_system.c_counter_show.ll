; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_counter_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_counter_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_attribute = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }

@counter_attrs = common dso_local global %struct.kobj_attribute* null, align 8
@acpi_irq_handled = common dso_local global i32 0, align 4
@all_counters = common dso_local global %struct.TYPE_2__* null, align 8
@num_gpes = common dso_local global i64 0, align 8
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@COUNT_SCI = common dso_local global i64 0, align 8
@acpi_irq_not_handled = common dso_local global i32 0, align 4
@COUNT_SCI_NOT = common dso_local global i64 0, align 8
@acpi_gpe_count = common dso_local global i32 0, align 4
@COUNT_GPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%8d\00", align 1
@ACPI_EVENT_FLAG_HANDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\09invalid\00", align 1
@ACPI_EVENT_FLAG_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"\09enabled\00", align 1
@ACPI_EVENT_FLAG_WAKE_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"\09wake_enabled\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\09disabled\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @counter_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.kobj_attribute*, %struct.kobj_attribute** %5, align 8
  %13 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8
  %14 = ptrtoint %struct.kobj_attribute* %12 to i64
  %15 = ptrtoint %struct.kobj_attribute* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @acpi_irq_handled, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %21 = load i64, i64* @num_gpes, align 8
  %22 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* @COUNT_SCI, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %19, i32* %27, align 4
  %28 = load i32, i32* @acpi_irq_not_handled, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %30 = load i64, i64* @num_gpes, align 8
  %31 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* @COUNT_SCI_NOT, align 8
  %34 = add i64 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %28, i32* %36, align 4
  %37 = load i32, i32* @acpi_gpe_count, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %39 = load i64, i64* @num_gpes, align 8
  %40 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* @COUNT_GPE, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %37, i32* %45, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @num_gpes, align 8
  %57 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %58 = add i64 %56, %57
  %59 = icmp uge i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %3
  br label %117

61:                                               ; preds = %3
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @get_status(i32 %62, i32* %10, i32* %9)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %117

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ACPI_EVENT_FLAG_HANDLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %116

80:                                               ; preds = %67
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @ACPI_EVENT_FLAG_ENABLED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %115

93:                                               ; preds = %80
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @ACPI_EVENT_FLAG_WAKE_ENABLED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = call i32 (i8*, i8*, ...) @sprintf(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %114

106:                                              ; preds = %93
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = call i32 (i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %106, %98
  br label %115

115:                                              ; preds = %114, %85
  br label %116

116:                                              ; preds = %115, %72
  br label %117

117:                                              ; preds = %116, %66, %60
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* %11, align 4
  br label %131

129:                                              ; preds = %117
  %130 = load i32, i32* %8, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  ret i32 %132
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @get_status(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
