; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_pswalk.c_acpi_ps_delete_parse_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_pswalk.c_acpi_ps_delete_parse_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_parse_object*, %union.acpi_parse_object* }

@ps_delete_parse_tree = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %0) #0 {
  %2 = alloca %union.acpi_parse_object*, align 8
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %2, align 8
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  store %union.acpi_parse_object* %6, %union.acpi_parse_object** %3, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %4, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %5, align 8
  %7 = load i32, i32* @ps_delete_parse_tree, align 4
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %union.acpi_parse_object* %8)
  br label %10

10:                                               ; preds = %48, %22, %1
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %12 = icmp ne %union.acpi_parse_object* %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %16 = icmp ne %union.acpi_parse_object* %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %19 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %18, i32 0)
  store %union.acpi_parse_object* %19, %union.acpi_parse_object** %4, align 8
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %21 = icmp ne %union.acpi_parse_object* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  store %union.acpi_parse_object* %23, %union.acpi_parse_object** %3, align 8
  br label %10

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %13
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %27 = bitcast %union.acpi_parse_object* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %28, align 8
  store %union.acpi_parse_object* %29, %union.acpi_parse_object** %4, align 8
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %31 = bitcast %union.acpi_parse_object* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %32, align 8
  store %union.acpi_parse_object* %33, %union.acpi_parse_object** %5, align 8
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %35 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %34)
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %38 = icmp eq %union.acpi_parse_object* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* @return_VOID, align 4
  br label %41

41:                                               ; preds = %39, %25
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %43 = icmp ne %union.acpi_parse_object* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  store %union.acpi_parse_object* %45, %union.acpi_parse_object** %3, align 8
  br label %48

46:                                               ; preds = %41
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  store %union.acpi_parse_object* %47, %union.acpi_parse_object** %3, align 8
  br label %48

48:                                               ; preds = %46, %44
  br label %10

49:                                               ; preds = %10
  %50 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #1

declare dso_local i32 @acpi_ps_free_op(%union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
