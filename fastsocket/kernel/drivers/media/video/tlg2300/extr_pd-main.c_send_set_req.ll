; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_send_set_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_send_set_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { i32, i32 }

@POSEIDON_STATE_DISCONNECT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@REQ_SET_CMD = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_set_req(%struct.poseidon* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.poseidon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i32], align 16
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.poseidon* %0, %struct.poseidon** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = bitcast [32 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 128, i1 false)
  %15 = load %struct.poseidon*, %struct.poseidon** %6, align 8
  %16 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @POSEIDON_STATE_DISCONNECT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = call i32 @mdelay(i32 30)
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i16 0, i16* %12, align 2
  store i16 0, i16* %13, align 2
  br label %37

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 65535
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %12, align 2
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 65535
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %13, align 2
  br label %37

37:                                               ; preds = %29, %28
  %38 = load %struct.poseidon*, %struct.poseidon** %6, align 8
  %39 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.poseidon*, %struct.poseidon** %6, align 8
  %42 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_rcvctrlpipe(i32 %43, i32 0)
  %45 = load i32, i32* @REQ_SET_CMD, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @USB_DIR_IN, align 4
  %49 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %52 = or i32 %50, %51
  %53 = load i16, i16* %12, align 2
  %54 = load i16, i16* %13, align 2
  %55 = bitcast [32 x i32]* %11 to i32**
  %56 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %57 = call i32 @usb_control_msg(i32 %40, i32 %44, i32 %47, i32 %52, i16 zeroext %53, i16 zeroext %54, i32** %55, i32 4, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %37
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %69

63:                                               ; preds = %37
  %64 = load i32*, i32** %9, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %67 = call i32 @memcpy(i8* %65, i32* %66, i32 4)
  br label %68

68:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %60, %21
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i16 zeroext, i16 zeroext, i32**, i32, i32) #2

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
