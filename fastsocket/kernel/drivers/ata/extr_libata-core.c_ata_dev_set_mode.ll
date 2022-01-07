; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i64, i32*, i64, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_eh_context, %struct.ata_port* }
%struct.ata_eh_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ata_port = type { i32 }

@ATA_HORKAGE_NOSETXFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATA_DFLAG_PIO = common dso_local global i32 0, align 4
@ATA_SHIFT_PIO = common dso_local global i64 0, align 8
@ATA_FLAG_SATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c" (SET_XFERMODE skipped)\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"NOSETXFER but PATA detected - can't skip SETXFER, might malfunction\0A\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_EHI_POST_SETMODE = common dso_local global i32 0, align 4
@ATA_DEV_UNKNOWN = common dso_local global i32 0, align 4
@XFER_PIO_2 = common dso_local global i64 0, align 8
@ATA_SHIFT_MWDMA = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c" (device error ignored)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"xfer_shift=%u, xfer_mode=0x%x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"configured for %s%s\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to set xfermode (err_mask=0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_dev_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_set_mode(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_eh_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.ata_port*, %struct.ata_port** %14, align 8
  store %struct.ata_port* %15, %struct.ata_port** %4, align 8
  %16 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 7
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.ata_eh_context* %19, %struct.ata_eh_context** %5, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ATA_HORKAGE_NOSETXFER, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %6, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ATA_SHIFT_PIO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %38 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %39 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %1
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATA_FLAG_SATA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %54 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @ata_id_is_sata(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %69

59:                                               ; preds = %52, %45, %42
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %64 = load i32, i32* @KERN_WARNING, align 4
  %65 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %63, i32 %64, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %68 = call i32 @ata_dev_set_xfermode(%struct.ata_device* %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @AC_ERR_DEV, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %199

76:                                               ; preds = %69
  %77 = load i32, i32* @ATA_EHI_POST_SETMODE, align 4
  %78 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %79 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %84 = load i32, i32* @ATA_DEV_UNKNOWN, align 4
  %85 = call i32 @ata_dev_revalidate(%struct.ata_device* %83, i32 %84, i32 0)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* @ATA_EHI_POST_SETMODE, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %89 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %76
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %2, align 4
  br label %206

97:                                               ; preds = %76
  %98 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %99 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ATA_SHIFT_PIO, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %97
  %104 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %105 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @ata_id_is_cfa(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %8, align 4
  br label %110

110:                                              ; preds = %109, %103
  %111 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %112 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = call i64 @ata_id_major_version(i32* %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %118 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @XFER_PIO_2, align 8
  %121 = icmp sle i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 1, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %116, %110
  %124 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %125 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @ata_id_has_iordy(i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %123
  %130 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %131 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @XFER_PIO_2, align 8
  %134 = icmp sle i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i32 1, i32* %8, align 4
  br label %136

136:                                              ; preds = %135, %129, %123
  br label %137

137:                                              ; preds = %136, %97
  %138 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %139 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ATA_SHIFT_MWDMA, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %137
  %144 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %145 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @XFER_MW_DMA_0, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %143
  %150 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %151 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 63
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 8
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  store i32 1, i32* %8, align 4
  br label %159

159:                                              ; preds = %158, %149, %143, %137
  %160 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %161 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %164 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @ata_id_xfermask(i32* %165)
  %167 = call i64 @ata_xfer_mask2mode(i32 %166)
  %168 = icmp eq i64 %162, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  store i32 1, i32* %8, align 4
  br label %170

170:                                              ; preds = %169, %159
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @AC_ERR_DEV, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  br label %199

179:                                              ; preds = %175
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180, %170
  %182 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %183 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %186 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %184, i32 %188)
  %190 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %191 = load i32, i32* @KERN_INFO, align 4
  %192 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %193 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @ata_xfer_mode2mask(i64 %194)
  %196 = call i32 @ata_mode_string(i32 %195)
  %197 = load i8*, i8** %7, align 8
  %198 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %190, i32 %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %196, i8* %197)
  store i32 0, i32* %2, align 4
  br label %206

199:                                              ; preds = %178, %75
  %200 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %201 = load i32, i32* @KERN_ERR, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %200, i32 %201, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @EIO, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %199, %181, %95
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i64 @ata_id_is_sata(i32*) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, ...) #1

declare dso_local i32 @ata_dev_set_xfermode(%struct.ata_device*) #1

declare dso_local i32 @ata_dev_revalidate(%struct.ata_device*, i32, i32) #1

declare dso_local i64 @ata_id_is_cfa(i32*) #1

declare dso_local i64 @ata_id_major_version(i32*) #1

declare dso_local i32 @ata_id_has_iordy(i32*) #1

declare dso_local i64 @ata_xfer_mask2mode(i32) #1

declare dso_local i32 @ata_id_xfermask(i32*) #1

declare dso_local i32 @DPRINTK(i8*, i64, i32) #1

declare dso_local i32 @ata_mode_string(i32) #1

declare dso_local i32 @ata_xfer_mode2mask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
