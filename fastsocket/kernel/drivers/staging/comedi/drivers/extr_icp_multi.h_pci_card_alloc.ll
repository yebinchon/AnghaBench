; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_pci_card_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_pci_card_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i32, %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c" - BUG!! inova is NULL!\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"icp_multi\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c" - Can't enable PCI device and request regions!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcilst_struct*)* @pci_card_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_card_alloc(%struct.pcilst_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcilst_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.pcilst_struct* %0, %struct.pcilst_struct** %3, align 8
  %5 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %6 = icmp ne %struct.pcilst_struct* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %11 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %52

15:                                               ; preds = %9
  %16 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %17 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i64 @comedi_pci_enable(%struct.TYPE_3__* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %52

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %29 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pci_resource_start(%struct.TYPE_3__* %30, i32 %31)
  %33 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %34 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %44 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %49 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %51 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %42, %21, %14, %7
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @comedi_pci_enable(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
