; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_init_bridge_misc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_init_bridge_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_bridge = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@bridge_list = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@register_slot = common dso_local global i32 0, align 4
@BRIDGE_TYPE_HOST = common dso_local global i64 0, align 8
@BRIDGE_HAS_EJ0 = common dso_local global i32 0, align 4
@ACPI_SYSTEM_NOTIFY = common dso_local global i32 0, align 4
@handle_hotplug_event_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to remove notify handler\0A\00", align 1
@handle_hotplug_event_bridge = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to register interrupt notify handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpiphp_bridge*)* @init_bridge_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bridge_misc(%struct.acpiphp_bridge* %0) #0 {
  %2 = alloca %struct.acpiphp_bridge*, align 8
  %3 = alloca i32, align 4
  store %struct.acpiphp_bridge* %0, %struct.acpiphp_bridge** %2, align 8
  %4 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %5 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %4, i32 0, i32 4
  %6 = call i32 @list_add(i32* %5, i32* @bridge_list)
  %7 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %8 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %9 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @register_slot, align 4
  %12 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %13 = call i32 @acpi_walk_namespace(i32 %7, i32 %10, i32 1, i32 %11, %struct.acpiphp_bridge* %12, i32* null)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %19 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %18, i32 0, i32 4
  %20 = call i32 @list_del(i32* %19)
  br label %68

21:                                               ; preds = %1
  %22 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %23 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BRIDGE_TYPE_HOST, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %21
  %28 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %29 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BRIDGE_HAS_EJ0, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %36 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %41 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %46 = load i32, i32* @handle_hotplug_event_func, align 4
  %47 = call i32 @acpi_remove_notify_handler(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @ACPI_FAILURE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %39
  br label %54

54:                                               ; preds = %53, %34, %27
  %55 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %56 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %59 = load i32, i32* @handle_hotplug_event_bridge, align 4
  %60 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %61 = call i32 @acpi_install_notify_handler(i32 %57, i32 %58, i32 %59, %struct.acpiphp_bridge* %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @ACPI_FAILURE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = call i32 @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %54
  br label %68

68:                                               ; preds = %17, %67, %21
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, %struct.acpiphp_bridge*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.acpiphp_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
