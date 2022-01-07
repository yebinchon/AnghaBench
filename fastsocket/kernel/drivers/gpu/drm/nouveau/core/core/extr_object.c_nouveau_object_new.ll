; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_handle = type { i32 }
%struct.TYPE_2__ = type { %struct.nouveau_oclass* }

@.str = private unnamed_addr constant [25 x i8] c"parent 0x%08x not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NV_PARENT_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot have children\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"illegal class 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_object_new(%struct.nouveau_object* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.nouveau_object** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nouveau_object**, align 8
  %16 = alloca %struct.nouveau_object*, align 8
  %17 = alloca %struct.nouveau_object*, align 8
  %18 = alloca %struct.nouveau_object*, align 8
  %19 = alloca %struct.nouveau_object*, align 8
  %20 = alloca %struct.nouveau_oclass*, align 8
  %21 = alloca %struct.nouveau_handle*, align 8
  %22 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.nouveau_object** %6, %struct.nouveau_object*** %15, align 8
  store %struct.nouveau_object* null, %struct.nouveau_object** %16, align 8
  store %struct.nouveau_object* null, %struct.nouveau_object** %17, align 8
  store %struct.nouveau_object* null, %struct.nouveau_object** %18, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.nouveau_object* @nouveau_handle_ref(%struct.nouveau_object* %23, i32 %24)
  store %struct.nouveau_object* %25, %struct.nouveau_object** %16, align 8
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %27 = icmp ne %struct.nouveau_object* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %7
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (%struct.nouveau_object*, i8*, ...) @nv_error(%struct.nouveau_object* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %143

34:                                               ; preds = %7
  %35 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %36 = load i32, i32* @NV_PARENT_CLASS, align 4
  %37 = call i32 @nv_iclass(%struct.nouveau_object* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %41 = call i32 (%struct.nouveau_object*, i8*, ...) @nv_error(%struct.nouveau_object* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %22, align 4
  br label %140

44:                                               ; preds = %34
  %45 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @nouveau_parent_sclass(%struct.nouveau_object* %45, i32 %46, %struct.nouveau_object** %19, %struct.nouveau_oclass** %20)
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %22, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @nv_debug(%struct.nouveau_object* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %140

54:                                               ; preds = %44
  %55 = load %struct.nouveau_object*, %struct.nouveau_object** %19, align 8
  %56 = icmp ne %struct.nouveau_object* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.nouveau_object*, %struct.nouveau_object** %19, align 8
  %59 = call i32 @nouveau_object_inc(%struct.nouveau_object* %58)
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %22, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %140

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.nouveau_object*, %struct.nouveau_object** %19, align 8
  %66 = icmp ne %struct.nouveau_object* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load %struct.nouveau_object*, %struct.nouveau_object** %19, align 8
  %69 = call %struct.TYPE_2__* @nv_engine(%struct.nouveau_object* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %70, align 8
  %72 = icmp ne %struct.nouveau_oclass* %71, null
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %75 = load %struct.nouveau_object*, %struct.nouveau_object** %19, align 8
  %76 = load %struct.nouveau_object*, %struct.nouveau_object** %19, align 8
  %77 = call %struct.TYPE_2__* @nv_engine(%struct.nouveau_object* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %78, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @nouveau_object_ctor(%struct.nouveau_object* %74, %struct.nouveau_object* %75, %struct.nouveau_oclass* %79, i8* %80, i32 %81, %struct.nouveau_object** %17)
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %22, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %133

86:                                               ; preds = %73
  br label %90

87:                                               ; preds = %67, %64
  %88 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %89 = call i32 @nouveau_object_ref(%struct.nouveau_object* %88, %struct.nouveau_object** %17)
  br label %90

90:                                               ; preds = %87, %86
  %91 = load %struct.nouveau_object*, %struct.nouveau_object** %17, align 8
  %92 = load %struct.nouveau_object*, %struct.nouveau_object** %19, align 8
  %93 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %20, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @nouveau_object_ctor(%struct.nouveau_object* %91, %struct.nouveau_object* %92, %struct.nouveau_oclass* %93, i8* %94, i32 %95, %struct.nouveau_object** %18)
  store i32 %96, i32* %22, align 4
  %97 = load %struct.nouveau_object*, %struct.nouveau_object** %18, align 8
  %98 = load %struct.nouveau_object**, %struct.nouveau_object*** %15, align 8
  store %struct.nouveau_object* %97, %struct.nouveau_object** %98, align 8
  %99 = load i32, i32* %22, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %131

102:                                              ; preds = %90
  %103 = load %struct.nouveau_object*, %struct.nouveau_object** %18, align 8
  %104 = call i32 @nouveau_object_inc(%struct.nouveau_object* %103)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %129

108:                                              ; preds = %102
  %109 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.nouveau_object*, %struct.nouveau_object** %18, align 8
  %113 = call i32 @nouveau_handle_create(%struct.nouveau_object* %109, i32 %110, i32 %111, %struct.nouveau_object* %112, %struct.nouveau_handle** %21)
  store i32 %113, i32* %22, align 4
  %114 = load i32, i32* %22, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %126

117:                                              ; preds = %108
  %118 = load %struct.nouveau_handle*, %struct.nouveau_handle** %21, align 8
  %119 = call i32 @nouveau_handle_init(%struct.nouveau_handle* %118)
  store i32 %119, i32* %22, align 4
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.nouveau_handle*, %struct.nouveau_handle** %21, align 8
  %124 = call i32 @nouveau_handle_destroy(%struct.nouveau_handle* %123)
  br label %125

125:                                              ; preds = %122, %117
  br label %126

126:                                              ; preds = %125, %116
  %127 = load %struct.nouveau_object*, %struct.nouveau_object** %18, align 8
  %128 = call i32 @nouveau_object_dec(%struct.nouveau_object* %127, i32 0)
  br label %129

129:                                              ; preds = %126, %107
  %130 = call i32 @nouveau_object_ref(%struct.nouveau_object* null, %struct.nouveau_object** %18)
  br label %131

131:                                              ; preds = %129, %101
  %132 = call i32 @nouveau_object_ref(%struct.nouveau_object* null, %struct.nouveau_object** %17)
  br label %133

133:                                              ; preds = %131, %85
  %134 = load %struct.nouveau_object*, %struct.nouveau_object** %19, align 8
  %135 = icmp ne %struct.nouveau_object* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.nouveau_object*, %struct.nouveau_object** %19, align 8
  %138 = call i32 @nouveau_object_dec(%struct.nouveau_object* %137, i32 0)
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %62, %50, %39
  %141 = call i32 @nouveau_object_ref(%struct.nouveau_object* null, %struct.nouveau_object** %16)
  %142 = load i32, i32* %22, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %140, %28
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local %struct.nouveau_object* @nouveau_handle_ref(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_object*, i8*, ...) #1

declare dso_local i32 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nouveau_parent_sclass(%struct.nouveau_object*, i32, %struct.nouveau_object**, %struct.nouveau_oclass**) #1

declare dso_local i32 @nv_debug(%struct.nouveau_object*, i8*, i32) #1

declare dso_local i32 @nouveau_object_inc(%struct.nouveau_object*) #1

declare dso_local %struct.TYPE_2__* @nv_engine(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_object_ctor(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**) #1

declare dso_local i32 @nouveau_object_ref(%struct.nouveau_object*, %struct.nouveau_object**) #1

declare dso_local i32 @nouveau_handle_create(%struct.nouveau_object*, i32, i32, %struct.nouveau_object*, %struct.nouveau_handle**) #1

declare dso_local i32 @nouveau_handle_init(%struct.nouveau_handle*) #1

declare dso_local i32 @nouveau_handle_destroy(%struct.nouveau_handle*) #1

declare dso_local i32 @nouveau_object_dec(%struct.nouveau_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
