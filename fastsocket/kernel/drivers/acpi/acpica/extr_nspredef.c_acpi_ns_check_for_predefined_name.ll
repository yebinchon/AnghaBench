; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_for_predefined_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_for_predefined_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_predefined_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64* }
%struct.acpi_namespace_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@predefined_names = common dso_local global %union.acpi_predefined_info* null, align 8
@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_predefined_info* @acpi_ns_check_for_predefined_name(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %union.acpi_predefined_info*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca %union.acpi_predefined_info*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %6 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 95
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %union.acpi_predefined_info* null, %union.acpi_predefined_info** %2, align 8
  br label %52

14:                                               ; preds = %1
  %15 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** @predefined_names, align 8
  store %union.acpi_predefined_info* %15, %union.acpi_predefined_info** %4, align 8
  br label %16

16:                                               ; preds = %48, %14
  %17 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %4, align 8
  %18 = bitcast %union.acpi_predefined_info* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %16
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %4, align 8
  %30 = bitcast %union.acpi_predefined_info* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = call i64 @ACPI_COMPARE_NAME(i8* %28, i64* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %4, align 8
  store %union.acpi_predefined_info* %36, %union.acpi_predefined_info** %2, align 8
  br label %52

37:                                               ; preds = %24
  %38 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %4, align 8
  %39 = bitcast %union.acpi_predefined_info* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %4, align 8
  %47 = getelementptr inbounds %union.acpi_predefined_info, %union.acpi_predefined_info* %46, i32 1
  store %union.acpi_predefined_info* %47, %union.acpi_predefined_info** %4, align 8
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %4, align 8
  %50 = getelementptr inbounds %union.acpi_predefined_info, %union.acpi_predefined_info* %49, i32 1
  store %union.acpi_predefined_info* %50, %union.acpi_predefined_info** %4, align 8
  br label %16

51:                                               ; preds = %16
  store %union.acpi_predefined_info* null, %union.acpi_predefined_info** %2, align 8
  br label %52

52:                                               ; preds = %51, %35, %13
  %53 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %2, align 8
  ret %union.acpi_predefined_info* %53
}

declare dso_local i64 @ACPI_COMPARE_NAME(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
