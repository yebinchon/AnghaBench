; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_generic_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_generic_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.vio_completion*, i32, %struct.vio_dring_state* }
%struct.vio_completion = type { i32, i32, i32 }
%struct.vio_dring_state = type { i32 }
%struct.vio_disk_desc = type { i32, i32, i32, %struct.TYPE_3__, i64, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LDC_MAP_W = common dso_local global i32 0, align 4
@LDC_MAP_R = common dso_local global i32 0, align 4
@LDC_MAP_RW = common dso_local global i32 0, align 4
@LDC_MAP_SHADOW = common dso_local global i32 0, align 4
@LDC_MAP_DIRECT = common dso_local global i32 0, align 4
@LDC_MAP_IO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@WAITING_FOR_GEN_CMD = common dso_local global i32 0, align 4
@VIO_ACK_ENABLE = common dso_local global i32 0, align 4
@VIO_DESC_READY = common dso_local global i32 0, align 4
@VDC_TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdc_port*, i32, i8*, i32)* @generic_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_request(%struct.vdc_port* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vdc_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vio_dring_state*, align 8
  %11 = alloca %struct.vio_completion, align 4
  %12 = alloca %struct.vio_disk_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = shl i32 1, %19
  %21 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %22 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %216

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %32 [
    i32 140, label %31
    i32 139, label %31
    i32 138, label %35
    i32 133, label %36
    i32 128, label %38
    i32 134, label %40
    i32 129, label %42
    i32 136, label %44
    i32 131, label %46
    i32 132, label %48
    i32 137, label %50
    i32 135, label %52
    i32 130, label %52
  ]

31:                                               ; preds = %29, %29
  br label %32

32:                                               ; preds = %29, %31
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %216

35:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %55

36:                                               ; preds = %29
  store i32 4, i32* %15, align 4
  %37 = load i32, i32* @LDC_MAP_W, align 4
  store i32 %37, i32* %13, align 4
  br label %55

38:                                               ; preds = %29
  store i32 4, i32* %15, align 4
  %39 = load i32, i32* @LDC_MAP_R, align 4
  store i32 %39, i32* %13, align 4
  br label %55

40:                                               ; preds = %29
  store i32 4, i32* %15, align 4
  %41 = load i32, i32* @LDC_MAP_W, align 4
  store i32 %41, i32* %13, align 4
  br label %55

42:                                               ; preds = %29
  store i32 4, i32* %15, align 4
  %43 = load i32, i32* @LDC_MAP_R, align 4
  store i32 %43, i32* %13, align 4
  br label %55

44:                                               ; preds = %29
  store i32 4, i32* %15, align 4
  %45 = load i32, i32* @LDC_MAP_W, align 4
  store i32 %45, i32* %13, align 4
  br label %55

46:                                               ; preds = %29
  store i32 4, i32* %15, align 4
  %47 = load i32, i32* @LDC_MAP_R, align 4
  store i32 %47, i32* %13, align 4
  br label %55

48:                                               ; preds = %29
  store i32 16, i32* %15, align 4
  %49 = load i32, i32* @LDC_MAP_RW, align 4
  store i32 %49, i32* %13, align 4
  br label %55

50:                                               ; preds = %29
  store i32 4, i32* %15, align 4
  %51 = load i32, i32* @LDC_MAP_W, align 4
  store i32 %51, i32* %13, align 4
  br label %55

52:                                               ; preds = %29, %29
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %216

55:                                               ; preds = %50, %48, %46, %44, %42, %40, %38, %36, %35
  %56 = load i32, i32* @LDC_MAP_SHADOW, align 4
  %57 = load i32, i32* @LDC_MAP_DIRECT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @LDC_MAP_IO, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 7
  %65 = and i32 %64, -8
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kzalloc(i32 %66, i32 %67)
  store i8* %68, i8** %17, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %55
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %216

74:                                               ; preds = %55
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @LDC_MAP_R, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i8*, i8** %17, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @memcpy(i8* %86, i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %92 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %97 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load %struct.vio_dring_state*, %struct.vio_dring_state** %98, align 8
  %100 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %101 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %99, i64 %100
  store %struct.vio_dring_state* %101, %struct.vio_dring_state** %10, align 8
  %102 = load %struct.vio_dring_state*, %struct.vio_dring_state** %10, align 8
  %103 = call %struct.vio_disk_desc* @vio_dring_cur(%struct.vio_dring_state* %102)
  store %struct.vio_disk_desc* %103, %struct.vio_disk_desc** %12, align 8
  %104 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %105 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %111 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %114 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @ldc_map_single(i32 %107, i8* %108, i32 %109, i32 %112, i32 %115, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %90
  %121 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %122 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load i8*, i8** %17, align 8
  %127 = call i32 @kfree(i8* %126)
  %128 = load i32, i32* %16, align 4
  store i32 %128, i32* %5, align 4
  br label %216

129:                                              ; preds = %90
  %130 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %11, i32 0, i32 1
  %131 = call i32 @init_completion(i32* %130)
  %132 = load i32, i32* @WAITING_FOR_GEN_CMD, align 4
  %133 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %11, i32 0, i32 2
  store i32 %132, i32* %133, align 4
  %134 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %135 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store %struct.vio_completion* %11, %struct.vio_completion** %136, align 8
  %137 = load i32, i32* @VIO_ACK_ENABLE, align 4
  %138 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %139 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %142 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %145 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %148 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %150 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %149, i32 0, i32 6
  store i64 0, i64* %150, align 8
  %151 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %152 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %151, i32 0, i32 5
  store i32 -1, i32* %152, align 8
  %153 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %154 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %153, i32 0, i32 4
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %157 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %160 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = call i32 (...) @wmb()
  %162 = load i32, i32* @VIO_DESC_READY, align 4
  %163 = load %struct.vio_disk_desc*, %struct.vio_disk_desc** %12, align 8
  %164 = getelementptr inbounds %struct.vio_disk_desc, %struct.vio_disk_desc* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 4
  %166 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %167 = call i32 @__vdc_tx_trigger(%struct.vdc_port* %166)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %129
  %171 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %172 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = load %struct.vio_dring_state*, %struct.vio_dring_state** %10, align 8
  %176 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* @VDC_TX_RING_SIZE, align 4
  %180 = sub nsw i32 %179, 1
  %181 = and i32 %178, %180
  %182 = load %struct.vio_dring_state*, %struct.vio_dring_state** %10, align 8
  %183 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  %184 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %185 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %14, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %11, i32 0, i32 1
  %190 = call i32 @wait_for_completion(i32* %189)
  %191 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %11, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %16, align 4
  br label %202

193:                                              ; preds = %129
  %194 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %195 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store %struct.vio_completion* null, %struct.vio_completion** %196, align 8
  %197 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %198 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i64, i64* %14, align 8
  %201 = call i32 @spin_unlock_irqrestore(i32* %199, i64 %200)
  br label %202

202:                                              ; preds = %193, %170
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @LDC_MAP_W, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load i8*, i8** %8, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @memcpy(i8* %208, i8* %209, i32 %210)
  br label %212

212:                                              ; preds = %207, %202
  %213 = load i8*, i8** %17, align 8
  %214 = call i32 @kfree(i8* %213)
  %215 = load i32, i32* %16, align 4
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %212, %120, %71, %52, %32, %26
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vio_disk_desc* @vio_dring_cur(%struct.vio_dring_state*) #1

declare dso_local i32 @ldc_map_single(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @__vdc_tx_trigger(%struct.vdc_port*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
