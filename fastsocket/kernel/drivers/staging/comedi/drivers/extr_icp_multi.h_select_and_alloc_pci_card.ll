; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_select_and_alloc_pci_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_select_and_alloc_pci_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c" - Unused card not found in system!\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c" - Card not found on requested position b:s %d:%d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c" - Card on requested position is used b:s %d:%d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" - Can't allocate card!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcilst_struct* (i16, i16, i16, i16)* @select_and_alloc_pci_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcilst_struct* @select_and_alloc_pci_card(i16 zeroext %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.pcilst_struct*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.pcilst_struct*, align 8
  %11 = alloca i32, align 4
  store i16 %0, i16* %6, align 2
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %12 = load i16, i16* %8, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp slt i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = load i16, i16* %9, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp slt i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load i16, i16* %6, align 2
  %24 = load i16, i16* %7, align 2
  %25 = call %struct.pcilst_struct* @find_free_pci_card_by_device(i16 zeroext %23, i16 zeroext %24)
  store %struct.pcilst_struct* %25, %struct.pcilst_struct** %10, align 8
  %26 = load %struct.pcilst_struct*, %struct.pcilst_struct** %10, align 8
  %27 = icmp eq %struct.pcilst_struct* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %5, align 8
  br label %63

30:                                               ; preds = %22
  br label %50

31:                                               ; preds = %4
  %32 = load i16, i16* %6, align 2
  %33 = load i16, i16* %7, align 2
  %34 = load i16, i16* %8, align 2
  %35 = load i16, i16* %9, align 2
  %36 = call i32 @find_free_pci_card_by_position(i16 zeroext %32, i16 zeroext %33, i16 zeroext %34, i16 zeroext %35, %struct.pcilst_struct** %10)
  switch i32 %36, label %49 [
    i32 1, label %37
    i32 2, label %43
  ]

37:                                               ; preds = %31
  %38 = load i16, i16* %8, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* %9, align 2
  %41 = zext i16 %40 to i32
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41)
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %5, align 8
  br label %63

43:                                               ; preds = %31
  %44 = load i16, i16* %8, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* %9, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %47)
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %5, align 8
  br label %63

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.pcilst_struct*, %struct.pcilst_struct** %10, align 8
  %52 = call i32 @pci_card_alloc(%struct.pcilst_struct* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %5, align 8
  br label %63

61:                                               ; preds = %50
  %62 = load %struct.pcilst_struct*, %struct.pcilst_struct** %10, align 8
  store %struct.pcilst_struct* %62, %struct.pcilst_struct** %5, align 8
  br label %63

63:                                               ; preds = %61, %60, %43, %37, %28
  %64 = load %struct.pcilst_struct*, %struct.pcilst_struct** %5, align 8
  ret %struct.pcilst_struct* %64
}

declare dso_local %struct.pcilst_struct* @find_free_pci_card_by_device(i16 zeroext, i16 zeroext) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @find_free_pci_card_by_position(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, %struct.pcilst_struct**) #1

declare dso_local i32 @pci_card_alloc(%struct.pcilst_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
