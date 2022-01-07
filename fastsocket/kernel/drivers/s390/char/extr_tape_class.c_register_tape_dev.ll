; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_class.c_register_tape_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_class.c_register_tape_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_class_device = type { i8*, i8*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.file_operations*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }
%struct.file_operations = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TAPECLASS_NAME_LEN = common dso_local global i32 0, align 4
@tape_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tape_class_device* @register_tape_dev(%struct.device* %0, i32 %1, %struct.file_operations* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.tape_class_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file_operations*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tape_class_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.file_operations* %2, %struct.file_operations** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.tape_class_device* @kzalloc(i32 32, i32 %15)
  store %struct.tape_class_device* %16, %struct.tape_class_device** %12, align 8
  %17 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %18 = icmp ne %struct.tape_class_device* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.tape_class_device* @ERR_PTR(i32 %21)
  store %struct.tape_class_device* %22, %struct.tape_class_device** %6, align 8
  br label %166

23:                                               ; preds = %5
  %24 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %25 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @TAPECLASS_NAME_LEN, align 4
  %29 = call i32 @strncpy(i8* %26, i8* %27, i32 %28)
  %30 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %31 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 47)
  store i8* %33, i8** %14, align 8
  br label %34

34:                                               ; preds = %39, %23
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8*, i8** %14, align 8
  store i8 33, i8* %38, align 1
  br label %39

39:                                               ; preds = %37
  %40 = load i8*, i8** %14, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 47)
  store i8* %41, i8** %14, align 8
  br label %34

42:                                               ; preds = %34
  %43 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %44 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @TAPECLASS_NAME_LEN, align 4
  %48 = call i32 @strncpy(i8* %45, i8* %46, i32 %47)
  %49 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %50 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 47)
  store i8* %52, i8** %14, align 8
  br label %53

53:                                               ; preds = %58, %42
  %54 = load i8*, i8** %14, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %14, align 8
  store i8 33, i8* %57, align 1
  br label %58

58:                                               ; preds = %56
  %59 = load i8*, i8** %14, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 47)
  store i8* %60, i8** %14, align 8
  br label %53

61:                                               ; preds = %53
  %62 = call %struct.TYPE_8__* (...) @cdev_alloc()
  %63 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %64 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %63, i32 0, i32 2
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %64, align 8
  %65 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %66 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %161

72:                                               ; preds = %61
  %73 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %74 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %77 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 8
  %80 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %81 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %82 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store %struct.file_operations* %80, %struct.file_operations** %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %87 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %91 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %94 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cdev_add(%struct.TYPE_8__* %92, i32 %97, i32 1)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %72
  br label %156

102:                                              ; preds = %72
  %103 = load i32, i32* @tape_class, align 4
  %104 = load %struct.device*, %struct.device** %7, align 8
  %105 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %106 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %105, i32 0, i32 2
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %111 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call %struct.TYPE_7__* @device_create(i32 %103, %struct.device* %104, i32 %109, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %112)
  %114 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %115 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %114, i32 0, i32 3
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %115, align 8
  %116 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %117 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %116, i32 0, i32 3
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = call i64 @IS_ERR(%struct.TYPE_7__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %102
  %122 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %123 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %122, i32 0, i32 3
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = call i32 @PTR_ERR(%struct.TYPE_7__* %124)
  br label %127

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126, %121
  %128 = phi i32 [ %125, %121 ], [ 0, %126 ]
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %156

132:                                              ; preds = %127
  %133 = load %struct.device*, %struct.device** %7, align 8
  %134 = getelementptr inbounds %struct.device, %struct.device* %133, i32 0, i32 0
  %135 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %136 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %135, i32 0, i32 3
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %140 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @sysfs_create_link(i32* %134, i32* %138, i8* %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %148

146:                                              ; preds = %132
  %147 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  store %struct.tape_class_device* %147, %struct.tape_class_device** %6, align 8
  br label %166

148:                                              ; preds = %145
  %149 = load i32, i32* @tape_class, align 4
  %150 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %151 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %150, i32 0, i32 2
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @device_destroy(i32 %149, i32 %154)
  br label %156

156:                                              ; preds = %148, %131, %101
  %157 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %158 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %157, i32 0, i32 2
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = call i32 @cdev_del(%struct.TYPE_8__* %159)
  br label %161

161:                                              ; preds = %156, %69
  %162 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %163 = call i32 @kfree(%struct.tape_class_device* %162)
  %164 = load i32, i32* %13, align 4
  %165 = call %struct.tape_class_device* @ERR_PTR(i32 %164)
  store %struct.tape_class_device* %165, %struct.tape_class_device** %6, align 8
  br label %166

166:                                              ; preds = %161, %146, %19
  %167 = load %struct.tape_class_device*, %struct.tape_class_device** %6, align 8
  ret %struct.tape_class_device* %167
}

declare dso_local %struct.tape_class_device* @kzalloc(i32, i32) #1

declare dso_local %struct.tape_class_device* @ERR_PTR(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_8__* @cdev_alloc(...) #1

declare dso_local i32 @cdev_add(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @device_create(i32, %struct.device*, i32, i32*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.tape_class_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
