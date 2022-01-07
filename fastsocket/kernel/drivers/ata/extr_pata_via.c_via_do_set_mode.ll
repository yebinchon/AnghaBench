; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_via.c_via_do_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_via.c_via_do_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ata_timing = type { i64, i64, i64, i64, i64, i64 }

@via_do_set_mode.via_clock = internal global i32 33333, align 4
@ATA_TIMING_8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32, i32, i32, i32)* @via_do_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_do_set_mode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.ata_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca %struct.ata_device*, align 8
  %15 = alloca %struct.ata_timing, align 8
  %16 = alloca %struct.ata_timing, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %7, align 8
  store %struct.ata_device* %1, %struct.ata_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.pci_dev* @to_pci_dev(i32 %28)
  store %struct.pci_dev* %29, %struct.pci_dev** %13, align 8
  %30 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %31 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %30)
  store %struct.ata_device* %31, %struct.ata_device** %14, align 8
  %32 = load i32, i32* @via_do_set_mode.via_clock, align 4
  %33 = sdiv i32 1000000000, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %35, %37
  store i64 %38, i64* %18, align 8
  %39 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 2, %41
  %43 = sub nsw i32 3, %42
  %44 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %45 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %20, align 4
  %48 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %18, align 8
  %52 = call i32 @ata_timing_compute(%struct.ata_device* %48, i32 %49, %struct.ata_timing* %15, i64 %50, i64 %51)
  %53 = load %struct.ata_device*, %struct.ata_device** %14, align 8
  %54 = icmp ne %struct.ata_device* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %6
  %56 = load %struct.ata_device*, %struct.ata_device** %14, align 8
  %57 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.ata_device*, %struct.ata_device** %14, align 8
  %62 = load %struct.ata_device*, %struct.ata_device** %14, align 8
  %63 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %18, align 8
  %67 = call i32 @ata_timing_compute(%struct.ata_device* %61, i32 %64, %struct.ata_timing* %16, i64 %65, i64 %66)
  %68 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %69 = call i32 @ata_timing_merge(%struct.ata_timing* %16, %struct.ata_timing* %15, %struct.ata_timing* %15, i32 %68)
  br label %70

70:                                               ; preds = %60, %55
  br label %71

71:                                               ; preds = %70, %6
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load i32, i32* %20, align 4
  %76 = mul nsw i32 2, %75
  store i32 %76, i32* %22, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %78 = call i32 @pci_read_config_byte(%struct.pci_dev* %77, i32 76, i32* %21)
  %79 = load i32, i32* %22, align 4
  %80 = shl i32 3, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %21, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %21, align 4
  %84 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @clamp_val(i64 %85, i32 1, i32 4)
  %87 = load i32, i32* %22, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %21, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %21, align 4
  %91 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %92 = load i32, i32* %21, align 4
  %93 = call i32 @pci_write_config_byte(%struct.pci_dev* %91, i32 76, i32 %92)
  br label %94

94:                                               ; preds = %74, %71
  %95 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %96 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %97 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 79, %98
  %100 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @clamp_val(i64 %101, i32 1, i32 16)
  %103 = sub nsw i32 %102, 1
  %104 = shl i32 %103, 4
  %105 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @clamp_val(i64 %106, i32 1, i32 16)
  %108 = sub nsw i32 %107, 1
  %109 = or i32 %104, %108
  %110 = call i32 @pci_write_config_byte(%struct.pci_dev* %95, i32 %99, i32 %109)
  %111 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %112 = load i32, i32* %20, align 4
  %113 = add nsw i32 72, %112
  %114 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @clamp_val(i64 %115, i32 1, i32 16)
  %117 = sub nsw i32 %116, 1
  %118 = shl i32 %117, 4
  %119 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @clamp_val(i64 %120, i32 1, i32 16)
  %122 = sub nsw i32 %121, 1
  %123 = or i32 %118, %122
  %124 = call i32 @pci_write_config_byte(%struct.pci_dev* %111, i32 %113, i32 %123)
  %125 = load i32, i32* %12, align 4
  switch i32 %125, label %126 [
    i32 33, label %127
    i32 66, label %140
    i32 100, label %153
    i32 133, label %166
  ]

126:                                              ; preds = %94
  br label %127

127:                                              ; preds = %94, %126
  %128 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @clamp_val(i64 %133, i32 2, i32 5)
  %135 = sub nsw i32 %134, 2
  %136 = or i32 224, %135
  br label %138

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %131
  %139 = phi i32 [ %136, %131 ], [ 3, %137 ]
  store i32 %139, i32* %19, align 4
  br label %179

140:                                              ; preds = %94
  %141 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @clamp_val(i64 %146, i32 2, i32 9)
  %148 = sub nsw i32 %147, 2
  %149 = or i32 232, %148
  br label %151

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %144
  %152 = phi i32 [ %149, %144 ], [ 15, %150 ]
  store i32 %152, i32* %19, align 4
  br label %179

153:                                              ; preds = %94
  %154 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @clamp_val(i64 %159, i32 2, i32 9)
  %161 = sub nsw i32 %160, 2
  %162 = or i32 224, %161
  br label %164

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163, %157
  %165 = phi i32 [ %162, %157 ], [ 7, %163 ]
  store i32 %165, i32* %19, align 4
  br label %179

166:                                              ; preds = %94
  %167 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @clamp_val(i64 %172, i32 2, i32 9)
  %174 = sub nsw i32 %173, 2
  %175 = or i32 224, %174
  br label %177

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176, %170
  %178 = phi i32 [ %175, %170 ], [ 7, %176 ]
  store i32 %178, i32* %19, align 4
  br label %179

179:                                              ; preds = %177, %164, %151, %138
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %200

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %15, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %188 = load i32, i32* %20, align 4
  %189 = add nsw i32 80, %188
  %190 = call i32 @pci_read_config_byte(%struct.pci_dev* %187, i32 %189, i32* %23)
  %191 = load i32, i32* %23, align 4
  %192 = and i32 %191, 16
  store i32 %192, i32* %23, align 4
  %193 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %194 = load i32, i32* %20, align 4
  %195 = add nsw i32 80, %194
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %23, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @pci_write_config_byte(%struct.pci_dev* %193, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %186, %182, %179
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i64, i64) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
