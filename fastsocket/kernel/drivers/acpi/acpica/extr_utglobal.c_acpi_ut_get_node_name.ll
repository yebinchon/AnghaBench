; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utglobal.c_acpi_ut_get_node_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utglobal.c_acpi_ut_get_node_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@ACPI_ROOT_OBJECT = common dso_local global i8* null, align 8
@acpi_gbl_root_node = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\22\\\22 \00", align 1
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"####\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_ut_get_node_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %6, %struct.acpi_namespace_node** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %46

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** @ACPI_ROOT_OBJECT, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** @acpi_gbl_root_node, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %46

19:                                               ; preds = %14
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %21 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.acpi_namespace_node* %20)
  %22 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %46

25:                                               ; preds = %19
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @acpi_ut_valid_acpi_name(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @acpi_ut_repair_name(i8* %36)
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  br label %41

41:                                               ; preds = %32, %25
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %2, align 8
  br label %46

46:                                               ; preds = %41, %24, %18, %9
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_valid_acpi_name(i32) #1

declare dso_local i32 @acpi_ut_repair_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
