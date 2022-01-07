; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_print_pa_hwpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_print_pa_hwpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hardware_path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @print_pa_hwpath(%struct.parisc_device* %0, i8* %1) #0 {
  %3 = alloca %struct.parisc_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hardware_path, align 4
  store %struct.parisc_device* %0, %struct.parisc_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %7 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_node_path(i32 %9, %struct.hardware_path* %5)
  %11 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %12 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @print_hwpath(%struct.hardware_path* %5, i8* %15)
  ret i8* %16
}

declare dso_local i32 @get_node_path(i32, %struct.hardware_path*) #1

declare dso_local i8* @print_hwpath(%struct.hardware_path*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
