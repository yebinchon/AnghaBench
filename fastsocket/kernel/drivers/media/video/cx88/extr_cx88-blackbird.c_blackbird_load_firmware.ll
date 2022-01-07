; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_blackbird_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_blackbird_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }

@blackbird_load_firmware.magic = internal constant [8 x i8] c"\A7\0D\00\00f\BBU\AA", align 1
@IVTV_REG_VPU = common dso_local global i32 0, align 4
@IVTV_REG_HW_BLOCKS = common dso_local global i32 0, align 4
@IVTV_CMD_HW_BLOCKS_RST = common dso_local global i32 0, align 4
@IVTV_REG_ENC_SDRAM_REFRESH = common dso_local global i32 0, align 4
@IVTV_REG_ENC_SDRAM_PRECHARGE = common dso_local global i32 0, align 4
@IVTV_REG_APU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error with register_write\0A\00", align 1
@CX2341X_FIRM_ENC_FILENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"ERROR: Hotplug firmware request failed (%s).\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"Please fix your hotplug setup, the board will not work without firmware loaded!\0A\00", align 1
@BLACKBIRD_FIRM_IMAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"ERROR: Firmware size mismatch (have %zd, expected %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"ERROR: Firmware magic mismatch, wrong file?\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Loading firmware ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"ERROR: Firmware load failed (checksum mismatch).\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Firmware upload successful.\0A\00", align 1
@IVTV_REG_SPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_dev*)* @blackbird_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blackbird_load_firmware(%struct.cx8802_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx8802_dev*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IVTV_REG_VPU, align 4
  %14 = call i32 @register_write(i32 %12, i32 %13, i32 -19)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IVTV_REG_HW_BLOCKS, align 4
  %19 = load i32, i32* @IVTV_CMD_HW_BLOCKS_RST, align 4
  %20 = call i32 @register_write(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IVTV_REG_ENC_SDRAM_REFRESH, align 4
  %27 = call i32 @register_write(i32 %25, i32 %26, i32 -2147482048)
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %31 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IVTV_REG_ENC_SDRAM_PRECHARGE, align 4
  %34 = call i32 @register_write(i32 %32, i32 %33, i32 26)
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = call i32 @msleep(i32 1)
  %38 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %39 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IVTV_REG_APU, align 4
  %42 = call i32 @register_write(i32 %40, i32 %41, i32 0)
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %1
  %50 = load i32, i32* @CX2341X_FIRM_ENC_FILENAME, align 4
  %51 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %52 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @request_firmware(%struct.firmware** %4, i32 %50, i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @CX2341X_FIRM_ENC_FILENAME, align 4
  %60 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %193

62:                                               ; preds = %49
  %63 = load %struct.firmware*, %struct.firmware** %4, align 8
  %64 = getelementptr inbounds %struct.firmware, %struct.firmware* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BLACKBIRD_FIRM_IMAGE_SIZE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.firmware*, %struct.firmware** %4, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BLACKBIRD_FIRM_IMAGE_SIZE, align 4
  %73 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.firmware*, %struct.firmware** %4, align 8
  %75 = call i32 @release_firmware(%struct.firmware* %74)
  store i32 -1, i32* %2, align 4
  br label %193

76:                                               ; preds = %62
  %77 = load %struct.firmware*, %struct.firmware** %4, align 8
  %78 = getelementptr inbounds %struct.firmware, %struct.firmware* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @memcmp(i64 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @blackbird_load_firmware.magic, i64 0, i64 0), i32 8)
  %81 = icmp ne i64 0, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.firmware*, %struct.firmware** %4, align 8
  %85 = call i32 @release_firmware(%struct.firmware* %84)
  store i32 -1, i32* %2, align 4
  br label %193

86:                                               ; preds = %76
  %87 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.firmware*, %struct.firmware** %4, align 8
  %89 = getelementptr inbounds %struct.firmware, %struct.firmware* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %9, align 8
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %114, %86
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.firmware*, %struct.firmware** %4, align 8
  %95 = getelementptr inbounds %struct.firmware, %struct.firmware* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = ashr i32 %96, 2
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %92
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %107 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @memory_write(i32 %108, i32 %109, i32 %110)
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %9, align 8
  br label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %92

117:                                              ; preds = %92
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %133, %117
  %121 = load i32, i32* %5, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %125 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @memory_read(i32 %126, i32 %127, i32* %7)
  %129 = load i32, i32* %7, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %5, align 4
  br label %120

136:                                              ; preds = %120
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %141 = load %struct.firmware*, %struct.firmware** %4, align 8
  %142 = call i32 @release_firmware(%struct.firmware* %141)
  store i32 -1, i32* %2, align 4
  br label %193

143:                                              ; preds = %136
  %144 = load %struct.firmware*, %struct.firmware** %4, align 8
  %145 = call i32 @release_firmware(%struct.firmware* %144)
  %146 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %147 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %148 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @IVTV_REG_HW_BLOCKS, align 4
  %151 = load i32, i32* @IVTV_CMD_HW_BLOCKS_RST, align 4
  %152 = call i32 @register_write(i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  %155 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %156 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @IVTV_REG_SPU, align 4
  %159 = call i32 @register_read(i32 %157, i32 %158, i32* %7)
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %163 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IVTV_REG_SPU, align 4
  %166 = load i32, i32* %7, align 4
  %167 = and i32 %166, -2
  %168 = call i32 @register_write(i32 %164, i32 %165, i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %6, align 4
  %171 = call i32 @msleep(i32 1)
  %172 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %173 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IVTV_REG_VPU, align 4
  %176 = call i32 @register_read(i32 %174, i32 %175, i32* %7)
  %177 = load i32, i32* %6, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %6, align 4
  %179 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %180 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IVTV_REG_VPU, align 4
  %183 = load i32, i32* %7, align 4
  %184 = and i32 %183, -24
  %185 = call i32 @register_write(i32 %181, i32 %182, i32 %184)
  %186 = load i32, i32* %6, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %143
  %191 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %143
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %139, %82, %68, %58
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @register_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i64 @memcmp(i64, i8*, i32) #1

declare dso_local i32 @memory_write(i32, i32, i32) #1

declare dso_local i32 @memory_read(i32, i32, i32*) #1

declare dso_local i32 @register_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
