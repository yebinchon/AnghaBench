; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, %struct.pci_dev*, %struct.firmware* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.firmware = type { i32 }
%struct.qlcnic_flt_entry = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"loading firmware from %s\0A\00", align 1
@fw_name = common dso_local global i32* null, align 8
@QLCNIC_IMAGE_START = common dso_local global i32 0, align 4
@QLCNIC_BOOTLD_START = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_BOOTLD_REGION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"using legacy method to get flash fw region\00", align 1
@QLCNIC_CRB_PEG_NET_0 = common dso_local global i64 0, align 8
@QLCNIC_ROMUSB_GLB_SW_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_load_firmware(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.qlcnic_flt_entry, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 2
  %18 = load %struct.firmware*, %struct.firmware** %17, align 8
  store %struct.firmware* %18, %struct.firmware** %8, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %9, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** @fw_name, align 8
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_info(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.firmware*, %struct.firmware** %8, align 8
  %34 = icmp ne %struct.firmware* %33, null
  br i1 %34, label %35, label %127

35:                                               ; preds = %1
  %36 = load i32, i32* @QLCNIC_IMAGE_START, align 4
  %37 = load i32, i32* @QLCNIC_BOOTLD_START, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sdiv i32 %38, 8
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %7, align 8
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %42 = call i64 @qlcnic_get_bootld_offs(%struct.qlcnic_adapter* %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %4, align 8
  %44 = load i32, i32* @QLCNIC_BOOTLD_START, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %46

46:                                               ; preds = %67, %35
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le64_to_cpu(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @qlcnic_pci_mem_write_2M(%struct.qlcnic_adapter* %56, i64 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %207

64:                                               ; preds = %50
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %46

70:                                               ; preds = %46
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %72 = call i32 @qlcnic_get_fw_size(%struct.qlcnic_adapter* %71)
  %73 = sdiv i32 %72, 8
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %7, align 8
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %76 = call i64 @qlcnic_get_fw_offs(%struct.qlcnic_adapter* %75)
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %4, align 8
  %78 = load i32, i32* @QLCNIC_IMAGE_START, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %80

80:                                               ; preds = %101, %70
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i32*, i32** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le64_to_cpu(i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @qlcnic_pci_mem_write_2M(%struct.qlcnic_adapter* %90, i64 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %207

98:                                               ; preds = %84
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 8
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %5, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %5, align 8
  br label %80

104:                                              ; preds = %80
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %106 = call i32 @qlcnic_get_fw_size(%struct.qlcnic_adapter* %105)
  %107 = srem i32 %106, 8
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %104
  %112 = load i32*, i32** %4, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le64_to_cpu(i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i64 @qlcnic_pci_mem_write_2M(%struct.qlcnic_adapter* %117, i64 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %207

125:                                              ; preds = %111
  br label %126

126:                                              ; preds = %125, %104
  br label %198

127:                                              ; preds = %1
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %129 = load i32, i32* @QLCNIC_BOOTLD_REGION, align 4
  %130 = call i32 @qlcnic_get_flt_entry(%struct.qlcnic_adapter* %128, i32 %129, %struct.qlcnic_flt_entry* %15)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.qlcnic_flt_entry, %struct.qlcnic_flt_entry* %15, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %135, 8
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %7, align 8
  %138 = getelementptr inbounds %struct.qlcnic_flt_entry, %struct.qlcnic_flt_entry* %15, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %6, align 8
  br label %151

140:                                              ; preds = %127
  %141 = load i32, i32* @QLCNIC_IMAGE_START, align 4
  %142 = load i32, i32* @QLCNIC_BOOTLD_START, align 4
  %143 = sub nsw i32 %141, %142
  %144 = sdiv i32 %143, 8
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %7, align 8
  %146 = load i32, i32* @QLCNIC_BOOTLD_START, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %6, align 8
  %148 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 0
  %150 = call i32 (i32*, i8*, ...) @dev_info(i32* %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %151

151:                                              ; preds = %140, %133
  store i64 0, i64* %5, align 8
  br label %152

152:                                              ; preds = %194, %151
  %153 = load i64, i64* %5, align 8
  %154 = load i64, i64* %7, align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %197

156:                                              ; preds = %152
  %157 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %158 = load i64, i64* %6, align 8
  %159 = bitcast i64* %13 to i32*
  %160 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %157, i64 %158, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32, i32* @EIO, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %207

165:                                              ; preds = %156
  %166 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %167 = load i64, i64* %6, align 8
  %168 = add i64 %167, 4
  %169 = bitcast i64* %12 to i32*
  %170 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %166, i64 %168, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %207

175:                                              ; preds = %165
  %176 = load i64, i64* %12, align 8
  %177 = trunc i64 %176 to i32
  %178 = shl i32 %177, 32
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %13, align 8
  %181 = or i64 %179, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %11, align 4
  %183 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %184 = load i64, i64* %6, align 8
  %185 = load i32, i32* %11, align 4
  %186 = call i64 @qlcnic_pci_mem_write_2M(%struct.qlcnic_adapter* %183, i64 %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %175
  %189 = load i32, i32* @EIO, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %2, align 4
  br label %207

191:                                              ; preds = %175
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, 8
  store i64 %193, i64* %6, align 8
  br label %194

194:                                              ; preds = %191
  %195 = load i64, i64* %5, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %5, align 8
  br label %152

197:                                              ; preds = %152
  br label %198

198:                                              ; preds = %197, %126
  %199 = call i32 @msleep(i32 1)
  %200 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %201 = load i64, i64* @QLCNIC_CRB_PEG_NET_0, align 8
  %202 = add nsw i64 %201, 24
  %203 = call i32 @QLCWR32(%struct.qlcnic_adapter* %200, i64 %202, i32 4128)
  %204 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %205 = load i64, i64* @QLCNIC_ROMUSB_GLB_SW_RESET, align 8
  %206 = call i32 @QLCWR32(%struct.qlcnic_adapter* %204, i64 %205, i32 8388638)
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %198, %188, %172, %162, %122, %95, %61
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @qlcnic_get_bootld_offs(%struct.qlcnic_adapter*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @qlcnic_pci_mem_write_2M(%struct.qlcnic_adapter*, i64, i32) #1

declare dso_local i32 @qlcnic_get_fw_size(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_get_fw_offs(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_get_flt_entry(%struct.qlcnic_adapter*, i32, %struct.qlcnic_flt_entry*) #1

declare dso_local i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter*, i64, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
