; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_13__, %struct.TYPE_12__*, i32* }
%struct.TYPE_13__ = type { i64, i32, i32, i32, %struct.cam }
%struct.cam = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.usb_host_interface = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.usb_interface = type { i32 }

@PB_ROWSPEED = common dso_local global i32 0, align 4
@PB0100_CROP_TO_VGA = common dso_local global i32 0, align 4
@PB_RSTART = common dso_local global i32 0, align 4
@PB_CSTART = common dso_local global i32 0, align 4
@PB_RWSIZE = common dso_local global i32 0, align 4
@PB_CWSIZE = common dso_local global i32 0, align 4
@PB0100_SUBSAMPLE = common dso_local global i32 0, align 4
@STV_Y_CTRL = common dso_local global i32 0, align 4
@STV_X_CTRL = common dso_local global i32 0, align 4
@STV_SCAN_RATE = common dso_local global i32 0, align 4
@GAIN_IDX = common dso_local global i64 0, align 8
@EXPOSURE_IDX = common dso_local global i64 0, align 8
@AUTOGAIN_TARGET_IDX = common dso_local global i64 0, align 8
@AUTOGAIN_IDX = common dso_local global i64 0, align 8
@PB_CONTROL = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Started stream, status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @pb0100_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb0100_start(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.cam*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 4
  store %struct.cam* %13, %struct.cam** %8, align 8
  %14 = load %struct.sd*, %struct.sd** %2, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.cam*, %struct.cam** %8, align 8
  %18 = getelementptr inbounds %struct.cam, %struct.cam* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load %struct.sd*, %struct.sd** %2, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.sd*, %struct.sd** %2, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sd*, %struct.sd** %2, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %30, i32 %34)
  store %struct.usb_interface* %35, %struct.usb_interface** %7, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %37 = load %struct.sd*, %struct.sd** %2, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %36, i32 %40)
  store %struct.usb_host_interface* %41, %struct.usb_host_interface** %6, align 8
  %42 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %43 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.sd*, %struct.sd** %2, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.sd*, %struct.sd** %2, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %1
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = load i32, i32* @PB_ROWSPEED, align 4
  %67 = call i32 @BIT(i32 4)
  %68 = call i32 @BIT(i32 3)
  %69 = or i32 %67, %68
  %70 = call i32 @BIT(i32 1)
  %71 = or i32 %69, %70
  %72 = call i32 @stv06xx_write_sensor(%struct.sd* %65, i32 %66, i32 %71)
  br label %82

73:                                               ; preds = %1
  %74 = load %struct.sd*, %struct.sd** %2, align 8
  %75 = load i32, i32* @PB_ROWSPEED, align 4
  %76 = call i32 @BIT(i32 5)
  %77 = call i32 @BIT(i32 3)
  %78 = or i32 %76, %77
  %79 = call i32 @BIT(i32 1)
  %80 = or i32 %78, %79
  %81 = call i32 @stv06xx_write_sensor(%struct.sd* %74, i32 %75, i32 %80)
  br label %82

82:                                               ; preds = %73, %64
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @PB0100_CROP_TO_VGA, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load %struct.sd*, %struct.sd** %2, align 8
  %89 = load i32, i32* @PB_RSTART, align 4
  %90 = call i32 @stv06xx_write_sensor(%struct.sd* %88, i32 %89, i32 30)
  %91 = load %struct.sd*, %struct.sd** %2, align 8
  %92 = load i32, i32* @PB_CSTART, align 4
  %93 = call i32 @stv06xx_write_sensor(%struct.sd* %91, i32 %92, i32 20)
  %94 = load %struct.sd*, %struct.sd** %2, align 8
  %95 = load i32, i32* @PB_RWSIZE, align 4
  %96 = call i32 @stv06xx_write_sensor(%struct.sd* %94, i32 %95, i32 239)
  %97 = load %struct.sd*, %struct.sd** %2, align 8
  %98 = load i32, i32* @PB_CWSIZE, align 4
  %99 = call i32 @stv06xx_write_sensor(%struct.sd* %97, i32 %98, i32 319)
  br label %113

100:                                              ; preds = %82
  %101 = load %struct.sd*, %struct.sd** %2, align 8
  %102 = load i32, i32* @PB_RSTART, align 4
  %103 = call i32 @stv06xx_write_sensor(%struct.sd* %101, i32 %102, i32 8)
  %104 = load %struct.sd*, %struct.sd** %2, align 8
  %105 = load i32, i32* @PB_CSTART, align 4
  %106 = call i32 @stv06xx_write_sensor(%struct.sd* %104, i32 %105, i32 4)
  %107 = load %struct.sd*, %struct.sd** %2, align 8
  %108 = load i32, i32* @PB_RWSIZE, align 4
  %109 = call i32 @stv06xx_write_sensor(%struct.sd* %107, i32 %108, i32 287)
  %110 = load %struct.sd*, %struct.sd** %2, align 8
  %111 = load i32, i32* @PB_CWSIZE, align 4
  %112 = call i32 @stv06xx_write_sensor(%struct.sd* %110, i32 %111, i32 351)
  br label %113

113:                                              ; preds = %100, %87
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @PB0100_SUBSAMPLE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.sd*, %struct.sd** %2, align 8
  %120 = load i32, i32* @STV_Y_CTRL, align 4
  %121 = call i32 @stv06xx_write_bridge(%struct.sd* %119, i32 %120, i32 2)
  %122 = load %struct.sd*, %struct.sd** %2, align 8
  %123 = load i32, i32* @STV_X_CTRL, align 4
  %124 = call i32 @stv06xx_write_bridge(%struct.sd* %122, i32 %123, i32 6)
  %125 = load %struct.sd*, %struct.sd** %2, align 8
  %126 = load i32, i32* @STV_SCAN_RATE, align 4
  %127 = call i32 @stv06xx_write_bridge(%struct.sd* %125, i32 %126, i32 16)
  br label %138

128:                                              ; preds = %113
  %129 = load %struct.sd*, %struct.sd** %2, align 8
  %130 = load i32, i32* @STV_Y_CTRL, align 4
  %131 = call i32 @stv06xx_write_bridge(%struct.sd* %129, i32 %130, i32 1)
  %132 = load %struct.sd*, %struct.sd** %2, align 8
  %133 = load i32, i32* @STV_X_CTRL, align 4
  %134 = call i32 @stv06xx_write_bridge(%struct.sd* %132, i32 %133, i32 10)
  %135 = load %struct.sd*, %struct.sd** %2, align 8
  %136 = load i32, i32* @STV_SCAN_RATE, align 4
  %137 = call i32 @stv06xx_write_bridge(%struct.sd* %135, i32 %136, i32 32)
  br label %138

138:                                              ; preds = %128, %118
  %139 = load %struct.sd*, %struct.sd** %2, align 8
  %140 = getelementptr inbounds %struct.sd, %struct.sd* %139, i32 0, i32 0
  %141 = load i32*, i32** %9, align 8
  %142 = load i64, i64* @GAIN_IDX, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pb0100_set_gain(%struct.TYPE_13__* %140, i32 %144)
  %146 = load %struct.sd*, %struct.sd** %2, align 8
  %147 = getelementptr inbounds %struct.sd, %struct.sd* %146, i32 0, i32 0
  %148 = load i32*, i32** %9, align 8
  %149 = load i64, i64* @EXPOSURE_IDX, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @pb0100_set_exposure(%struct.TYPE_13__* %147, i32 %151)
  %153 = load %struct.sd*, %struct.sd** %2, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 0
  %155 = load i32*, i32** %9, align 8
  %156 = load i64, i64* @AUTOGAIN_TARGET_IDX, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pb0100_set_autogain_target(%struct.TYPE_13__* %154, i32 %158)
  %160 = load %struct.sd*, %struct.sd** %2, align 8
  %161 = getelementptr inbounds %struct.sd, %struct.sd* %160, i32 0, i32 0
  %162 = load i32*, i32** %9, align 8
  %163 = load i64, i64* @AUTOGAIN_IDX, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @pb0100_set_autogain(%struct.TYPE_13__* %161, i32 %165)
  %167 = load %struct.sd*, %struct.sd** %2, align 8
  %168 = load i32, i32* @PB_CONTROL, align 4
  %169 = call i32 @BIT(i32 5)
  %170 = call i32 @BIT(i32 3)
  %171 = or i32 %169, %170
  %172 = call i32 @BIT(i32 1)
  %173 = or i32 %171, %172
  %174 = call i32 @stv06xx_write_sensor(%struct.sd* %167, i32 %168, i32 %173)
  store i32 %174, i32* %3, align 4
  %175 = load i32, i32* @D_STREAM, align 4
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @PDEBUG(i32 %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %3, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %138
  %181 = load i32, i32* %3, align 4
  br label %183

182:                                              ; preds = %138
  br label %183

183:                                              ; preds = %182, %180
  %184 = phi i32 [ %181, %180 ], [ 0, %182 ]
  ret i32 %184
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @pb0100_set_gain(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @pb0100_set_exposure(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @pb0100_set_autogain_target(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @pb0100_set_autogain(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
