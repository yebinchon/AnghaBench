; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_ucbus_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_ucbus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32*, i32 }
%struct.ucbus_write_cmd = type { i32, i32 }

@SQ930_CTRL_UCBUS_IO = common dso_local global i32 0, align 4
@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ucbus v: %04x i: %04x %02x...%02x\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ucbus v: %04x i: %04x\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"ucbus_write failed %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.ucbus_write_cmd*, i32, i32)* @ucbus_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucbus_write(%struct.gspca_dev* %0, %struct.ucbus_write_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca %struct.ucbus_write_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store %struct.ucbus_write_cmd* %1, %struct.ucbus_write_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %140

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %137, %19
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* @SQ930_CTRL_UCBUS_IO, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 8
  %45 = or i32 %40, %44
  store i32 %45, i32* %11, align 4
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %9, align 8
  br label %49

49:                                               ; preds = %53, %27
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %54, i32 1
  store %struct.ucbus_write_cmd* %55, %struct.ucbus_write_cmd** %6, align 8
  %56 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %61 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %62 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 8
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %67 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %49

72:                                               ; preds = %49
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %75 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %73, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load i32, i32* @D_USBO, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %83 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 -1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81, i32 %86, i32 %89)
  br label %96

91:                                               ; preds = %72
  %92 = load i32, i32* @D_USBO, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %78
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %98 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %101 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @usb_sndctrlpipe(i32 %102, i32 0)
  %104 = load i32, i32* @USB_DIR_OUT, align 4
  %105 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %112 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %116 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = ptrtoint i32* %114 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i32 @usb_control_msg(i32 %99, i32 %103, i32 12, i32 %108, i32 %109, i32 %110, i32* %113, i32 %122, i32 500)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %96
  %127 = load i32, i32* %13, align 4
  %128 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %131 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %140

132:                                              ; preds = %96
  %133 = call i32 @msleep(i32 30)
  %134 = load i32, i32* %7, align 4
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %140

137:                                              ; preds = %132
  %138 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %139 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %138, i32 1
  store %struct.ucbus_write_cmd* %139, %struct.ucbus_write_cmd** %6, align 8
  br label %20

140:                                              ; preds = %18, %126, %136
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
