; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_via82cxxx.c_via_set_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_via82cxxx.c_via_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ide_timing = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ide_host = type { %struct.via82cxxx_dev* }
%struct.via82cxxx_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@VIA_BAD_AST = common dso_local global i32 0, align 4
@VIA_ADDRESS_SETUP = common dso_local global i32 0, align 4
@VIA_8BIT_TIMING = common dso_local global i32 0, align 4
@VIA_DRIVE_TIMING = common dso_local global i32 0, align 4
@VIA_UDMA_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, %struct.ide_timing*)* @via_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_set_speed(%struct.TYPE_5__* %0, i32 %1, %struct.ide_timing* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ide_timing*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.ide_host*, align 8
  %9 = alloca %struct.via82cxxx_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ide_timing* %2, %struct.ide_timing** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %7, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %16 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %15)
  store %struct.ide_host* %16, %struct.ide_host** %8, align 8
  %17 = load %struct.ide_host*, %struct.ide_host** %8, align 8
  %18 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %17, i32 0, i32 0
  %19 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %18, align 8
  store %struct.via82cxxx_dev* %19, %struct.via82cxxx_dev** %9, align 8
  %20 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %9, align 8
  %21 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @VIA_BAD_AST, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %3
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = load i32, i32* @VIA_ADDRESS_SETUP, align 4
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 %31, i32* %10)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 3, %34
  %36 = shl i32 %35, 1
  %37 = shl i32 3, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %33, %38
  %40 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %41 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clamp_val(i32 %42, i32 1, i32 4)
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 3, %45
  %47 = shl i32 %46, 1
  %48 = shl i32 %44, %47
  %49 = or i32 %39, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = load i32, i32* @VIA_ADDRESS_SETUP, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @pci_write_config_byte(%struct.pci_dev* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %29, %3
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = load i32, i32* @VIA_8BIT_TIMING, align 4
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, 1
  %59 = sub nsw i32 1, %58
  %60 = add nsw i32 %56, %59
  %61 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %62 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clamp_val(i32 %63, i32 1, i32 16)
  %65 = sub nsw i32 %64, 1
  %66 = shl i32 %65, 4
  %67 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %68 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clamp_val(i32 %69, i32 1, i32 16)
  %71 = sub nsw i32 %70, 1
  %72 = or i32 %66, %71
  %73 = call i32 @pci_write_config_byte(%struct.pci_dev* %55, i32 %60, i32 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %75 = load i32, i32* @VIA_DRIVE_TIMING, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 3, %76
  %78 = add nsw i32 %75, %77
  %79 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %80 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @clamp_val(i32 %81, i32 1, i32 16)
  %83 = sub nsw i32 %82, 1
  %84 = shl i32 %83, 4
  %85 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %86 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @clamp_val(i32 %87, i32 1, i32 16)
  %89 = sub nsw i32 %88, 1
  %90 = or i32 %84, %89
  %91 = call i32 @pci_write_config_byte(%struct.pci_dev* %74, i32 %78, i32 %90)
  %92 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %9, align 8
  %93 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %157 [
    i32 131, label %97
    i32 130, label %112
    i32 129, label %127
    i32 128, label %142
  ]

97:                                               ; preds = %54
  %98 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %99 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %104 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @clamp_val(i32 %105, i32 2, i32 5)
  %107 = sub nsw i32 %106, 2
  %108 = or i32 224, %107
  br label %110

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %102
  %111 = phi i32 [ %108, %102 ], [ 3, %109 ]
  store i32 %111, i32* %10, align 4
  br label %158

112:                                              ; preds = %54
  %113 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %114 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %119 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @clamp_val(i32 %120, i32 2, i32 9)
  %122 = sub nsw i32 %121, 2
  %123 = or i32 232, %122
  br label %125

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %117
  %126 = phi i32 [ %123, %117 ], [ 15, %124 ]
  store i32 %126, i32* %10, align 4
  br label %158

127:                                              ; preds = %54
  %128 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %129 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %134 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @clamp_val(i32 %135, i32 2, i32 9)
  %137 = sub nsw i32 %136, 2
  %138 = or i32 224, %137
  br label %140

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139, %132
  %141 = phi i32 [ %138, %132 ], [ 7, %139 ]
  store i32 %141, i32* %10, align 4
  br label %158

142:                                              ; preds = %54
  %143 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %144 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %149 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @clamp_val(i32 %150, i32 2, i32 9)
  %152 = sub nsw i32 %151, 2
  %153 = or i32 224, %152
  br label %155

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154, %147
  %156 = phi i32 [ %153, %147 ], [ 7, %154 ]
  store i32 %156, i32* %10, align 4
  br label %158

157:                                              ; preds = %54
  br label %166

158:                                              ; preds = %155, %140, %125, %110
  %159 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %160 = load i32, i32* @VIA_UDMA_TIMING, align 4
  %161 = load i32, i32* %5, align 4
  %162 = sub nsw i32 3, %161
  %163 = add nsw i32 %160, %162
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @pci_write_config_byte(%struct.pci_dev* %159, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %158, %157
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
