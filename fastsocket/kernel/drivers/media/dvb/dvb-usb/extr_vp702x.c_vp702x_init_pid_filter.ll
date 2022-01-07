; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x.c_vp702x_init_pid_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x.c_vp702x_init_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.vp702x_state* }
%struct.vp702x_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @vp702x_init_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_init_pid_filter(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.vp702x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [10 x i32], align 16
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 1
  %8 = load %struct.vp702x_state*, %struct.vp702x_state** %7, align 8
  store %struct.vp702x_state* %8, %struct.vp702x_state** %3, align 8
  %9 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false)
  %10 = load %struct.vp702x_state*, %struct.vp702x_state** %3, align 8
  %11 = getelementptr inbounds %struct.vp702x_state, %struct.vp702x_state* %10, i32 0, i32 0
  store i32 8, i32* %11, align 4
  %12 = load %struct.vp702x_state*, %struct.vp702x_state** %3, align 8
  %13 = getelementptr inbounds %struct.vp702x_state, %struct.vp702x_state* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.vp702x_state*, %struct.vp702x_state** %3, align 8
  %15 = getelementptr inbounds %struct.vp702x_state, %struct.vp702x_state* %14, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %17 = call i32 @vp702x_set_pld_mode(%struct.dvb_usb_adapter* %16, i32 1)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %28, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.vp702x_state*, %struct.vp702x_state** %3, align 8
  %21 = getelementptr inbounds %struct.vp702x_state, %struct.vp702x_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @vp702x_set_pid(%struct.dvb_usb_adapter* %25, i32 65535, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %36 = call i32 @vp702x_usb_in_op(i32 %34, i32 181, i32 3, i32 0, i32* %35, i32 10)
  %37 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %41 = call i32 @vp702x_usb_in_op(i32 %39, i32 181, i32 0, i32 0, i32* %40, i32 10)
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %46 = call i32 @vp702x_usb_in_op(i32 %44, i32 181, i32 1, i32 0, i32* %45, i32 10)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vp702x_set_pld_mode(%struct.dvb_usb_adapter*, i32) #2

declare dso_local i32 @vp702x_set_pid(%struct.dvb_usb_adapter*, i32, i32, i32) #2

declare dso_local i32 @vp702x_usb_in_op(i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
