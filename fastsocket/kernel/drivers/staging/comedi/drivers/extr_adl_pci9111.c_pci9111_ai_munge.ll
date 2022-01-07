; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_munge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.pci9111_board = type { i32 }

@PCI9111_HR_AI_RESOLUTION = common dso_local global i32 0, align 4
@PCI9111_HR_AI_RESOLUTION_MASK = common dso_local global i16 0, align 2
@PCI9111_HR_AI_RESOLUTION_2_CMP_BIT = common dso_local global i16 0, align 2
@PCI9111_AI_RESOLUTION_MASK = common dso_local global i16 0, align 2
@PCI9111_AI_RESOLUTION_2_CMP_BIT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @pci9111_ai_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9111_ai_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = udiv i64 %16, 2
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i16*
  store i16* %20, i16** %13, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.pci9111_board*
  %25 = getelementptr inbounds %struct.pci9111_board, %struct.pci9111_board* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %73, %5
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %27
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @PCI9111_HR_AI_RESOLUTION, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i16*, i16** %13, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %36, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* @PCI9111_HR_AI_RESOLUTION_MASK, align 2
  %43 = sext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = load i16, i16* @PCI9111_HR_AI_RESOLUTION_2_CMP_BIT, align 2
  %46 = sext i16 %45 to i32
  %47 = xor i32 %44, %46
  %48 = trunc i32 %47 to i16
  %49 = load i16*, i16** %13, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %49, i64 %51
  store i16 %48, i16* %52, align 2
  br label %72

53:                                               ; preds = %31
  %54 = load i16*, i16** %13, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = ashr i32 %59, 4
  %61 = load i16, i16* @PCI9111_AI_RESOLUTION_MASK, align 2
  %62 = sext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = load i16, i16* @PCI9111_AI_RESOLUTION_2_CMP_BIT, align 2
  %65 = sext i16 %64 to i32
  %66 = xor i32 %63, %65
  %67 = trunc i32 %66 to i16
  %68 = load i16*, i16** %13, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %68, i64 %70
  store i16 %67, i16* %71, align 2
  br label %72

72:                                               ; preds = %53, %35
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %27

76:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
