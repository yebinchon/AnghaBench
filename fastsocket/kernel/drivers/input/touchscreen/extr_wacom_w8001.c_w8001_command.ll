; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001 = type { i64, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@W8001_QUERY_PACKET = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w8001*, i8, i32)* @w8001_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w8001_command(%struct.w8001* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.w8001*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w8001* %0, %struct.w8001** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.w8001*, %struct.w8001** %4, align 8
  %9 = getelementptr inbounds %struct.w8001, %struct.w8001* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.w8001*, %struct.w8001** %4, align 8
  %11 = getelementptr inbounds %struct.w8001, %struct.w8001* %10, i32 0, i32 1
  %12 = call i32 @init_completion(i32* %11)
  %13 = load %struct.w8001*, %struct.w8001** %4, align 8
  %14 = getelementptr inbounds %struct.w8001, %struct.w8001* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i8, i8* %5, align 1
  %17 = call i32 @serio_write(i32 %15, i8 zeroext %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.w8001*, %struct.w8001** %4, align 8
  %25 = getelementptr inbounds %struct.w8001, %struct.w8001* %24, i32 0, i32 1
  %26 = load i32, i32* @HZ, align 4
  %27 = call i32 @wait_for_completion_timeout(i32* %25, i32 %26)
  %28 = load %struct.w8001*, %struct.w8001** %4, align 8
  %29 = getelementptr inbounds %struct.w8001, %struct.w8001* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @W8001_QUERY_PACKET, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %23
  br label %37

37:                                               ; preds = %36, %20, %3
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @serio_write(i32, i8 zeroext) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
