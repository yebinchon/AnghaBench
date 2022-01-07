; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_pci_card_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_icp_multi.h_pci_card_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i8, i8, i8, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcilst_struct*, i8*, i8*, i8*, i32*, i32*)* @pci_card_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_card_data(%struct.pcilst_struct* %0, i8* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcilst_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.pcilst_struct* %0, %struct.pcilst_struct** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.pcilst_struct*, %struct.pcilst_struct** %8, align 8
  %16 = icmp ne %struct.pcilst_struct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %54

18:                                               ; preds = %6
  %19 = load %struct.pcilst_struct*, %struct.pcilst_struct** %8, align 8
  %20 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = load i8*, i8** %9, align 8
  store i8 %21, i8* %22, align 1
  %23 = load %struct.pcilst_struct*, %struct.pcilst_struct** %8, align 8
  %24 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %10, align 8
  store i8 %25, i8* %26, align 1
  %27 = load %struct.pcilst_struct*, %struct.pcilst_struct** %8, align 8
  %28 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %27, i32 0, i32 2
  %29 = load i8, i8* %28, align 2
  %30 = load i8*, i8** %11, align 8
  store i8 %29, i8* %30, align 1
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %46, %18
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.pcilst_struct*, %struct.pcilst_struct** %8, align 8
  %36 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.pcilst_struct*, %struct.pcilst_struct** %8, align 8
  %51 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %17
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
