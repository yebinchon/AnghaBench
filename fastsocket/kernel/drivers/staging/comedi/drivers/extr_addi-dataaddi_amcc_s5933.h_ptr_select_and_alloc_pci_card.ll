; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_amcc_s5933.h_ptr_select_and_alloc_pci_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_amcc_s5933.h_ptr_select_and_alloc_pci_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c" - Unused card not found in system!\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c" - Card not found on requested position b:s %d:%d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c" - Card on requested position is used b:s %d:%d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" - Can't allocate card!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcilst_struct* @ptr_select_and_alloc_pci_card(i16 zeroext %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.pcilst_struct*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcilst_struct*, align 8
  store i16 %0, i16* %7, align 2
  store i16 %1, i16* %8, align 2
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i32 %4, i32* %11, align 4
  %13 = load i16, i16* %9, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = load i16, i16* %10, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp slt i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load i16, i16* %7, align 2
  %25 = load i16, i16* %8, align 2
  %26 = call %struct.pcilst_struct* @ptr_find_free_pci_card_by_device(i16 zeroext %24, i16 zeroext %25)
  store %struct.pcilst_struct* %26, %struct.pcilst_struct** %12, align 8
  %27 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %28 = icmp eq %struct.pcilst_struct* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %6, align 8
  br label %60

31:                                               ; preds = %23
  br label %51

32:                                               ; preds = %5
  %33 = load i16, i16* %7, align 2
  %34 = load i16, i16* %8, align 2
  %35 = load i16, i16* %9, align 2
  %36 = load i16, i16* %10, align 2
  %37 = call i32 @i_find_free_pci_card_by_position(i16 zeroext %33, i16 zeroext %34, i16 zeroext %35, i16 zeroext %36, %struct.pcilst_struct** %12)
  switch i32 %37, label %50 [
    i32 1, label %38
    i32 2, label %44
  ]

38:                                               ; preds = %32
  %39 = load i16, i16* %9, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* %10, align 2
  %42 = zext i16 %41 to i32
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %6, align 8
  br label %60

44:                                               ; preds = %32
  %45 = load i16, i16* %9, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %10, align 2
  %48 = zext i16 %47 to i32
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48)
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %6, align 8
  br label %60

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @pci_card_alloc(%struct.pcilst_struct* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %6, align 8
  br label %60

58:                                               ; preds = %51
  %59 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  store %struct.pcilst_struct* %59, %struct.pcilst_struct** %6, align 8
  br label %60

60:                                               ; preds = %58, %56, %44, %38, %29
  %61 = load %struct.pcilst_struct*, %struct.pcilst_struct** %6, align 8
  ret %struct.pcilst_struct* %61
}

declare dso_local %struct.pcilst_struct* @ptr_find_free_pci_card_by_device(i16 zeroext, i16 zeroext) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @i_find_free_pci_card_by_position(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, %struct.pcilst_struct**) #1

declare dso_local i64 @pci_card_alloc(%struct.pcilst_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
