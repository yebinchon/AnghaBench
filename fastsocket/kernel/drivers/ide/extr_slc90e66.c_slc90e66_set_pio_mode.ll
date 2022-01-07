; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_slc90e66.c_slc90e66_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_slc90e66.c_slc90e66_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.pci_dev = type { i32 }

@slc90e66_set_pio_mode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@slc90e66_lock = common dso_local global i32 0, align 4
@ide_disk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @slc90e66_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slc90e66_set_pio_mode(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.pci_dev* @to_pci_dev(i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 66, i32 64
  store i32 %30, i32* %8, align 4
  store i32 68, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* @slc90e66_lock, i64 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @pci_read_config_word(%struct.pci_dev* %33, i32 %34, i32* %11)
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ide_disk, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @ide_pio_need_iordy(%struct.TYPE_6__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, 2
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, 16384
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, -113
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* %13, align 4
  %70 = shl i32 %69, 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @pci_read_config_byte(%struct.pci_dev* %74, i32 %75, i32* %12)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 15, i32 240
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @slc90e66_set_pio_mode.timings, i64 0, i64 %86
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %87, i64 0, i64 0
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 %89, 2
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @slc90e66_set_pio_mode.timings, i64 0, i64 %92
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %93, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %90, %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 4, i32 0
  %103 = shl i32 %96, %102
  %104 = load i32, i32* %12, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %131

106:                                              ; preds = %58
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, -13064
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @slc90e66_set_pio_mode.timings, i64 0, i64 %117
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %118, i64 0, i64 0
  %120 = load i32, i32* %119, align 8
  %121 = shl i32 %120, 12
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @slc90e66_set_pio_mode.timings, i64 0, i64 %123
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %124, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 8
  %128 = or i32 %121, %127
  %129 = load i32, i32* %11, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %115, %73
  %132 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @pci_write_config_word(%struct.pci_dev* %132, i32 %133, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @pci_write_config_byte(%struct.pci_dev* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %131
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* @slc90e66_lock, i64 %144)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ide_pio_need_iordy(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
