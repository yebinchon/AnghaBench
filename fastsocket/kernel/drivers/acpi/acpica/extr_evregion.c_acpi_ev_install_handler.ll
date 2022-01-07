; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_install_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_install_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64 }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %union.acpi_operand_object* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %union.acpi_operand_object* }
%struct.TYPE_7__ = type { i64 }

@ev_install_handler = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@ACPI_TYPE_REGION = common dso_local global i64 0, align 8
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Found handler for region [%s] in device %p(%p) handler %p\0A\00", align 1
@AE_CTRL_DEPTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @acpi_ev_install_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ev_install_handler(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca %struct.acpi_namespace_node*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i32, i32* @ev_install_handler, align 4
  %16 = call i32 @ACPI_FUNCTION_NAME(i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %union.acpi_operand_object*
  store %union.acpi_operand_object* %18, %union.acpi_operand_object** %10, align 8
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %20 = icmp ne %union.acpi_operand_object* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @AE_OK, align 4
  store i32 %22, i32* %5, align 4
  br label %121

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.acpi_namespace_node* @acpi_ns_map_handle_to_node(i32 %24)
  store %struct.acpi_namespace_node* %25, %struct.acpi_namespace_node** %13, align 8
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %27 = icmp ne %struct.acpi_namespace_node* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %29, i32* %5, align 4
  br label %121

30:                                               ; preds = %23
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %32 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %38 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ACPI_TYPE_REGION, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %44 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %45 = icmp ne %struct.acpi_namespace_node* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @AE_OK, align 4
  store i32 %47, i32* %5, align 4
  br label %121

48:                                               ; preds = %42, %36, %30
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %50 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %49)
  store %union.acpi_operand_object* %50, %union.acpi_operand_object** %12, align 8
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %52 = icmp ne %union.acpi_operand_object* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @AE_OK, align 4
  store i32 %54, i32* %5, align 4
  br label %121

55:                                               ; preds = %48
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %55
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %65, align 8
  store %union.acpi_operand_object* %66, %union.acpi_operand_object** %11, align 8
  br label %67

67:                                               ; preds = %93, %62
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %69 = icmp ne %union.acpi_operand_object* %68, null
  br i1 %69, label %70, label %98

70:                                               ; preds = %67
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %72 = bitcast %union.acpi_operand_object* %71 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %76 = bitcast %union.acpi_operand_object* %75 to %struct.TYPE_8__*
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %70
  %81 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %83 = bitcast %union.acpi_operand_object* %82 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @acpi_ut_get_region_name(i64 %85)
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %90 = ptrtoint %union.acpi_operand_object* %89 to i32
  %91 = call i32 @ACPI_DEBUG_PRINT(i32 %90)
  %92 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %92, i32* %5, align 4
  br label %121

93:                                               ; preds = %70
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %95 = bitcast %union.acpi_operand_object* %94 to %struct.TYPE_8__*
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %96, align 8
  store %union.acpi_operand_object* %97, %union.acpi_operand_object** %11, align 8
  br label %67

98:                                               ; preds = %67
  %99 = load i32, i32* @AE_OK, align 4
  store i32 %99, i32* %5, align 4
  br label %121

100:                                              ; preds = %55
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %102 = bitcast %union.acpi_operand_object* %101 to %struct.TYPE_7__*
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %106 = bitcast %union.acpi_operand_object* %105 to %struct.TYPE_8__*
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %104, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* @AE_OK, align 4
  store i32 %111, i32* %5, align 4
  br label %121

112:                                              ; preds = %100
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @acpi_ev_detach_region(%union.acpi_operand_object* %113, i32 %114)
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %118 = load i32, i32* @FALSE, align 4
  %119 = call i32 @acpi_ev_attach_region(%union.acpi_operand_object* %116, %union.acpi_operand_object* %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %112, %110, %98, %80, %53, %46, %28, %21
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_map_handle_to_node(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

declare dso_local i32 @acpi_ev_detach_region(%union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ev_attach_region(%union.acpi_operand_object*, %union.acpi_operand_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
