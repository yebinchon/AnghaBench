; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ttusb2.c_ttusb2_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ttusb2.c_ttusb2_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.ttusb2_state* }
%struct.ttusb2_state = type { i32 }

@.str = private unnamed_addr constant [84 x i8] c"there might have been an error during control message transfer. (rlen = %d, was %d)\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32)* @ttusb2_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb2_msg(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ttusb2_state*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [64 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = load %struct.ttusb2_state*, %struct.ttusb2_state** %21, align 8
  store %struct.ttusb2_state* %22, %struct.ttusb2_state** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = bitcast [64 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 256, i1 false)
  store i32 0, i32* %18, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 4
  %31 = call i32 @memset(i32* %27, i32 0, i32 %30)
  %32 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 170, i32* %32, align 16
  %33 = load %struct.ttusb2_state*, %struct.ttusb2_state** %14, align 8
  %34 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds i32, i32* %27, i64 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @memcpy(i32* %42, i32* %43, i32 %44)
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 4
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %50 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %46, i32* %27, i32 %48, i32* %49, i32 64, i32 0)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %6
  %54 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = icmp ne i32 %55, 85
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %27, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %76, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %13, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71, %63, %57, %53, %6
  %77 = load i32, i32* %13, align 4
  %78 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @warn(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %92

83:                                               ; preds = %71, %68
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @memcpy(i32* %87, i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %83
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %92

92:                                               ; preds = %91, %76
  %93 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #3

declare dso_local i32 @memcpy(i32*, i32*, i32) #3

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #3

declare dso_local i32 @warn(i8*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
