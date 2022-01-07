; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_amcc_s5933.h_i_pci_card_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_amcc_s5933.h_i_pci_card_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilst_struct = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_pci_card_free(%struct.pcilst_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcilst_struct*, align 8
  store %struct.pcilst_struct* %0, %struct.pcilst_struct** %3, align 8
  %4 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %5 = icmp ne %struct.pcilst_struct* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %20

7:                                                ; preds = %1
  %8 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %9 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %20

13:                                               ; preds = %7
  %14 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %15 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.pcilst_struct*, %struct.pcilst_struct** %3, align 8
  %17 = getelementptr inbounds %struct.pcilst_struct, %struct.pcilst_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @comedi_pci_disable(i32 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %13, %12, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @comedi_pci_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
