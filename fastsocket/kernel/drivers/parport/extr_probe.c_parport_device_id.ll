; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_probe.c_parport_device_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_probe.c_parport_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pardevice = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Device ID probe\00", align 1
@IEEE1284_MODE_COMPAT = common dso_local global i32 0, align 4
@IEEE1284_MODE_NIBBLE = common dso_local global i32 0, align 4
@IEEE1284_DEVICEID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parport_device_id(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pardevice*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @ENXIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.pardevice* @parport_open(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.pardevice* %13, %struct.pardevice** %9, align 8
  %14 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %15 = icmp ne %struct.pardevice* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %21 = call i32 @parport_claim_or_block(%struct.pardevice* %20)
  %22 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %23 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE1284_MODE_COMPAT, align 4
  %26 = call i32 @parport_negotiate(i32 %24, i32 %25)
  %27 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %28 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE1284_MODE_NIBBLE, align 4
  %31 = load i32, i32* @IEEE1284_DEVICEID, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @parport_negotiate(i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %19
  %37 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %38 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @parport_read_device_id(i32 %39, i8* %40, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %44 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE1284_MODE_COMPAT, align 4
  %47 = call i32 @parport_negotiate(i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 2
  br i1 %49, label %50, label %60

50:                                               ; preds = %36
  %51 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %52 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %55 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = call i32 @parse_data(i32 %53, i32 %56, i8* %58)
  br label %60

60:                                               ; preds = %50, %36
  br label %61

61:                                               ; preds = %60, %19
  %62 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %63 = call i32 @parport_release(%struct.pardevice* %62)
  %64 = load %struct.pardevice*, %struct.pardevice** %9, align 8
  %65 = call i32 @parport_close(%struct.pardevice* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.pardevice* @parport_open(i32, i8*) #1

declare dso_local i32 @parport_claim_or_block(%struct.pardevice*) #1

declare dso_local i32 @parport_negotiate(i32, i32) #1

declare dso_local i32 @parport_read_device_id(i32, i8*, i64) #1

declare dso_local i32 @parse_data(i32, i32, i8*) #1

declare dso_local i32 @parport_release(%struct.pardevice*) #1

declare dso_local i32 @parport_close(%struct.pardevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
