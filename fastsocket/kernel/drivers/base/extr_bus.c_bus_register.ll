; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.bus_type_private*, i32 }
%struct.bus_type_private = type { i32, %struct.TYPE_5__, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32, i32, %struct.bus_type* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bus_kset = common dso_local global i32 0, align 4
@bus_ktype = common dso_local global i32 0, align 4
@bus_attr_uevent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@klist_devices_get = common dso_local global i32* null, align 8
@klist_devices_put = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"bus: '%s': registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_register(%struct.bus_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bus_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bus_type_private*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.bus_type_private* @kzalloc(i32 64, i32 %6)
  store %struct.bus_type_private* %7, %struct.bus_type_private** %5, align 8
  %8 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %9 = icmp ne %struct.bus_type_private* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %146

13:                                               ; preds = %1
  %14 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %15 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %16 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %15, i32 0, i32 7
  store %struct.bus_type* %14, %struct.bus_type** %16, align 8
  %17 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %18 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %19 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %18, i32 0, i32 0
  store %struct.bus_type_private* %17, %struct.bus_type_private** %19, align 8
  %20 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %21 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %20, i32 0, i32 6
  %22 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %21)
  %23 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %24 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %27 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @kobject_set_name(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  br label %142

33:                                               ; preds = %13
  %34 = load i32, i32* @bus_kset, align 4
  %35 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %36 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  %39 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %40 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32* @bus_ktype, i32** %42, align 8
  %43 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %44 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %46 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %45, i32 0, i32 1
  %47 = call i32 @kset_register(%struct.TYPE_5__* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %142

51:                                               ; preds = %33
  %52 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %53 = call i32 @bus_create_file(%struct.bus_type* %52, i32* @bus_attr_uevent)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %132

57:                                               ; preds = %51
  %58 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %59 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i8* @kset_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.TYPE_6__* %60)
  %62 = bitcast i8* %61 to %struct.TYPE_5__*
  %63 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %64 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %63, i32 0, i32 2
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %66 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %57
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %129

72:                                               ; preds = %57
  %73 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %74 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = call i8* @kset_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, %struct.TYPE_6__* %75)
  %77 = bitcast i8* %76 to %struct.TYPE_5__*
  %78 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %79 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %78, i32 0, i32 3
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %79, align 8
  %80 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %81 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %80, i32 0, i32 3
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = icmp ne %struct.TYPE_5__* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %122

87:                                               ; preds = %72
  %88 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %89 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %88, i32 0, i32 5
  %90 = load i32*, i32** @klist_devices_get, align 8
  %91 = load i32*, i32** @klist_devices_put, align 8
  %92 = call i32 @klist_init(i32* %89, i32* %90, i32* %91)
  %93 = load %struct.bus_type_private*, %struct.bus_type_private** %5, align 8
  %94 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %93, i32 0, i32 4
  %95 = call i32 @klist_init(i32* %94, i32* null, i32* null)
  %96 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %97 = call i32 @add_probe_files(%struct.bus_type* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %115

101:                                              ; preds = %87
  %102 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %103 = call i32 @bus_add_attrs(%struct.bus_type* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %112

107:                                              ; preds = %101
  %108 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %109 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  store i32 0, i32* %2, align 4
  br label %146

112:                                              ; preds = %106
  %113 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %114 = call i32 @remove_probe_files(%struct.bus_type* %113)
  br label %115

115:                                              ; preds = %112, %100
  %116 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %117 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %116, i32 0, i32 0
  %118 = load %struct.bus_type_private*, %struct.bus_type_private** %117, align 8
  %119 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %118, i32 0, i32 3
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = call i32 @kset_unregister(%struct.TYPE_5__* %120)
  br label %122

122:                                              ; preds = %115, %84
  %123 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %124 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %123, i32 0, i32 0
  %125 = load %struct.bus_type_private*, %struct.bus_type_private** %124, align 8
  %126 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %125, i32 0, i32 2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = call i32 @kset_unregister(%struct.TYPE_5__* %127)
  br label %129

129:                                              ; preds = %122, %69
  %130 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %131 = call i32 @bus_remove_file(%struct.bus_type* %130, i32* @bus_attr_uevent)
  br label %132

132:                                              ; preds = %129, %56
  %133 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %134 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %133, i32 0, i32 0
  %135 = load %struct.bus_type_private*, %struct.bus_type_private** %134, align 8
  %136 = getelementptr inbounds %struct.bus_type_private, %struct.bus_type_private* %135, i32 0, i32 1
  %137 = call i32 @kset_unregister(%struct.TYPE_5__* %136)
  %138 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %139 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %138, i32 0, i32 0
  %140 = load %struct.bus_type_private*, %struct.bus_type_private** %139, align 8
  %141 = call i32 @kfree(%struct.bus_type_private* %140)
  br label %142

142:                                              ; preds = %132, %50, %32
  %143 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %144 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %143, i32 0, i32 0
  store %struct.bus_type_private* null, %struct.bus_type_private** %144, align 8
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %107, %10
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.bus_type_private* @kzalloc(i32, i32) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @kobject_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @kset_register(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_create_file(%struct.bus_type*, i32*) #1

declare dso_local i8* @kset_create_and_add(i8*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @klist_init(i32*, i32*, i32*) #1

declare dso_local i32 @add_probe_files(%struct.bus_type*) #1

declare dso_local i32 @bus_add_attrs(%struct.bus_type*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @remove_probe_files(%struct.bus_type*) #1

declare dso_local i32 @kset_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_remove_file(%struct.bus_type*, i32*) #1

declare dso_local i32 @kfree(%struct.bus_type_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
