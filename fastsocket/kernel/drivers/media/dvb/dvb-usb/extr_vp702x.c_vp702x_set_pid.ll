; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x.c_vp702x_set_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x.c_vp702x_set_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.vp702x_state* }
%struct.vp702x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*, i32, i32, i32)* @vp702x_set_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_set_pid(%struct.dvb_usb_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_usb_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vp702x_state*, align 8
  %10 = alloca [16 x i32], align 16
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 1
  %13 = load %struct.vp702x_state*, %struct.vp702x_state** %12, align 8
  store %struct.vp702x_state* %13, %struct.vp702x_state** %9, align 8
  %14 = bitcast [16 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 64, i1 false)
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.vp702x_state*, %struct.vp702x_state** %9, align 8
  %21 = getelementptr inbounds %struct.vp702x_state, %struct.vp702x_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %32

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.vp702x_state*, %struct.vp702x_state** %9, align 8
  %29 = getelementptr inbounds %struct.vp702x_state, %struct.vp702x_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  store i32 65535, i32* %6, align 4
  br label %32

32:                                               ; preds = %24, %17
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 2
  %35 = add nsw i32 16, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %37 = load %struct.vp702x_state*, %struct.vp702x_state** %9, align 8
  %38 = getelementptr inbounds %struct.vp702x_state, %struct.vp702x_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vp702x_set_pld_state(%struct.dvb_usb_adapter* %36, i32 %39)
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %47, %48
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %51 = call i32 @vp702x_usb_in_op(i32 %43, i32 224, i32 %49, i32 0, i32* %50, i32 16)
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 255
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = or i32 %57, %59
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %62 = call i32 @vp702x_usb_in_op(i32 %54, i32 224, i32 %60, i32 0, i32* %61, i32 16)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vp702x_set_pld_state(%struct.dvb_usb_adapter*, i32) #2

declare dso_local i32 @vp702x_usb_in_op(i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
