; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_show_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_show_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.kobject }
%struct.kobject = type { %struct.kset*, %struct.kobject* }
%struct.kset = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)*, i32 (%struct.kset*, %struct.kobject*)* }
%struct.kobj_uevent_env = type { i32, i8** }
%struct.device_attribute = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @show_uevent(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.kset*, align 8
  %10 = alloca %struct.kobj_uevent_env*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.kobj_uevent_env* null, %struct.kobj_uevent_env** %10, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  store %struct.kobject* %15, %struct.kobject** %8, align 8
  br label %16

16:                                               ; preds = %28, %3
  %17 = load %struct.kobject*, %struct.kobject** %8, align 8
  %18 = getelementptr inbounds %struct.kobject, %struct.kobject* %17, i32 0, i32 0
  %19 = load %struct.kset*, %struct.kset** %18, align 8
  %20 = icmp ne %struct.kset* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.kobject*, %struct.kobject** %8, align 8
  %23 = getelementptr inbounds %struct.kobject, %struct.kobject* %22, i32 0, i32 1
  %24 = load %struct.kobject*, %struct.kobject** %23, align 8
  %25 = icmp ne %struct.kobject* %24, null
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = load %struct.kobject*, %struct.kobject** %8, align 8
  %30 = getelementptr inbounds %struct.kobject, %struct.kobject* %29, i32 0, i32 1
  %31 = load %struct.kobject*, %struct.kobject** %30, align 8
  store %struct.kobject* %31, %struct.kobject** %8, align 8
  br label %16

32:                                               ; preds = %26
  %33 = load %struct.kobject*, %struct.kobject** %8, align 8
  %34 = getelementptr inbounds %struct.kobject, %struct.kobject* %33, i32 0, i32 0
  %35 = load %struct.kset*, %struct.kset** %34, align 8
  %36 = icmp ne %struct.kset* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %126

38:                                               ; preds = %32
  %39 = load %struct.kobject*, %struct.kobject** %8, align 8
  %40 = getelementptr inbounds %struct.kobject, %struct.kobject* %39, i32 0, i32 0
  %41 = load %struct.kset*, %struct.kset** %40, align 8
  store %struct.kset* %41, %struct.kset** %9, align 8
  %42 = load %struct.kset*, %struct.kset** %9, align 8
  %43 = getelementptr inbounds %struct.kset, %struct.kset* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.kset*, %struct.kset** %9, align 8
  %48 = getelementptr inbounds %struct.kset, %struct.kset* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)** %50, align 8
  %52 = icmp ne i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46, %38
  br label %126

54:                                               ; preds = %46
  %55 = load %struct.kset*, %struct.kset** %9, align 8
  %56 = getelementptr inbounds %struct.kset, %struct.kset* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load %struct.kset*, %struct.kset** %9, align 8
  %61 = getelementptr inbounds %struct.kset, %struct.kset* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*)** %63, align 8
  %65 = icmp ne i32 (%struct.kset*, %struct.kobject*)* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.kset*, %struct.kset** %9, align 8
  %68 = getelementptr inbounds %struct.kset, %struct.kset* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*)** %70, align 8
  %72 = load %struct.kset*, %struct.kset** %9, align 8
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 0
  %75 = call i32 %71(%struct.kset* %72, %struct.kobject* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %126

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %59, %54
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.kobj_uevent_env* @kzalloc(i32 16, i32 %80)
  store %struct.kobj_uevent_env* %81, %struct.kobj_uevent_env** %10, align 8
  %82 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %10, align 8
  %83 = icmp ne %struct.kobj_uevent_env* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i64, i64* @ENOMEM, align 8
  %86 = sub i64 0, %85
  store i64 %86, i64* %4, align 8
  br label %130

87:                                               ; preds = %79
  %88 = load %struct.kset*, %struct.kset** %9, align 8
  %89 = getelementptr inbounds %struct.kset, %struct.kset* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)** %91, align 8
  %93 = load %struct.kset*, %struct.kset** %9, align 8
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = getelementptr inbounds %struct.device, %struct.device* %94, i32 0, i32 0
  %96 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %10, align 8
  %97 = call i32 %92(%struct.kset* %93, %struct.kobject* %95, %struct.kobj_uevent_env* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %126

101:                                              ; preds = %87
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %122, %101
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %10, align 8
  %105 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %102
  %109 = load i8*, i8** %7, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %10, align 8
  %113 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @sprintf(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %118)
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %12, align 8
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %102

125:                                              ; preds = %102
  br label %126

126:                                              ; preds = %125, %100, %77, %53, %37
  %127 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %10, align 8
  %128 = call i32 @kfree(%struct.kobj_uevent_env* %127)
  %129 = load i64, i64* %12, align 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %126, %84
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local %struct.kobj_uevent_env* @kzalloc(i32, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.kobj_uevent_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
