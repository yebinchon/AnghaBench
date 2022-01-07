; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_send_get_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_send_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { i32, i32 }

@POSEIDON_STATE_DISCONNECT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@REQ_GET_CMD = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_get_req(%struct.poseidon* %0, i32 %1, i32 %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.poseidon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [128 x i32], align 16
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  store %struct.poseidon* %0, %struct.poseidon** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = bitcast [128 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 512, i1 false)
  %19 = load %struct.poseidon*, %struct.poseidon** %8, align 8
  %20 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @POSEIDON_STATE_DISCONNECT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %81

28:                                               ; preds = %6
  %29 = call i32 @mdelay(i32 30)
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i16 0, i16* %16, align 2
  store i16 0, i16* %17, align 2
  br label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 65535
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %16, align 2
  %37 = load i32, i32* %10, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 65535
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %17, align 2
  br label %41

41:                                               ; preds = %33, %32
  %42 = load %struct.poseidon*, %struct.poseidon** %8, align 8
  %43 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.poseidon*, %struct.poseidon** %8, align 8
  %46 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_rcvctrlpipe(i32 %47, i32 0)
  %49 = load i32, i32* @REQ_GET_CMD, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @USB_DIR_IN, align 4
  %53 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %56 = or i32 %54, %55
  %57 = load i16, i16* %16, align 2
  %58 = load i16, i16* %17, align 2
  %59 = bitcast [128 x i32]* %15 to i32**
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %65 = call i32 @usb_control_msg(i32 %44, i32 %48, i32 %51, i32 %56, i16 zeroext %57, i16 zeroext %58, i32** %59, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %41
  %69 = load i32, i32* @ENXIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %81

71:                                               ; preds = %41
  %72 = load i32*, i32** %12, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 0
  %75 = call i32 @memcpy(i8* %73, i32* %74, i32 4)
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds [128 x i32], [128 x i32]* %15, i64 0, i64 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @memcpy(i8* %76, i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %68, %25
  %82 = load i32, i32* %7, align 4
  ret i32 %82
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
