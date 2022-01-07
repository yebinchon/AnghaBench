; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_alim15x3.c_ali_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_alim15x3.c_ali_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.pci_dev = type { i32 }
%struct.ide_timing = type { i32, i32, i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@ide_pci_clk = common dso_local global i32 0, align 4
@ide_disk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @ali_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_set_pio_mode(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ide_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.pci_dev* @to_pci_dev(i32 %25)
  store %struct.pci_dev* %26, %struct.pci_dev** %6, align 8
  %27 = load i32, i32* @XFER_PIO_0, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %27, %28
  %30 = call %struct.ide_timing* @ide_timing_find_mode(i32 %29)
  store %struct.ide_timing* %30, %struct.ide_timing** %7, align 8
  %31 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %32 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %35 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %38 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @ide_pci_clk, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* @ide_pci_clk, align 4
  br label %45

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 33, %44 ]
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 92, i32 88
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 85, i32 84
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 1
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %15, align 4
  %65 = mul nsw i32 %63, %64
  %66 = add nsw i32 %65, 999
  %67 = sdiv i32 %66, 1000
  store i32 %67, i32* %11, align 4
  %68 = icmp sge i32 %67, 8
  br i1 %68, label %69, label %70

69:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %15, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %73, 999
  %75 = sdiv i32 %74, 1000
  store i32 %75, i32* %12, align 4
  %76 = icmp sge i32 %75, 8
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %77, %70
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %81, 999
  %83 = sdiv i32 %82, 1000
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  store i32 1, i32* %13, align 4
  br label %95

90:                                               ; preds = %78
  %91 = load i32, i32* %13, align 4
  %92 = icmp sge i32 %91, 16
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @local_irq_save(i64 %96)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @pci_read_config_byte(%struct.pci_dev* %98, i32 %99, i32* %18)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ide_disk, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %95
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %18, align 4
  %113 = and i32 %112, 15
  %114 = or i32 %113, 80
  %115 = call i32 @pci_write_config_byte(%struct.pci_dev* %110, i32 %111, i32 %114)
  br label %123

116:                                              ; preds = %106
  %117 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = and i32 %119, 240
  %121 = or i32 %120, 5
  %122 = call i32 @pci_write_config_byte(%struct.pci_dev* %117, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %116, %109
  br label %140

124:                                              ; preds = %95
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %18, align 4
  %131 = and i32 %130, 15
  %132 = call i32 @pci_write_config_byte(%struct.pci_dev* %128, i32 %129, i32 %131)
  br label %139

133:                                              ; preds = %124
  %134 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %18, align 4
  %137 = and i32 %136, 240
  %138 = call i32 @pci_write_config_byte(%struct.pci_dev* %134, i32 %135, i32 %137)
  br label %139

139:                                              ; preds = %133, %127
  br label %140

140:                                              ; preds = %139, %123
  %141 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @pci_write_config_byte(%struct.pci_dev* %141, i32 %142, i32 %143)
  %145 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %146, %147
  %149 = add nsw i32 %148, 2
  %150 = load i32, i32* %12, align 4
  %151 = shl i32 %150, 4
  %152 = load i32, i32* %13, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @pci_write_config_byte(%struct.pci_dev* %145, i32 %149, i32 %153)
  %155 = load i64, i64* %14, align 8
  %156 = call i32 @local_irq_restore(i64 %155)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ide_timing* @ide_timing_find_mode(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
