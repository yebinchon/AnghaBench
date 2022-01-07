; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsiop_mode_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsiop_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_scsi_args = type { %struct.TYPE_2__*, i32, %struct.ata_device* }
%struct.TYPE_2__ = type { i32* }
%struct.ata_device = type { i32, i64 }

@__const.ata_scsiop_mode_sense.sat_blk_desc = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0], align 16
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@MODE_SENSE = common dso_local global i32 0, align 4
@ALL_SUB_MPAGES = common dso_local global i32 0, align 4
@ATA_DFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_DFLAG_PIO = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_scsi_args*, i32*)* @ata_scsiop_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsiop_mode_sense(%struct.ata_scsi_args* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_scsi_args*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ata_scsi_args* %0, %struct.ata_scsi_args** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %18 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %17, i32 0, i32 2
  %19 = load %struct.ata_device*, %struct.ata_device** %18, align 8
  store %struct.ata_device* %19, %struct.ata_device** %6, align 8
  %20 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %21 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %5, align 8
  store i32* %25, i32** %8, align 8
  %26 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([8 x i32]* @__const.ata_scsiop_mode_sense.sat_blk_desc to i8*), i64 32, i1 false)
  %27 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MODE_SENSE, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 6
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  switch i32 %45, label %49 [
    i32 0, label %46
    i32 3, label %47
    i32 1, label %48
    i32 2, label %48
  ]

46:                                               ; preds = %2
  br label %50

47:                                               ; preds = %2
  br label %222

48:                                               ; preds = %2, %2
  br label %49

49:                                               ; preds = %2, %48
  br label %216

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 8, i32 0
  %58 = add nsw i32 4, %57
  %59 = load i32*, i32** %8, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %8, align 8
  br label %71

62:                                               ; preds = %50
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 8, i32 0
  %67 = add nsw i32 8, %66
  %68 = load i32*, i32** %8, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %8, align 8
  br label %71

71:                                               ; preds = %62, %53
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 63
  store i32 %75, i32* %10, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @ALL_SUB_MPAGES, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %216

86:                                               ; preds = %81, %71
  %87 = load i32, i32* %10, align 4
  switch i32 %87, label %128 [
    i32 128, label %88
    i32 130, label %94
    i32 129, label %103
    i32 131, label %109
  ]

88:                                               ; preds = %86
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @ata_msense_rw_recovery(i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %8, align 8
  br label %129

94:                                               ; preds = %86
  %95 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %96 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @ata_msense_caching(i32 %97, i32* %98)
  %100 = load i32*, i32** %8, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %8, align 8
  br label %129

103:                                              ; preds = %86
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @ata_msense_ctl_mode(i32* %104)
  %106 = load i32*, i32** %8, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %8, align 8
  br label %129

109:                                              ; preds = %86
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @ata_msense_rw_recovery(i32* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %8, align 8
  %115 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %116 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @ata_msense_caching(i32 %117, i32* %118)
  %120 = load i32*, i32** %8, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %8, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @ata_msense_ctl_mode(i32* %123)
  %125 = load i32*, i32** %8, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %8, align 8
  br label %129

128:                                              ; preds = %86
  br label %216

129:                                              ; preds = %109, %103, %94, %88
  store i32 0, i32* %15, align 4
  %130 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %131 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @ata_dev_supports_fua(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %129
  %136 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %137 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ATA_DFLAG_LBA48, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %135
  %143 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %144 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %151 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149, %142
  store i32 16, i32* %15, align 4
  br label %155

155:                                              ; preds = %154, %149, %135, %129
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = ptrtoint i32* %159 to i64
  %162 = ptrtoint i32* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sdiv exact i64 %163, 4
  %165 = sub nsw i64 %164, 1
  %166 = trunc i64 %165 to i32
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %158
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  store i32 32, i32* %178, align 4
  %179 = load i32*, i32** %5, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %182 = call i32 @memcpy(i32* %180, i32* %181, i32 32)
  br label %183

183:                                              ; preds = %176, %158
  br label %215

184:                                              ; preds = %155
  %185 = load i32*, i32** %8, align 8
  %186 = load i32*, i32** %5, align 8
  %187 = ptrtoint i32* %185 to i64
  %188 = ptrtoint i32* %186 to i64
  %189 = sub i64 %187, %188
  %190 = sdiv exact i64 %189, 4
  %191 = sub nsw i64 %190, 2
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = lshr i32 %193, 8
  %195 = load i32*, i32** %5, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32*, i32** %5, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load i32*, i32** %5, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %184
  %208 = load i32*, i32** %5, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 7
  store i32 32, i32* %209, align 4
  %210 = load i32*, i32** %5, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 8
  %212 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %213 = call i32 @memcpy(i32* %211, i32* %212, i32 32)
  br label %214

214:                                              ; preds = %207, %184
  br label %215

215:                                              ; preds = %214, %183
  store i32 0, i32* %3, align 4
  br label %228

216:                                              ; preds = %128, %85, %49
  %217 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %218 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %217, i32 0, i32 0
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %221 = call i32 @ata_scsi_set_sense(%struct.TYPE_2__* %219, i32 %220, i32 36, i32 0)
  store i32 1, i32* %3, align 4
  br label %228

222:                                              ; preds = %47
  %223 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %4, align 8
  %224 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %223, i32 0, i32 0
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %227 = call i32 @ata_scsi_set_sense(%struct.TYPE_2__* %225, i32 %226, i32 57, i32 0)
  store i32 1, i32* %3, align 4
  br label %228

228:                                              ; preds = %222, %216, %215
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VPRINTK(i8*) #2

declare dso_local i32 @ata_msense_rw_recovery(i32*) #2

declare dso_local i32 @ata_msense_caching(i32, i32*) #2

declare dso_local i32 @ata_msense_ctl_mode(i32*) #2

declare dso_local i64 @ata_dev_supports_fua(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ata_scsi_set_sense(%struct.TYPE_2__*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
