; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_amcc_s5933.h_ptr_find_free_pci_card_by_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_amcc_s5933.h_ptr_find_free_pci_card_by_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i16, i16, i32, %struct.pcilst_struct* }

@amcc_devices = common dso_local global %struct.pcilst_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcilst_struct* @ptr_find_free_pci_card_by_device(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.pcilst_struct*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca %struct.pcilst_struct*, align 8
  %7 = alloca %struct.pcilst_struct*, align 8
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  %8 = load %struct.pcilst_struct*, %struct.pcilst_struct** @amcc_devices, align 8
  store %struct.pcilst_struct* %8, %struct.pcilst_struct** %6, align 8
  br label %9

9:                                                ; preds = %39, %2
  %10 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %11 = icmp ne %struct.pcilst_struct* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %14 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %13, i32 0, i32 3
  %15 = load %struct.pcilst_struct*, %struct.pcilst_struct** %14, align 8
  store %struct.pcilst_struct* %15, %struct.pcilst_struct** %7, align 8
  %16 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %17 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %12
  %21 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %22 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  %30 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* %4, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  store %struct.pcilst_struct* %37, %struct.pcilst_struct** %3, align 8
  br label %42

38:                                               ; preds = %28, %20, %12
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.pcilst_struct*, %struct.pcilst_struct** %7, align 8
  store %struct.pcilst_struct* %40, %struct.pcilst_struct** %6, align 8
  br label %9

41:                                               ; preds = %9
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %3, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  ret %struct.pcilst_struct* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
