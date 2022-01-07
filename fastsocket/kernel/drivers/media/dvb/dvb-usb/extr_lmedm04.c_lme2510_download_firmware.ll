; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_download_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"FRM Starting Firmware Download\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Data S=%02x:E=%02x CS= %02x\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"FRM Firmware Download Failed (%04x)\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"FRM Firmware Download Completed - Resetting Device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.firmware*)* @lme2510_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_download_firmware(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = bitcast [512 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 2048, i1 false)
  store i32 49, i32* %12, align 4
  store i32 1, i32* %9, align 4
  %17 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %18

18:                                               ; preds = %121, %2
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %124

21:                                               ; preds = %18
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 512
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.firmware*, %struct.firmware** %4, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i32 [ 512, %28 ], [ %32, %29 ]
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %115, %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %120

40:                                               ; preds = %36
  %41 = load %struct.firmware*, %struct.firmware** %4, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %15, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i32, i32* %14, align 4
  %55 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  store i32 %54, i32* %55, align 16
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %13, align 4
  br label %65

57:                                               ; preds = %40
  %58 = load i32, i32* %14, align 4
  %59 = or i32 %58, 128
  %60 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  store i32 %59, i32* %60, align 16
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %57, %53
  %66 = load i32, i32* %13, align 4
  %67 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 2
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @memcpy(i32* %68, i32* %69, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 4
  store i32 %74, i32* %8, align 4
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @check_sum(i32* %75, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @deb_info(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %89, i32 %94)
  %96 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %97 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @lme2510_bulk_write(%struct.usb_device* %96, i32* %97, i32 %98, i32 1)
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %103 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @lme2510_bulk_read(%struct.usb_device* %102, i32* %103, i32 %104, i32 1)
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = icmp eq i32 %109, 136
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 0, i32 -1
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %65
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %36

120:                                              ; preds = %36
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %18

124:                                              ; preds = %18
  %125 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %126 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %127 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %126, i32 0)
  %128 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %129 = call i32 @usb_control_msg(%struct.usb_device* %125, i32 %127, i32 6, i32 128, i32 512, i32 0, i32* %128, i32 265, i32 1000)
  %130 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  store i32 138, i32* %130, align 16
  store i32 1, i32* %9, align 4
  %131 = call i32 @msleep(i32 2000)
  %132 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %133 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @lme2510_bulk_write(%struct.usb_device* %132, i32* %133, i32 %134, i32 1)
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %139 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @lme2510_bulk_read(%struct.usb_device* %138, i32* %139, i32 %140, i32 1)
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = call i32 @msleep(i32 400)
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %124
  %148 = load i32, i32* %5, align 4
  %149 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  br label %152

150:                                              ; preds = %124
  %151 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i32, i32* %5, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  br label %159

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %155
  %160 = phi i32 [ %157, %155 ], [ 0, %158 ]
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @info(i8*, ...) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @check_sum(i32*, i32) #2

declare dso_local i32 @deb_info(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @lme2510_bulk_write(%struct.usb_device*, i32*, i32, i32) #2

declare dso_local i32 @lme2510_bulk_read(%struct.usb_device*, i32*, i32, i32) #2

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
