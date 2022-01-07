; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x.c_vp702x_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x.c_vp702x_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, i32 }

@SET_TUNER_POWER_REQ = common dso_local global i32 0, align 4
@GET_SYSTEM_STRING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"system string: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @vp702x_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca [10 x i8], align 1
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 10, i1 false)
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SET_TUNER_POWER_REQ, align 4
  %10 = call i32 @vp702x_usb_out_op(i32 %8, i32 %9, i32 0, i32 7, i32* null, i32 0)
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GET_SYSTEM_STRING, align 4
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %16 = call i64 @vp702x_usb_inout_cmd(i32 %13, i32 %14, i32* null, i32 0, i8* %15, i32 10, i32 10)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %1
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 9
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 1
  %24 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %26 = call i32 @vp702x_init_pid_filter(%struct.dvb_usb_adapter* %25)
  %27 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vp702x_fe_attach(i32 %29)
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SET_TUNER_POWER_REQ, align 4
  %37 = call i32 @vp702x_usb_out_op(i32 %35, i32 %36, i32 1, i32 7, i32* null, i32 0)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %21, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vp702x_usb_out_op(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @vp702x_usb_inout_cmd(i32, i32, i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @info(i8*, i8*) #2

declare dso_local i32 @vp702x_init_pid_filter(%struct.dvb_usb_adapter*) #2

declare dso_local i32 @vp702x_fe_attach(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
