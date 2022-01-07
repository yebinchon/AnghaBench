; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_send_vendor_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_send_vendor_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32 }
%struct.VENDOR_REQUEST_IN = type { i32, i32, i32, i32, i32*, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@URB_MAX_CTRL_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_send_vendor_cmd(%struct.cx231xx* %0, %struct.VENDOR_REQUEST_IN* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.VENDOR_REQUEST_IN*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.VENDOR_REQUEST_IN* %1, %struct.VENDOR_REQUEST_IN** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DEV_DISCONNECTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %204

19:                                               ; preds = %2
  %20 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %21 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @URB_MAX_CTRL_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %204

28:                                               ; preds = %19
  %29 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %30 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_rcvctrlpipe(i32 %36, i32 0)
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_sndctrlpipe(i32 %41, i32 0)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %45 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %175

48:                                               ; preds = %43
  %49 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %50 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %55 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %60 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 6
  br i1 %62, label %63, label %175

63:                                               ; preds = %58, %53, %48
  store i32 0, i32* %8, align 4
  %64 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %65 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %9, align 8
  %67 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %68 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %8, align 4
  %70 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %71 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 65531
  %74 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %75 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %77 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 65469
  %80 = or i32 %79, 2
  %81 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %82 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %86 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %89 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %96 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %99 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* @HZ, align 4
  %103 = call i32 @__usb_control_msg(%struct.cx231xx* %83, i32 %84, i32 %87, i32 %94, i32 %97, i32 %100, i32* %101, i32 4, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %104, 4
  store i32 %105, i32* %8, align 4
  %106 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %107 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 65469
  %110 = or i32 %109, 66
  %111 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %112 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %117, %63
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %113
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  store i32* %119, i32** %9, align 8
  %120 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %123 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %126 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %133 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %136 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* @HZ, align 4
  %140 = call i32 @__usb_control_msg(%struct.cx231xx* %120, i32 %121, i32 %124, i32 %131, i32 %134, i32 %137, i32* %138, i32 4, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 %141, 4
  store i32 %142, i32* %8, align 4
  br label %113

143:                                              ; preds = %113
  %144 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %145 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 65469
  %148 = or i32 %147, 64
  %149 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %150 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32* %152, i32** %9, align 8
  %153 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %156 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %159 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %166 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %169 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load i32*, i32** %9, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @HZ, align 4
  %174 = call i32 @__usb_control_msg(%struct.cx231xx* %153, i32 %154, i32 %157, i32 %164, i32 %167, i32 %170, i32* %171, i32 %172, i32 %173)
  store i32 %174, i32* %6, align 4
  br label %202

175:                                              ; preds = %58, %43
  %176 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %179 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %182 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %189 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %192 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %195 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.VENDOR_REQUEST_IN*, %struct.VENDOR_REQUEST_IN** %5, align 8
  %198 = getelementptr inbounds %struct.VENDOR_REQUEST_IN, %struct.VENDOR_REQUEST_IN* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @HZ, align 4
  %201 = call i32 @__usb_control_msg(%struct.cx231xx* %176, i32 %177, i32 %180, i32 %187, i32 %190, i32 %193, i32* %196, i32 %199, i32 %200)
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %175, %143
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %25, %16
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @__usb_control_msg(%struct.cx231xx*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
