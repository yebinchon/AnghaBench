; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_of_device.c_of_device_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_of_device.c_of_device_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32, i32* }
%struct.of_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"OF_NAME=%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"OF_TYPE=%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"OF_COMPATIBLE_%d=%s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"OF_COMPATIBLE_N=%d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_device_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.of_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %132

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.of_device* @to_of_device(%struct.device* %17)
  store %struct.of_device* %18, %struct.of_device** %6, align 8
  %19 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %20 = load %struct.of_device*, %struct.of_device** %6, align 8
  %21 = getelementptr inbounds %struct.of_device, %struct.of_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %132

30:                                               ; preds = %16
  %31 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %32 = load %struct.of_device*, %struct.of_device** %6, align 8
  %33 = getelementptr inbounds %struct.of_device, %struct.of_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %132

42:                                               ; preds = %30
  %43 = load %struct.of_device*, %struct.of_device** %6, align 8
  %44 = getelementptr inbounds %struct.of_device, %struct.of_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i8* @of_get_property(%struct.TYPE_2__* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %69, %42
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 0
  br label %58

58:                                               ; preds = %55, %50, %47
  %59 = phi i1 [ false, %50 ], [ false, %47 ], [ %57, %55 ]
  br i1 %59, label %60, label %82

60:                                               ; preds = %58
  %61 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %132

69:                                               ; preds = %60
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %47

82:                                               ; preds = %58
  %83 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i64 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %132

90:                                               ; preds = %82
  %91 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %92 = call i64 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %132

97:                                               ; preds = %90
  %98 = load %struct.of_device*, %struct.of_device** %6, align 8
  %99 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %100 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %103 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %109 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = sub i64 8, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @of_device_get_modalias(%struct.of_device* %98, i32* %107, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %118 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = sub i64 8, %120
  %122 = icmp uge i64 %116, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %97
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %132

126:                                              ; preds = %97
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %129 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 8
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %123, %94, %87, %66, %39, %27, %13
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.of_device* @to_of_device(%struct.device*) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #1

declare dso_local i8* @of_get_property(%struct.TYPE_2__*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @of_device_get_modalias(%struct.of_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
