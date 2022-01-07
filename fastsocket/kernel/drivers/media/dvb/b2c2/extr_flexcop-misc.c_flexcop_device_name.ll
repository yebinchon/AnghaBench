; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-misc.c_flexcop_device_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-misc.c_flexcop_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i64, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"%s '%s' at the '%s' bus controlled by a '%s' %s\00", align 1
@flexcop_device_names = common dso_local global i32* null, align 8
@flexcop_bus_names = common dso_local global i32* null, align 8
@flexcop_revision_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flexcop_device_name(%struct.flexcop_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.flexcop_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32*, i32** @flexcop_device_names, align 8
  %9 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %10 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @flexcop_bus_names, align 8
  %15 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %16 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @flexcop_revision_names, align 8
  %21 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %22 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %13, i32 %19, i32 %25, i8* %26)
  ret void
}

declare dso_local i32 @info(i8*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
