; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_tv8532.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_tv8532.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sd = type { i64 }

@R0C_AD_WIDTHL = common dso_local global i32 0, align 4
@R0D_AD_WIDTHH = common dso_local global i32 0, align 4
@R28_QUANT = common dso_local global i32 0, align 4
@R29_LINE = common dso_local global i32 0, align 4
@R2C_POLARITY = common dso_local global i32 0, align 4
@R2D_POINT = common dso_local global i32 0, align 4
@R2E_POINTH = common dso_local global i32 0, align 4
@R2F_POINTB = common dso_local global i32 0, align 4
@R30_POINTBH = common dso_local global i32 0, align 4
@R31_UPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load i32, i32* @R0C_AD_WIDTHL, align 4
  %8 = call i32 @reg_w1(%struct.gspca_dev* %6, i32 %7, i32 232)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = load i32, i32* @R0D_AD_WIDTHH, align 4
  %11 = call i32 @reg_w1(%struct.gspca_dev* %9, i32 %10, i32 3)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i32, i32* @R28_QUANT, align 4
  %14 = call i32 @reg_w1(%struct.gspca_dev* %12, i32 %13, i32 144)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = load i32, i32* @R29_LINE, align 4
  %31 = call i32 @reg_w1(%struct.gspca_dev* %29, i32 %30, i32 65)
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = load i32, i32* @R29_LINE, align 4
  %35 = call i32 @reg_w1(%struct.gspca_dev* %33, i32 %34, i32 129)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = load i32, i32* @R2C_POLARITY, align 4
  %39 = call i32 @reg_w1(%struct.gspca_dev* %37, i32 %38, i32 16)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = load i32, i32* @R2D_POINT, align 4
  %42 = call i32 @reg_w1(%struct.gspca_dev* %40, i32 %41, i32 20)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = load i32, i32* @R2E_POINTH, align 4
  %45 = call i32 @reg_w1(%struct.gspca_dev* %43, i32 %44, i32 1)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = load i32, i32* @R2F_POINTB, align 4
  %48 = call i32 @reg_w1(%struct.gspca_dev* %46, i32 %47, i32 18)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i32, i32* @R30_POINTBH, align 4
  %51 = call i32 @reg_w1(%struct.gspca_dev* %49, i32 %50, i32 1)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = call i32 @tv_8532_setReg(%struct.gspca_dev* %52)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = call i32 @setexposure(%struct.gspca_dev* %54)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = call i32 @setgain(%struct.gspca_dev* %56)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = load i32, i32* @R31_UPD, align 4
  %60 = call i32 @reg_w1(%struct.gspca_dev* %58, i32 %59, i32 1)
  %61 = call i32 @msleep(i32 200)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = load i32, i32* @R31_UPD, align 4
  %64 = call i32 @reg_w1(%struct.gspca_dev* %62, i32 %63, i32 0)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.sd*, %struct.sd** %3, align 8
  %68 = getelementptr inbounds %struct.sd, %struct.sd* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  ret i32 0
}

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @tv_8532_setReg(%struct.gspca_dev*) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*) #1

declare dso_local i32 @setgain(%struct.gspca_dev*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
