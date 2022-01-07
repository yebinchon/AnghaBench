; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-realview/extr_realview_pbx.c_realview_pbx_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-realview/extr_realview_pbx.c_realview_pbx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine_desc = type { i32 }
%struct.tag = type { i32 }
%struct.meminfo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@SZ_256M = common dso_local global i8* null, align 8
@SZ_512M = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine_desc*, %struct.tag*, i8**, %struct.meminfo*)* @realview_pbx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @realview_pbx_fixup(%struct.machine_desc* %0, %struct.tag* %1, i8** %2, %struct.meminfo* %3) #0 {
  %5 = alloca %struct.machine_desc*, align 8
  %6 = alloca %struct.tag*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.meminfo*, align 8
  store %struct.machine_desc* %0, %struct.machine_desc** %5, align 8
  store %struct.tag* %1, %struct.tag** %6, align 8
  store i8** %2, i8*** %7, align 8
  store %struct.meminfo* %3, %struct.meminfo** %8, align 8
  %9 = load %struct.machine_desc*, %struct.machine_desc** %5, align 8
  %10 = load %struct.tag*, %struct.tag** %6, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = load %struct.meminfo*, %struct.meminfo** %8, align 8
  %13 = call i32 @realview_fixup(%struct.machine_desc* %9, %struct.tag* %10, i8** %11, %struct.meminfo* %12)
  ret void
}

declare dso_local i32 @realview_fixup(%struct.machine_desc*, %struct.tag*, i8**, %struct.meminfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
