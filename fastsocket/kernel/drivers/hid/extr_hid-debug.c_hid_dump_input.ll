; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_dump_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_dump_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_usage = type { i32 }

@HID_DEBUG_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_dump_input(%struct.hid_device* %0, %struct.hid_usage* %1, i32 %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_usage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_usage* %1, %struct.hid_usage** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hid_usage*, %struct.hid_usage** %5, align 8
  %10 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @hid_resolv_usage(i32 %11, i32* null)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %37

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i32, i32* @HID_DEBUG_BUFSIZE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @snprintf(i8* %22, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @hid_debug_event(%struct.hid_device* %29, i8* %30)
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @kfree(i8* %32)
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 0
  %36 = call i32 @wake_up_interruptible(i32* %35)
  br label %37

37:                                               ; preds = %16, %15
  ret void
}

declare dso_local i8* @hid_resolv_usage(i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @hid_debug_event(%struct.hid_device*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
