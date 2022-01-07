; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca505.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca505.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__, %struct.usb_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.sd = type { i64 }

@sd_start.mode_tb = internal global [5 x [3 x i32]] [[3 x i32] [i32 0, i32 16, i32 16], [3 x i32] [i32 1, i32 26, i32 26], [3 x i32] [i32 2, i32 28, i32 29], [3 x i32] [i32 4, i32 52, i32 52], [3 x i32] [i32 5, i32 64, i32 64]], align 16
@Nxultra = common dso_local global i64 0, align 8
@spca505b_open_data_ccd = common dso_local global i32 0, align 4
@spca505_open_data_ccd = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"register read failed err: %d\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"After vector read returns 0x%04x should be 0x0101\00", align 1
@SPCA50X_REG_COMPRESS = common dso_local global i32 0, align 4
@SPCA50X_REG_USB = common dso_local global i32 0, align 4
@SPCA50X_USB_CTRL = common dso_local global i32 0, align 4
@SPCA50X_CUSB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %4, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 2
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %5, align 8
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @Nxultra, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = load i32, i32* @spca505b_open_data_ccd, align 4
  %21 = call i32 @write_vector(%struct.gspca_dev* %19, i32 %20)
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = load i32, i32* @spca505_open_data_ccd, align 4
  %25 = call i32 @write_vector(%struct.gspca_dev* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = call i32 @reg_read(%struct.gspca_dev* %27, i32 6, i32 22)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @D_ERR, align 4
  %33 = load i32, i32* @D_CONF, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @PDEBUG(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %104

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 257
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %45, i32 0, i32 2
  %47 = load %struct.usb_device*, %struct.usb_device** %46, align 8
  %48 = call i32 @reg_write(%struct.usb_device* %47, i32 6, i32 22, i32 10)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %104

53:                                               ; preds = %44
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 2
  %56 = load %struct.usb_device*, %struct.usb_device** %55, align 8
  %57 = call i32 @reg_write(%struct.usb_device* %56, i32 5, i32 194, i32 18)
  %58 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %59 = call i32 @reg_write(%struct.usb_device* %58, i32 2, i32 0, i32 0)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %73 = load i32, i32* @SPCA50X_REG_COMPRESS, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @sd_start.mode_tb, i64 0, i64 %75
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %76, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @reg_write(%struct.usb_device* %72, i32 %73, i32 0, i32 %78)
  %80 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %81 = load i32, i32* @SPCA50X_REG_COMPRESS, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @sd_start.mode_tb, i64 0, i64 %83
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %84, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @reg_write(%struct.usb_device* %80, i32 %81, i32 6, i32 %86)
  %88 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %89 = load i32, i32* @SPCA50X_REG_COMPRESS, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @sd_start.mode_tb, i64 0, i64 %91
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %92, i64 0, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @reg_write(%struct.usb_device* %88, i32 %89, i32 7, i32 %94)
  %96 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %97 = load i32, i32* @SPCA50X_REG_USB, align 4
  %98 = load i32, i32* @SPCA50X_USB_CTRL, align 4
  %99 = load i32, i32* @SPCA50X_CUSB_ENABLE, align 4
  %100 = call i32 @reg_write(%struct.usb_device* %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %102 = call i32 @setbrightness(%struct.gspca_dev* %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %53, %51, %31
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_read(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @reg_write(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
