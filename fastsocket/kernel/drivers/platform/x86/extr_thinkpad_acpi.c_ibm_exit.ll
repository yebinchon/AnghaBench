; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_ibm_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_ibm_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibm_struct = type { i32, %struct.TYPE_4__, i32 (...)*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32*, i32, i32* }

@TPACPI_DBG_EXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"removing %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: acpi_remove_notify_handler\0A\00", align 1
@dispatch_acpi_notify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: remove_proc_entry\0A\00", align 1
@proc_dir = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: acpi_bus_unregister_driver\0A\00", align 1
@TPACPI_DBG_INIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"finished removing %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibm_struct*)* @ibm_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibm_exit(%struct.ibm_struct* %0) #0 {
  %2 = alloca %struct.ibm_struct*, align 8
  store %struct.ibm_struct* %0, %struct.ibm_struct** %2, align 8
  %3 = load i32, i32* @TPACPI_DBG_EXIT, align 4
  %4 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %5 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dbg_printk(i32 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %8, i32 0, i32 4
  %10 = call i32 @list_del_init(i32* %9)
  %11 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %12 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %1
  %17 = load i32, i32* @TPACPI_DBG_EXIT, align 4
  %18 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %19 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dbg_printk(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %23 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %30 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %36 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @dispatch_acpi_notify, align 4
  %41 = call i32 @acpi_remove_notify_handler(i32 %34, i32 %39, i32 %40)
  %42 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %43 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %46 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %16, %1
  %49 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %50 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i32, i32* @TPACPI_DBG_EXIT, align 4
  %56 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %57 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dbg_printk(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %61 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @proc_dir, align 4
  %64 = call i32 @remove_proc_entry(i32 %62, i32 %63)
  %65 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %66 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %54, %48
  %69 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %70 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %68
  %75 = load i32, i32* @TPACPI_DBG_EXIT, align 4
  %76 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %77 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dbg_printk(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %81 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = icmp ne %struct.TYPE_3__* %82, null
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %88 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @acpi_bus_unregister_driver(i32* %91)
  %93 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %94 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %100 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %99, i32 0, i32 3
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  %103 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %104 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %74, %68
  %107 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %108 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %114 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %113, i32 0, i32 2
  %115 = load i32 (...)*, i32 (...)** %114, align 8
  %116 = icmp ne i32 (...)* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %119 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %118, i32 0, i32 2
  %120 = load i32 (...)*, i32 (...)** %119, align 8
  %121 = call i32 (...) %120()
  %122 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %123 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %117, %112, %106
  %126 = load i32, i32* @TPACPI_DBG_INIT, align 4
  %127 = load %struct.ibm_struct*, %struct.ibm_struct** %2, align 8
  %128 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dbg_printk(i32 %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  ret void
}

declare dso_local i32 @dbg_printk(i32, i8*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @remove_proc_entry(i32, i32) #1

declare dso_local i32 @acpi_bus_unregister_driver(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
