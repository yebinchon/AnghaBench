; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_dispatch_acpi_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_dispatch_acpi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibm_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ibm_struct*, i32)* }

@tpacpi_lifecycle = common dso_local global i64 0, align 8
@TPACPI_LIFE_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @dispatch_acpi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_acpi_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ibm_struct*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.ibm_struct*
  store %struct.ibm_struct* %9, %struct.ibm_struct** %7, align 8
  %10 = load i64, i64* @tpacpi_lifecycle, align 8
  %11 = load i64, i64* @TPACPI_LIFE_RUNNING, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %39

14:                                               ; preds = %3
  %15 = load %struct.ibm_struct*, %struct.ibm_struct** %7, align 8
  %16 = icmp ne %struct.ibm_struct* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.ibm_struct*, %struct.ibm_struct** %7, align 8
  %19 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.ibm_struct*, %struct.ibm_struct** %7, align 8
  %24 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.ibm_struct*, i32)*, i32 (%struct.ibm_struct*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.ibm_struct*, i32)* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %17, %14
  br label %39

30:                                               ; preds = %22
  %31 = load %struct.ibm_struct*, %struct.ibm_struct** %7, align 8
  %32 = getelementptr inbounds %struct.ibm_struct, %struct.ibm_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ibm_struct*, i32)*, i32 (%struct.ibm_struct*, i32)** %34, align 8
  %36 = load %struct.ibm_struct*, %struct.ibm_struct** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 %35(%struct.ibm_struct* %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %29, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
