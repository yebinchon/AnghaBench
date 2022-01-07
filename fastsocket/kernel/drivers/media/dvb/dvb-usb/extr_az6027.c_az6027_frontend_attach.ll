; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_az6027.c_az6027_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_az6027.c_az6027_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.dvb_usb_adapter = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"adap = %p, dev = %p\0A\00", align 1
@az6027_stb0899_config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"found STB0899 DVB-S/DVB-S2 frontend @0x%02x\00", align 1
@az6027_stb6100_config = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"found STB6100 DVB-S/DVB-S2 frontend @0x%02x\00", align 1
@az6027_set_voltage = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"no front-end attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @az6027_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6027_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %3 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %4 = call i32 @az6027_frontend_poweron(%struct.dvb_usb_adapter* %3)
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %6 = call i32 @az6027_frontend_reset(%struct.dvb_usb_adapter* %5)
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = call i32 (i8*, %struct.dvb_usb_adapter*, ...) @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.dvb_usb_adapter* %7, %struct.TYPE_10__* %10)
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = call %struct.TYPE_11__* @stb0899_attach(%struct.TYPE_13__* @az6027_stb0899_config, i32* %15)
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 0
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %18, align 8
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @az6027_stb0899_config, i32 0, i32 0), align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.dvb_usb_adapter*
  %27 = call i32 (i8*, %struct.dvb_usb_adapter*, ...) @deb_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.dvb_usb_adapter* %26)
  %28 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = call i64 @stb6100_attach(%struct.TYPE_11__* %30, %struct.TYPE_12__* @az6027_stb6100_config, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %23
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @az6027_stb6100_config, i32 0, i32 0), align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.dvb_usb_adapter*
  %41 = call i32 (i8*, %struct.dvb_usb_adapter*, ...) @deb_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.dvb_usb_adapter* %40)
  %42 = load i32, i32* @az6027_set_voltage, align 4
  %43 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %49 = call i32 @az6027_ci_init(%struct.dvb_usb_adapter* %48)
  br label %53

50:                                               ; preds = %23
  %51 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %51, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %52, align 8
  br label %53

53:                                               ; preds = %50, %37
  br label %56

54:                                               ; preds = %1
  %55 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %53
  %57 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %58 = call i32 @az6027_frontend_tsbypass(%struct.dvb_usb_adapter* %57, i32 0)
  ret i32 0
}

declare dso_local i32 @az6027_frontend_poweron(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @az6027_frontend_reset(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @deb_info(i8*, %struct.dvb_usb_adapter*, ...) #1

declare dso_local %struct.TYPE_11__* @stb0899_attach(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @stb6100_attach(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @az6027_ci_init(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @az6027_frontend_tsbypass(%struct.dvb_usb_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
