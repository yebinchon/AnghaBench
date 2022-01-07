; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_find_free_pci_card_by_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_find_free_pci_card_by_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i16, i16, i16, i16, i32, %struct.pcilst_struct* }

@inova_devices = common dso_local global %struct.pcilst_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i16, i16, i16, %struct.pcilst_struct**)* @find_free_pci_card_by_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_pci_card_by_position(i16 zeroext %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3, %struct.pcilst_struct** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca %struct.pcilst_struct**, align 8
  %12 = alloca %struct.pcilst_struct*, align 8
  %13 = alloca %struct.pcilst_struct*, align 8
  store i16 %0, i16* %7, align 2
  store i16 %1, i16* %8, align 2
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store %struct.pcilst_struct** %4, %struct.pcilst_struct*** %11, align 8
  %14 = load %struct.pcilst_struct**, %struct.pcilst_struct*** %11, align 8
  store %struct.pcilst_struct* null, %struct.pcilst_struct** %14, align 8
  %15 = load %struct.pcilst_struct*, %struct.pcilst_struct** @inova_devices, align 8
  store %struct.pcilst_struct* %15, %struct.pcilst_struct** %12, align 8
  br label %16

16:                                               ; preds = %64, %5
  %17 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %18 = icmp ne %struct.pcilst_struct* %17, null
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %21 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %20, i32 0, i32 5
  %22 = load %struct.pcilst_struct*, %struct.pcilst_struct** %21, align 8
  store %struct.pcilst_struct* %22, %struct.pcilst_struct** %13, align 8
  %23 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %24 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %19
  %31 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %32 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* %8, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %30
  %39 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %40 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %39, i32 0, i32 2
  %41 = load i16, i16* %40, align 4
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %9, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %38
  %47 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %48 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %47, i32 0, i32 3
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* %10, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %56 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load %struct.pcilst_struct*, %struct.pcilst_struct** %12, align 8
  %61 = load %struct.pcilst_struct**, %struct.pcilst_struct*** %11, align 8
  store %struct.pcilst_struct* %60, %struct.pcilst_struct** %61, align 8
  store i32 0, i32* %6, align 4
  br label %67

62:                                               ; preds = %54
  store i32 2, i32* %6, align 4
  br label %67

63:                                               ; preds = %46, %38, %30, %19
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.pcilst_struct*, %struct.pcilst_struct** %13, align 8
  store %struct.pcilst_struct* %65, %struct.pcilst_struct** %12, align 8
  br label %16

66:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %62, %59
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
