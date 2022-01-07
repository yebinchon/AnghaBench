; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_9__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32* }
%struct.TYPE_9__ = type { %struct.mousedev*, %struct.input_handler*, i32, i32 }
%struct.input_dev = type { i32 }
%struct.input_handler = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MOUSEDEV_MIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mice\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mouse%d\00", align 1
@input_class = common dso_local global i32 0, align 4
@INPUT_MAJOR = common dso_local global i32 0, align 4
@MOUSEDEV_MINOR_BASE = common dso_local global i64 0, align 8
@mousedev_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mousedev* (%struct.input_dev*, %struct.input_handler*, i32)* @mousedev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mousedev* @mousedev_create(%struct.input_dev* %0, %struct.input_handler* %1, i32 %2) #0 {
  %4 = alloca %struct.mousedev*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_handler*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mousedev*, align 8
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.input_handler* %1, %struct.input_handler** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mousedev* @kzalloc(i32 80, i32 %10)
  store %struct.mousedev* %11, %struct.mousedev** %8, align 8
  %12 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %13 = icmp ne %struct.mousedev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %151

17:                                               ; preds = %3
  %18 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %19 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %18, i32 0, i32 8
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %22 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %21, i32 0, i32 7
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %25 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %24, i32 0, i32 6
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %28 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %27, i32 0, i32 5
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %31 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %30, i32 0, i32 5
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MOUSEDEV_MIX, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* @MOUSEDEV_MIX, align 4
  br label %38

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = call i32 @lockdep_set_subclass(i32* %31, i32 %39)
  %41 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %42 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %41, i32 0, i32 4
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MOUSEDEV_MIX, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %49 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %48, i32 0, i32 2
  %50 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_set_name(%struct.TYPE_8__* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %56

51:                                               ; preds = %38
  %52 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %53 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %52, i32 0, i32 2
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_set_name(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %59 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %61 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = call i32 @input_get_device(%struct.input_dev* %62)
  %64 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %65 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %68 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %67, i32 0, i32 2
  %69 = call i32 @dev_name(%struct.TYPE_8__* %68)
  %70 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %71 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load %struct.input_handler*, %struct.input_handler** %6, align 8
  %74 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %75 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store %struct.input_handler* %73, %struct.input_handler** %76, align 8
  %77 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %78 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %79 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store %struct.mousedev* %77, %struct.mousedev** %80, align 8
  %81 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %82 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i32* @input_class, i32** %83, align 8
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = icmp ne %struct.input_dev* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %56
  %87 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 0
  %89 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %90 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i32* %88, i32** %91, align 8
  br label %92

92:                                               ; preds = %86, %56
  %93 = load i32, i32* @INPUT_MAJOR, align 4
  %94 = load i64, i64* @MOUSEDEV_MINOR_BASE, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = call i32 @MKDEV(i32 %93, i64 %97)
  %99 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %100 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @mousedev_free, align 4
  %103 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %104 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %107 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %106, i32 0, i32 2
  %108 = call i32 @device_initialize(%struct.TYPE_8__* %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @MOUSEDEV_MIX, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %92
  %113 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %114 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %113, i32 0, i32 3
  %115 = call i32 @input_register_handle(%struct.TYPE_9__* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %147

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %92
  %121 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %122 = call i32 @mousedev_install_chrdev(%struct.mousedev* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %138

126:                                              ; preds = %120
  %127 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %128 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %127, i32 0, i32 2
  %129 = call i32 @device_add(%struct.TYPE_8__* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %135

133:                                              ; preds = %126
  %134 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  store %struct.mousedev* %134, %struct.mousedev** %4, align 8
  br label %154

135:                                              ; preds = %132
  %136 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %137 = call i32 @mousedev_cleanup(%struct.mousedev* %136)
  br label %138

138:                                              ; preds = %135, %125
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @MOUSEDEV_MIX, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %144 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %143, i32 0, i32 3
  %145 = call i32 @input_unregister_handle(%struct.TYPE_9__* %144)
  br label %146

146:                                              ; preds = %142, %138
  br label %147

147:                                              ; preds = %146, %118
  %148 = load %struct.mousedev*, %struct.mousedev** %8, align 8
  %149 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %148, i32 0, i32 2
  %150 = call i32 @put_device(%struct.TYPE_8__* %149)
  br label %151

151:                                              ; preds = %147, %14
  %152 = load i32, i32* %9, align 4
  %153 = call %struct.mousedev* @ERR_PTR(i32 %152)
  store %struct.mousedev* %153, %struct.mousedev** %4, align 8
  br label %154

154:                                              ; preds = %151, %133
  %155 = load %struct.mousedev*, %struct.mousedev** %4, align 8
  ret %struct.mousedev* %155
}

declare dso_local %struct.mousedev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lockdep_set_subclass(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @input_get_device(%struct.input_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @device_initialize(%struct.TYPE_8__*) #1

declare dso_local i32 @input_register_handle(%struct.TYPE_9__*) #1

declare dso_local i32 @mousedev_install_chrdev(%struct.mousedev*) #1

declare dso_local i32 @device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @mousedev_cleanup(%struct.mousedev*) #1

declare dso_local i32 @input_unregister_handle(%struct.TYPE_9__*) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local %struct.mousedev* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
