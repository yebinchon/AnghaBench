; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sethvflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sethvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@OV519_R51_RESET1 = common dso_local global i32 0, align 4
@OV7670_R1E_MVFP = common dso_local global i32 0, align 4
@OV7670_MVFP_MIRROR = common dso_local global i32 0, align 4
@HFLIP = common dso_local global i64 0, align 8
@OV7670_MVFP_VFLIP = common dso_local global i32 0, align 4
@VFLIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sethvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sethvflip(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = load i32, i32* @OV519_R51_RESET1, align 4
  %14 = call i32 @reg_w(%struct.sd* %12, i32 %13, i32 15)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = load i32, i32* @OV7670_R1E_MVFP, align 4
  %18 = load i32, i32* @OV7670_MVFP_MIRROR, align 4
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i64, i64* @HFLIP, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %18, %25
  %27 = load i32, i32* @OV7670_MVFP_VFLIP, align 4
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* @VFLIP, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %27, %34
  %36 = or i32 %26, %35
  %37 = load i32, i32* @OV7670_MVFP_MIRROR, align 4
  %38 = load i32, i32* @OV7670_MVFP_VFLIP, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @i2c_w_mask(%struct.sd* %16, i32 %17, i32 %36, i32 %39)
  %41 = load %struct.sd*, %struct.sd** %3, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %15
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = load i32, i32* @OV519_R51_RESET1, align 4
  %49 = call i32 @reg_w(%struct.sd* %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %46, %15
  ret void
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @i2c_w_mask(%struct.sd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
