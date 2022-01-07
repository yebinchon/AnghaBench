; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it8213.c_it8213_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it8213.c_it8213_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }

@it8213_set_pio_mode.tune_lock = internal global i32 0, align 4
@it8213_set_pio_mode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@ide_disk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @it8213_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8213_set_pio_mode(%struct.TYPE_6__* %0, i32 %1) #0 {
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
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.pci_dev* @to_pci_dev(i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 1
  store i32 %24, i32* %7, align 4
  store i32 64, i32* %8, align 4
  store i32 68, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @it8213_set_pio_mode.tune_lock, i64 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pci_read_config_word(%struct.pci_dev* %27, i32 %28, i32* %11)
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, 1
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ide_disk, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @ide_pio_need_iordy(%struct.TYPE_6__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, 2
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, 16384
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, -113
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 %64, 4
  %66 = or i32 %63, %65
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @pci_read_config_byte(%struct.pci_dev* %68, i32 %69, i32* %12)
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 240
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @it8213_set_pio_mode.timings, i64 0, i64 %75
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %76, i64 0, i64 0
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 %78, 2
  %80 = or i32 %73, %79
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @it8213_set_pio_mode.timings, i64 0, i64 %82
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %80, %85
  store i32 %86, i32* %12, align 4
  br label %112

87:                                               ; preds = %52
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, -13064
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %13, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @it8213_set_pio_mode.timings, i64 0, i64 %99
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %100, i64 0, i64 0
  %102 = load i32, i32* %101, align 8
  %103 = shl i32 %102, 12
  %104 = or i32 %97, %103
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @it8213_set_pio_mode.timings, i64 0, i64 %106
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = or i32 %104, %110
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %96, %67
  %113 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @pci_write_config_word(%struct.pci_dev* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @pci_write_config_byte(%struct.pci_dev* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %112
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* @it8213_set_pio_mode.tune_lock, i64 %125)
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
