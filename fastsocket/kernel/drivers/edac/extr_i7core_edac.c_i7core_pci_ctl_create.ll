; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_i7core_pci_ctl_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_i7core_pci_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i7core_pvt = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@EDAC_MOD_STR = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to setup PCI error report via EDAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i7core_pvt*)* @i7core_pci_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i7core_pci_ctl_create(%struct.i7core_pvt* %0) #0 {
  %2 = alloca %struct.i7core_pvt*, align 8
  store %struct.i7core_pvt* %0, %struct.i7core_pvt** %2, align 8
  %3 = load %struct.i7core_pvt*, %struct.i7core_pvt** %2, align 8
  %4 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %7, i64 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* @EDAC_MOD_STR, align 4
  %12 = call i32 @edac_pci_create_generic_ctl(i32* %10, i32 %11)
  %13 = load %struct.i7core_pvt*, %struct.i7core_pvt** %2, align 8
  %14 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.i7core_pvt*, %struct.i7core_pvt** %2, align 8
  %16 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @KERN_WARNING, align 4
  %25 = call i32 @i7core_printk(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @edac_pci_create_generic_ctl(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i7core_printk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
