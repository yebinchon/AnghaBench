; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_pci_card_list_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_pci_card_list_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i32, %struct.pcilst_struct* }

@inova_devices = common dso_local global %struct.pcilst_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16)* @pci_card_list_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_card_list_cleanup(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.pcilst_struct*, align 8
  %4 = alloca %struct.pcilst_struct*, align 8
  store i16 %0, i16* %2, align 2
  %5 = load %struct.pcilst_struct*, %struct.pcilst_struct** @inova_devices, align 8
  store %struct.pcilst_struct* %5, %struct.pcilst_struct** %3, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %8 = icmp ne %struct.pcilst_struct* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %11 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %10, i32 0, i32 1
  %12 = load %struct.pcilst_struct*, %struct.pcilst_struct** %11, align 8
  store %struct.pcilst_struct* %12, %struct.pcilst_struct** %4, align 8
  %13 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %14 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pci_dev_put(i32 %15)
  %17 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %18 = call i32 @kfree(%struct.pcilst_struct* %17)
  br label %19

19:                                               ; preds = %9
  %20 = load %struct.pcilst_struct*, %struct.pcilst_struct** %4, align 8
  store %struct.pcilst_struct* %20, %struct.pcilst_struct** %3, align 8
  br label %6

21:                                               ; preds = %6
  store %struct.pcilst_struct* null, %struct.pcilst_struct** @inova_devices, align 8
  ret void
}

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @kfree(%struct.pcilst_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
