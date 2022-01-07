; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_siimage.c_sil_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_siimage.c_sil_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i64, i32 }
%struct.pci_dev = type { i32 }

@sil_set_pio_mode.tf_speed = internal constant [5 x i32] [i32 12938, i32 8835, i32 4737, i32 4291, i32 4289], align 16
@sil_set_pio_mode.data_speed = internal constant [5 x i32] [i32 12938, i32 8835, i32 4356, i32 4291, i32 4289], align 16
@IDE_HFLAG_MMIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64)* @sil_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil_set_pio_mode(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.pci_dev* @to_pci_dev(i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = call %struct.TYPE_11__* @ide_get_pair_dev(%struct.TYPE_11__* %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = call i64 @siimage_seldev(%struct.TYPE_11__* %28, i32 4)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = call i64 @siimage_selreg(%struct.TYPE_10__* %30, i32 2)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %13, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IDE_HFLAG_MMIO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %14, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %2
  %50 = load i64, i64* %14, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 244, i32 132
  br label %59

54:                                               ; preds = %2
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 180, i32 128
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i32 [ %53, %49 ], [ %58, %54 ]
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 1
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %17, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = call i64 @ide_get_best_pio_mode(%struct.TYPE_11__* %70, i32 255, i32 4)
  store i64 %71, i64* %18, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i64, i64* %18, align 8
  store i64 %76, i64* %13, align 8
  br label %77

77:                                               ; preds = %75, %69
  br label %78

78:                                               ; preds = %77, %59
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds [5 x i32], [5 x i32]* @sil_set_pio_mode.data_speed, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* @sil_set_pio_mode.tf_speed, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  %85 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @sil_iowrite16(%struct.pci_dev* %85, i32 %86, i64 %87)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @sil_iowrite16(%struct.pci_dev* %89, i32 %90, i64 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %94 = load i64, i64* %11, align 8
  %95 = sub i64 %94, 2
  %96 = call i32 @sil_ioread16(%struct.pci_dev* %93, i64 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, -513
  store i32 %98, i32* %9, align 4
  %99 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %15, align 8
  %102 = add i64 %100, %101
  %103 = call i64 @sil_ioread8(%struct.pci_dev* %99, i64 %102)
  store i64 %103, i64* %16, align 8
  %104 = load i64, i64* %17, align 8
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 48, i32 3
  %108 = xor i32 %107, -1
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %16, align 8
  %111 = and i64 %110, %109
  store i64 %111, i64* %16, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = load i64, i64* %4, align 8
  %114 = call i64 @ide_pio_need_iordy(%struct.TYPE_11__* %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %78
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, 512
  store i32 %118, i32* %9, align 4
  %119 = load i64, i64* %17, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 16, i32 1
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %16, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %16, align 8
  br label %126

126:                                              ; preds = %116, %78
  %127 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i64, i64* %11, align 8
  %130 = sub i64 %129, 2
  %131 = call i32 @sil_iowrite16(%struct.pci_dev* %127, i32 %128, i64 %130)
  %132 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* %15, align 8
  %136 = add i64 %134, %135
  %137 = call i32 @sil_iowrite8(%struct.pci_dev* %132, i64 %133, i64 %136)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.TYPE_11__* @ide_get_pair_dev(%struct.TYPE_11__*) #1

declare dso_local i64 @siimage_seldev(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @siimage_selreg(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ide_get_best_pio_mode(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sil_iowrite16(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @sil_ioread16(%struct.pci_dev*, i64) #1

declare dso_local i64 @sil_ioread8(%struct.pci_dev*, i64) #1

declare dso_local i64 @ide_pio_need_iordy(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @sil_iowrite8(%struct.pci_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
