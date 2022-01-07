; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_get_devnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_get_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* (%struct.device*, i32*)* }
%struct.TYPE_3__ = type { i8* (%struct.device*, i32*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @device_get_devnode(%struct.device* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8**, i8*** %7, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8* (%struct.device*, i32*)*, i8* (%struct.device*, i32*)** %18, align 8
  %20 = icmp ne i8* (%struct.device*, i32*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8* (%struct.device*, i32*)*, i8* (%struct.device*, i32*)** %25, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* %26(%struct.device* %27, i32* %28)
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %21, %14, %3
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8**, i8*** %7, align 8
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %4, align 8
  br label %97

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8* (%struct.device*, i32*)*, i8* (%struct.device*, i32*)** %47, align 8
  %49 = icmp ne i8* (%struct.device*, i32*)* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8* (%struct.device*, i32*)*, i8* (%struct.device*, i32*)** %54, align 8
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i8* %55(%struct.device* %56, i32* %57)
  %59 = load i8**, i8*** %7, align 8
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %50, %43, %38
  %61 = load i8**, i8*** %7, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8**, i8*** %7, align 8
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %4, align 8
  br label %97

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = call i8* @dev_name(%struct.device* %68)
  %70 = call i8* @strchr(i8* %69, i8 signext 33)
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i8* @dev_name(%struct.device* %73)
  store i8* %74, i8** %4, align 8
  br label %97

75:                                               ; preds = %67
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i8* @dev_name(%struct.device* %76)
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @kstrdup(i8* %77, i32 %78)
  %80 = load i8**, i8*** %7, align 8
  store i8* %79, i8** %80, align 8
  %81 = load i8**, i8*** %7, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  store i8* null, i8** %4, align 8
  br label %97

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %91, %85
  %87 = load i8**, i8*** %7, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strchr(i8* %88, i8 signext 33)
  store i8* %89, i8** %8, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  store i8 47, i8* %93, align 1
  br label %86

94:                                               ; preds = %86
  %95 = load i8**, i8*** %7, align 8
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %94, %84, %72, %64, %35
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
