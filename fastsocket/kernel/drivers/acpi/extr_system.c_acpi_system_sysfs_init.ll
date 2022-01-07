; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_acpi_system_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_acpi_system_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_attr = type { i32, i32 }
%struct.acpi_table_header = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@acpi_kobj = common dso_local global i32 0, align 4
@tables_kobj = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@dynamic_tables_kobj = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@acpi_table_attr_list = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4
@acpi_sysfs_table_handler = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acpi_system_sysfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_system_sysfs_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_table_attr*, align 8
  %3 = alloca %struct.acpi_table_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @acpi_kobj, align 4
  %7 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 %7, i32* @tables_kobj, align 4
  %8 = load i32, i32* @tables_kobj, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %78

11:                                               ; preds = %0
  %12 = load i32, i32* @tables_kobj, align 4
  %13 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  store i32 %13, i32* @dynamic_tables_kobj, align 4
  %14 = load i32, i32* @dynamic_tables_kobj, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %75

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %53, %17
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @acpi_get_table_by_index(i32 %19, %struct.acpi_table_header** %3)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  store %struct.acpi_table_attr* null, %struct.acpi_table_attr** %2, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.acpi_table_attr* @kzalloc(i32 8, i32 %26)
  store %struct.acpi_table_attr* %27, %struct.acpi_table_attr** %2, align 8
  %28 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %2, align 8
  %29 = icmp ne %struct.acpi_table_attr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %1, align 4
  br label %81

33:                                               ; preds = %23
  %34 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %2, align 8
  %35 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %36 = call i32 @acpi_table_attr_init(%struct.acpi_table_attr* %34, %struct.acpi_table_header* %35)
  %37 = load i32, i32* @tables_kobj, align 4
  %38 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %2, align 8
  %39 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %38, i32 0, i32 1
  %40 = call i32 @sysfs_create_bin_file(i32 %37, i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %2, align 8
  %45 = call i32 @kfree(%struct.acpi_table_attr* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %1, align 4
  br label %81

47:                                               ; preds = %33
  %48 = load %struct.acpi_table_attr*, %struct.acpi_table_attr** %2, align 8
  %49 = getelementptr inbounds %struct.acpi_table_attr, %struct.acpi_table_attr* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %49, i32* @acpi_table_attr_list)
  br label %51

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %18
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %18, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @tables_kobj, align 4
  %59 = load i32, i32* @KOBJ_ADD, align 4
  %60 = call i32 @kobject_uevent(i32 %58, i32 %59)
  %61 = load i32, i32* @dynamic_tables_kobj, align 4
  %62 = load i32, i32* @KOBJ_ADD, align 4
  %63 = call i32 @kobject_uevent(i32 %61, i32 %62)
  %64 = load i32, i32* @acpi_sysfs_table_handler, align 4
  %65 = call i32 @acpi_install_table_handler(i32 %64, i32* null)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @AE_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %73

70:                                               ; preds = %57
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  br label %73

73:                                               ; preds = %70, %69
  %74 = phi i32 [ 0, %69 ], [ %72, %70 ]
  store i32 %74, i32* %1, align 4
  br label %81

75:                                               ; preds = %16
  %76 = load i32, i32* @tables_kobj, align 4
  %77 = call i32 @kobject_put(i32 %76)
  br label %78

78:                                               ; preds = %75, %10
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %1, align 4
  br label %81

81:                                               ; preds = %78, %73, %43, %30
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i32 @kobject_create_and_add(i8*, i32) #1

declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #1

declare dso_local %struct.acpi_table_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @acpi_table_attr_init(%struct.acpi_table_attr*, %struct.acpi_table_header*) #1

declare dso_local i32 @sysfs_create_bin_file(i32, i32*) #1

declare dso_local i32 @kfree(%struct.acpi_table_attr*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kobject_uevent(i32, i32) #1

declare dso_local i32 @acpi_install_table_handler(i32, i32*) #1

declare dso_local i32 @kobject_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
