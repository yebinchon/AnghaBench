; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_register_pio_HBA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_register_pio_HBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.get_conf = type { i64, i32*, i64, i32, i64, i64, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { i8*, i8, i64, i16, i32, i32, i32, %struct.Scsi_Host*, %struct.Scsi_Host*, i32, i64, i32, i8*, i32, i32, i32, i32 }

@DBG_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"HBA at %#.4lx supports DMA. Please use EATA-DMA driver.\0A\00", align 1
@ALLOW_DMA_BOARDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"HBA at %#lx didn't react on INQUIRY. Sorry.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"HBA at %#lx failed while performing self test & setup.\0A\00", align 1
@driver_template = common dso_local global i32 0, align 4
@reg_IRQ = common dso_local global i32* null, align 8
@do_eata_pio_int_handler = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"EATA-PIO\00", align 1
@reg_IRQL = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Couldn't allocate IRQ %d, Sorry.\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"Can't support more than one HBA on this IRQ,\0A  if the IRQ is edge triggered. Sorry.\0A\00", align 1
@IS_PCI = common dso_local global i8* null, align 8
@IS_EISA = common dso_local global i8* null, align 8
@IS_ISA = common dso_local global i8* null, align 8
@PIO = common dso_local global i32 0, align 4
@SG_ALL = common dso_local global i32 0, align 4
@last_HBA = common dso_local global %struct.Scsi_Host* null, align 8
@first_HBA = common dso_local global %struct.Scsi_Host* null, align 8
@registered_HBAs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.get_conf*, %struct.pci_dev*)* @register_pio_HBA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_pio_HBA(i64 %0, %struct.get_conf* %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.get_conf*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.get_conf* %1, %struct.get_conf** %6, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* @DBG_REGISTER, align 4
  %15 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %16 = call i32 @print_pio_config(%struct.get_conf* %15)
  %17 = call i32 @DBG(i32 %14, i32 %16)
  %18 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %19 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %18, i32 0, i32 11
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @ALLOW_DMA_BOARDS, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %407

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %32 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %35 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %40 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cpu_to_be32(i32 %41)
  %43 = add nsw i32 %42, 1
  %44 = sdiv i32 %43, 2
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %10, align 8
  %46 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %47 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_be16(i32 %48)
  %50 = add nsw i32 %49, 1
  %51 = sdiv i32 %50, 2
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %11, align 2
  %53 = call i8* @get_pio_board_data(i64 %30, i64 %33, i32 %38, i64 %45, i16 zeroext %52)
  store i8* %53, i8** %9, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %29
  %56 = load i64, i64* %5, align 8
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  store i32 0, i32* %4, align 4
  br label %407

58:                                               ; preds = %29
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @print_selftest(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @ALLOW_DMA_BOARDS, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  store i32 0, i32* %4, align 4
  br label %407

68:                                               ; preds = %62, %58
  %69 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %70 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be16_to_cpu(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = add i64 104, %74
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call %struct.Scsi_Host* @scsi_register(i32* @driver_template, i64 %76)
  store %struct.Scsi_Host* %77, %struct.Scsi_Host** %12, align 8
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %79 = icmp eq %struct.Scsi_Host* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %407

81:                                               ; preds = %68
  %82 = load i32*, i32** @reg_IRQ, align 8
  %83 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %84 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %123, label %89

89:                                               ; preds = %81
  %90 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %91 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @do_eata_pio_int_handler, align 4
  %94 = load i32, i32* @IRQF_DISABLED, align 4
  %95 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %96 = call i32 @request_irq(i64 %92, i32 %93, i32 %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.Scsi_Host* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %89
  %99 = load i32*, i32** @reg_IRQ, align 8
  %100 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %101 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %107 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %98
  %111 = load i32*, i32** @reg_IRQL, align 8
  %112 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %113 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %98
  br label %122

117:                                              ; preds = %89
  %118 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %119 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %120)
  store i32 0, i32* %4, align 4
  br label %407

122:                                              ; preds = %116
  br label %142

123:                                              ; preds = %81
  %124 = load i32*, i32** @reg_IRQL, align 8
  %125 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %126 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %407

133:                                              ; preds = %123
  %134 = load i32*, i32** @reg_IRQ, align 8
  %135 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %136 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %122
  %143 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %144 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %143)
  store %struct.TYPE_3__* %144, %struct.TYPE_3__** %13, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 16
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %149 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @be16_to_cpu(i32 %150)
  %152 = sext i32 %151 to i64
  %153 = mul i64 4, %152
  %154 = trunc i64 %153 to i32
  %155 = call i32 @memset(i32 %147, i32 0, i32 %154)
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 15
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @memset(i32 %158, i32 0, i32 4)
  %160 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %161 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %160)
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 14
  %163 = load i32, i32* %162, align 4
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 8
  %166 = call i32 @strlcpy(i32 %163, i8* %165, i32 4)
  %167 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %168 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %167)
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 16
  %173 = call i32 @strlcpy(i32 %170, i8* %172, i32 4)
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 32
  %176 = load i8, i8* %175, align 1
  %177 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %178 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %177)
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  store i8 %176, i8* %181, align 1
  %182 = load i8*, i8** %9, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 33
  %184 = load i8, i8* %183, align 1
  %185 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %186 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %185)
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8 %184, i8* %189, align 1
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 34
  %192 = load i8, i8* %191, align 1
  %193 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %194 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %193)
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  store i8 %192, i8* %197, align 1
  %198 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %199 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %198)
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 3
  store i8 46, i8* %202, align 1
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 35
  %205 = load i8, i8* %204, align 1
  %206 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %207 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %206)
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 4
  store i8 %205, i8* %210, align 1
  %211 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %212 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %211)
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 5
  store i8 0, i8* %215, align 1
  %216 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %217 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @be32_to_cpu(i32 %218)
  switch i32 %219, label %236 [
    i32 28, label %220
    i32 30, label %224
    i32 34, label %228
    i32 36, label %232
  ]

220:                                              ; preds = %142
  %221 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %222 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %221)
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  store i8 97, i8* %223, align 8
  br label %240

224:                                              ; preds = %142
  %225 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %226 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %225)
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  store i8 98, i8* %227, align 8
  br label %240

228:                                              ; preds = %142
  %229 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %230 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %229)
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 1
  store i8 99, i8* %231, align 8
  br label %240

232:                                              ; preds = %142
  %233 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %234 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %233)
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  store i8 122, i8* %235, align 8
  br label %236

236:                                              ; preds = %142, %232
  %237 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %238 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %237)
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  store i8 63, i8* %239, align 8
  br label %240

240:                                              ; preds = %236, %228, %224, %220
  %241 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %242 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @be32_to_cpu(i32 %243)
  %245 = icmp sge i32 %244, 34
  br i1 %245, label %246, label %270

246:                                              ; preds = %240
  %247 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %248 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load i8*, i8** @IS_PCI, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 12
  store i8* %252, i8** %254, align 8
  br label %269

255:                                              ; preds = %246
  %256 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %257 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %256, i32 0, i32 4
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = load i8*, i8** @IS_EISA, align 8
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 12
  store i8* %261, i8** %263, align 8
  br label %268

264:                                              ; preds = %255
  %265 = load i8*, i8** @IS_ISA, align 8
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 12
  store i8* %265, i8** %267, align 8
  br label %268

268:                                              ; preds = %264, %260
  br label %269

269:                                              ; preds = %268, %251
  br label %296

270:                                              ; preds = %240
  %271 = load i8*, i8** %9, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 21
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 52
  br i1 %275, label %276, label %280

276:                                              ; preds = %270
  %277 = load i8*, i8** @IS_PCI, align 8
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 12
  store i8* %277, i8** %279, align 8
  br label %295

280:                                              ; preds = %270
  %281 = load i8*, i8** %9, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 21
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 50
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i8*, i8** @IS_EISA, align 8
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 12
  store i8* %287, i8** %289, align 8
  br label %294

290:                                              ; preds = %280
  %291 = load i8*, i8** @IS_ISA, align 8
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 12
  store i8* %291, i8** %293, align 8
  br label %294

294:                                              ; preds = %290, %286
  br label %295

295:                                              ; preds = %294, %276
  br label %296

296:                                              ; preds = %295, %269
  %297 = load i64, i64* %10, align 8
  %298 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %299 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %298)
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 2
  store i64 %297, i64* %300, align 8
  %301 = load i16, i16* %11, align 2
  %302 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %303 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %302)
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 3
  store i16 %301, i16* %304, align 8
  %305 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %306 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 3
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %311 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %310)
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 4
  store i32 %309, i32* %312, align 4
  %313 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %314 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 3
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 1, %317
  %319 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %320 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %319)
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 5
  store i32 %318, i32* %321, align 8
  %322 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %323 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %326 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %325)
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 11
  store i32 %324, i32* %327, align 8
  %328 = load i64, i64* %5, align 8
  %329 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %330 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %329, i32 0, i32 0
  store i64 %328, i64* %330, align 8
  %331 = load i64, i64* %5, align 8
  %332 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %333 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %332, i32 0, i32 1
  store i64 %331, i64* %333, align 8
  %334 = load i64, i64* %5, align 8
  %335 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %336 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %335, i32 0, i32 2
  store i64 %334, i64* %336, align 8
  %337 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %338 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %337, i32 0, i32 3
  store i32 9, i32* %338, align 8
  %339 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %340 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %343 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %342, i32 0, i32 4
  store i64 %341, i64* %343, align 8
  %344 = load i32, i32* @PIO, align 4
  %345 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %346 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %345, i32 0, i32 11
  store i32 %344, i32* %346, align 8
  %347 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %348 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 3
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %353 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %352, i32 0, i32 5
  store i32 %351, i32* %353, align 8
  %354 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %355 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %354, i32 0, i32 6
  store i32 1, i32* %355, align 4
  %356 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %357 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %356, i32 0, i32 7
  store i32 1, i32* %357, align 8
  %358 = load i32, i32* @SG_ALL, align 4
  %359 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %360 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %359, i32 0, i32 10
  store i32 %358, i32* %360, align 4
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 10
  store i64 0, i64* %362, align 8
  %363 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %364 = call i32 @pci_dev_get(%struct.pci_dev* %363)
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 9
  store i32 %364, i32* %366, align 8
  %367 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %368 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %367, i32 0, i32 8
  store i32 8, i32* %368, align 4
  %369 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %370 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %369, i32 0, i32 9
  store i32 8, i32* %370, align 8
  %371 = load %struct.get_conf*, %struct.get_conf** %6, align 8
  %372 = getelementptr inbounds %struct.get_conf, %struct.get_conf* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %296
  %376 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 6
  store i32 0, i32* %377, align 4
  br label %381

378:                                              ; preds = %296
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 6
  store i32 1, i32* %380, align 4
  br label %381

381:                                              ; preds = %378, %375
  %382 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i32 0, i32 7
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %383, align 8
  %384 = load %struct.Scsi_Host*, %struct.Scsi_Host** @last_HBA, align 8
  %385 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 8
  store %struct.Scsi_Host* %384, %struct.Scsi_Host** %386, align 8
  %387 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 8
  %389 = load %struct.Scsi_Host*, %struct.Scsi_Host** %388, align 8
  %390 = icmp ne %struct.Scsi_Host* %389, null
  br i1 %390, label %391, label %398

391:                                              ; preds = %381
  %392 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %393 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 8
  %395 = load %struct.Scsi_Host*, %struct.Scsi_Host** %394, align 8
  %396 = call %struct.TYPE_3__* @SD(%struct.Scsi_Host* %395)
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 7
  store %struct.Scsi_Host* %392, %struct.Scsi_Host** %397, align 8
  br label %398

398:                                              ; preds = %391, %381
  %399 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %399, %struct.Scsi_Host** @last_HBA, align 8
  %400 = load %struct.Scsi_Host*, %struct.Scsi_Host** @first_HBA, align 8
  %401 = icmp eq %struct.Scsi_Host* %400, null
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %403, %struct.Scsi_Host** @first_HBA, align 8
  br label %404

404:                                              ; preds = %402, %398
  %405 = load i32, i32* @registered_HBAs, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* @registered_HBAs, align 4
  store i32 1, i32* %4, align 4
  br label %407

407:                                              ; preds = %404, %131, %117, %80, %65, %55, %27
  %408 = load i32, i32* %4, align 4
  ret i32 %408
}

declare dso_local i32 @DBG(i32, i32) #1

declare dso_local i32 @print_pio_config(%struct.get_conf*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i8* @get_pio_board_data(i64, i64, i32, i64, i16 zeroext) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @print_selftest(i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.Scsi_Host* @scsi_register(i32*, i64) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.Scsi_Host*) #1

declare dso_local %struct.TYPE_3__* @SD(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
