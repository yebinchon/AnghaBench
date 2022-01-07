; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_AMW0_set_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_AMW0_set_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.wmab_args = type { i32, i64, i64, i32 }
%struct.wmab_ret = type { i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AMW0_GUID2 = common dso_local global i32 0, align 4
@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@interface = common dso_local global %struct.TYPE_6__* null, align 8
@ACER_AMW0_WRITE = common dso_local global i32 0, align 4
@ACER_AMW0_WIRELESS_MASK = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@ACER_AMW0_BLUETOOTH_MASK = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_5__* null, align 8
@ACER_CAP_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @AMW0_set_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AMW0_set_capabilities() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wmab_args, align 8
  %3 = alloca %struct.wmab_ret, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = load i32, i32* @AE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %9 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = load i32, i32* @AMW0_GUID2, align 4
  %14 = call i64 @wmi_has_guid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %0
  %17 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @interface, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @AE_OK, align 4
  store i32 %22, i32* %1, align 4
  br label %147

23:                                               ; preds = %0
  %24 = load i32, i32* @ACER_AMW0_WRITE, align 4
  %25 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 0
  store i32 41472, i32* %28, align 8
  %29 = load i32, i32* @ACER_AMW0_WIRELESS_MASK, align 4
  %30 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 8
  %33 = call i32 @wmab_execute(%struct.wmab_args* %2, %struct.acpi_buffer* %5)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %1, align 4
  br label %147

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %union.acpi_object*
  store %union.acpi_object* %42, %union.acpi_object** %6, align 8
  %43 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %44 = icmp ne %union.acpi_object* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %47 = bitcast %union.acpi_object* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %53 = bitcast %union.acpi_object* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %60 = bitcast %union.acpi_object* %59 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.wmab_ret*
  %64 = bitcast %struct.wmab_ret* %3 to i8*
  %65 = bitcast %struct.wmab_ret* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  br label %68

66:                                               ; preds = %51, %45, %39
  %67 = load i32, i32* @AE_ERROR, align 4
  store i32 %67, i32* %1, align 4
  br label %147

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.wmab_ret, %struct.wmab_ret* %3, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @interface, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 0
  store i32 512, i32* %80, align 8
  %81 = load i32, i32* @ACER_AMW0_BLUETOOTH_MASK, align 4
  %82 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 8
  %85 = call i32 @wmab_execute(%struct.wmab_args* %2, %struct.acpi_buffer* %5)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @ACPI_FAILURE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %1, align 4
  br label %147

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %union.acpi_object*
  store %union.acpi_object* %94, %union.acpi_object** %6, align 8
  %95 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %96 = icmp ne %union.acpi_object* %95, null
  br i1 %96, label %97, label %118

97:                                               ; preds = %91
  %98 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %99 = bitcast %union.acpi_object* %98 to i64*
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %105 = bitcast %union.acpi_object* %104 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = icmp eq i64 %108, 4
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %112 = bitcast %union.acpi_object* %111 to %struct.TYPE_4__*
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.wmab_ret*
  %116 = bitcast %struct.wmab_ret* %3 to i8*
  %117 = bitcast %struct.wmab_ret* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  br label %120

118:                                              ; preds = %103, %97, %91
  %119 = load i32, i32* @AE_ERROR, align 4
  store i32 %119, i32* %1, align 4
  br label %147

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.wmab_ret, %struct.wmab_ret* %3, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @interface, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %120
  %132 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @kfree(i64 %133)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** @quirks, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load i32, i32* @ACER_CAP_BRIGHTNESS, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @interface, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %131
  %146 = load i32, i32* @AE_OK, align 4
  store i32 %146, i32* %1, align 4
  br label %147

147:                                              ; preds = %145, %118, %89, %66, %37, %16
  %148 = load i32, i32* %1, align 4
  ret i32 %148
}

declare dso_local i64 @wmi_has_guid(i32) #1

declare dso_local i32 @wmab_execute(%struct.wmab_args*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
