; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_raw.c_bind_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_raw.c_bind_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_config_request = type { i32 }

@raw_class = common dso_local global i32 0, align 4
@RAW_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"raw%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw_config_request*)* @bind_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bind_device(%struct.raw_config_request* %0) #0 {
  %2 = alloca %struct.raw_config_request*, align 8
  store %struct.raw_config_request* %0, %struct.raw_config_request** %2, align 8
  %3 = load i32, i32* @raw_class, align 4
  %4 = load i32, i32* @RAW_MAJOR, align 4
  %5 = load %struct.raw_config_request*, %struct.raw_config_request** %2, align 8
  %6 = getelementptr inbounds %struct.raw_config_request, %struct.raw_config_request* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @MKDEV(i32 %4, i32 %7)
  %9 = call i32 @device_destroy(i32 %3, i32 %8)
  %10 = load i32, i32* @raw_class, align 4
  %11 = load i32, i32* @RAW_MAJOR, align 4
  %12 = load %struct.raw_config_request*, %struct.raw_config_request** %2, align 8
  %13 = getelementptr inbounds %struct.raw_config_request, %struct.raw_config_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MKDEV(i32 %11, i32 %14)
  %16 = load %struct.raw_config_request*, %struct.raw_config_request** %2, align 8
  %17 = getelementptr inbounds %struct.raw_config_request, %struct.raw_config_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_create(i32 %10, i32* null, i32 %15, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  ret void
}

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
