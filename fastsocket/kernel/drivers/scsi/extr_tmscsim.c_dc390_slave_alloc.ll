; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, %struct.dc390_dcb*, %struct.TYPE_4__* }
%struct.dc390_dcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc390_acb*, %struct.dc390_dcb* }
%struct.dc390_acb = type { i64, i32, i32, %struct.TYPE_5__*, %struct.dc390_dcb*, %struct.dc390_dcb*, %struct.dc390_dcb*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYNC_NEGO_DONE = common dso_local global i32 0, align 4
@dc390_eepromBuf = common dso_local global i32** null, align 8
@dc390_clock_period1 = common dso_local global i32* null, align 8
@FAST_CLK = common dso_local global i32 0, align 4
@CTRL4_RESERVED = common dso_local global i32 0, align 4
@EE_MODE2 = common dso_local global i64 0, align 8
@ACTIVE_NEGATION = common dso_local global i32 0, align 4
@NEGATE_REQACKDATA = common dso_local global i32 0, align 4
@NEGATE_REQACK = common dso_local global i32 0, align 4
@SYNC_NEGO_ = common dso_local global i32 0, align 4
@SYNC_ENABLE = common dso_local global i32 0, align 4
@PARITY_CHK_ = common dso_local global i32 0, align 4
@PARITY_ERR_REPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @dc390_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc390_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.dc390_acb*, align 8
  %5 = alloca %struct.dc390_dcb*, align 8
  %6 = alloca %struct.dc390_dcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.dc390_acb*
  store %struct.dc390_acb* %16, %struct.dc390_acb** %4, align 8
  store %struct.dc390_dcb* null, %struct.dc390_dcb** %6, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.dc390_dcb* @kzalloc(i32 56, i32 %23)
  store %struct.dc390_dcb* %24, %struct.dc390_dcb** %5, align 8
  %25 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %26 = icmp ne %struct.dc390_dcb* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %215

30:                                               ; preds = %1
  %31 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %32 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %38 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %39 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %38, i32 0, i32 5
  store %struct.dc390_dcb* %37, %struct.dc390_dcb** %39, align 8
  %40 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %41 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %42 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %41, i32 0, i32 6
  store %struct.dc390_dcb* %40, %struct.dc390_dcb** %42, align 8
  br label %49

43:                                               ; preds = %30
  %44 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %45 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %46 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %45, i32 0, i32 4
  %47 = load %struct.dc390_dcb*, %struct.dc390_dcb** %46, align 8
  %48 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %47, i32 0, i32 11
  store %struct.dc390_dcb* %44, %struct.dc390_dcb** %48, align 8
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %51 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %50, i32 0, i32 5
  %52 = load %struct.dc390_dcb*, %struct.dc390_dcb** %51, align 8
  %53 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %54 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %53, i32 0, i32 11
  store %struct.dc390_dcb* %52, %struct.dc390_dcb** %54, align 8
  %55 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %56 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %57 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %56, i32 0, i32 4
  store %struct.dc390_dcb* %55, %struct.dc390_dcb** %57, align 8
  %58 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %59 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %60 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %59, i32 0, i32 10
  store %struct.dc390_acb* %58, %struct.dc390_acb** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %63 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %66 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %49
  %70 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.dc390_dcb* @dc390_findDCB(%struct.dc390_acb* %70, i32 %71, i32 0)
  store %struct.dc390_dcb* %72, %struct.dc390_dcb** %6, align 8
  %73 = icmp ne %struct.dc390_dcb* %72, null
  br i1 %73, label %74, label %112

74:                                               ; preds = %69
  %75 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %76 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %79 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %81 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SYNC_NEGO_DONE, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %86 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %88 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %91 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 4
  %92 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %93 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %96 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %98 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %101 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %103 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %106 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 8
  %107 = load %struct.dc390_dcb*, %struct.dc390_dcb** %6, align 8
  %108 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %111 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  br label %169

112:                                              ; preds = %69, %49
  %113 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %114 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %9, align 8
  %116 = load i32**, i32*** @dc390_eepromBuf, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds i32*, i32** %116, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = shl i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = bitcast i32* %123 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %124, %struct.TYPE_6__** %10, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %129 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32*, i32** @dc390_clock_period1, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 25
  %137 = ashr i32 %136, 2
  %138 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %139 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @FAST_CLK, align 4
  %141 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %142 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 8
  %143 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %144 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CTRL4_RESERVED, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %149 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 8
  %150 = load i32**, i32*** @dc390_eepromBuf, align 8
  %151 = load i64, i64* %9, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @EE_MODE2, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ACTIVE_NEGATION, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %112
  %161 = load i32, i32* @NEGATE_REQACKDATA, align 4
  %162 = load i32, i32* @NEGATE_REQACK, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %165 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %160, %112
  br label %169

169:                                              ; preds = %168, %74
  %170 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %171 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @SYNC_NEGO_, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load i32, i32* @SYNC_ENABLE, align 4
  %178 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %179 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %189

182:                                              ; preds = %169
  %183 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %184 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %183, i32 0, i32 3
  store i32 0, i32* %184, align 4
  %185 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %186 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, -16
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %182, %176
  %190 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %191 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %190, i32 0, i32 3
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %196 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 4
  %197 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %198 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @PARITY_CHK_, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %189
  %204 = load i32, i32* @PARITY_ERR_REPO, align 4
  %205 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %206 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %203, %189
  %210 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %211 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %210, i32 0, i32 2
  store i32 1, i32* %211, align 4
  %212 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %213 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %214 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %213, i32 0, i32 2
  store %struct.dc390_dcb* %212, %struct.dc390_dcb** %214, align 8
  store i32 0, i32* %2, align 4
  br label %215

215:                                              ; preds = %209, %27
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.dc390_dcb* @kzalloc(i32, i32) #1

declare dso_local %struct.dc390_dcb* @dc390_findDCB(%struct.dc390_acb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
