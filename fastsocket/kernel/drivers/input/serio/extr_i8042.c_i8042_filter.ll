; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c_i8042_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c_i8042_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }

@i8042_suppress_kbd_ack = common dso_local global i32 0, align 4
@I8042_STR_AUXDATA = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [35 x i8] c"Extra keyboard ACK - filtered out\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Filtered out by platfrom filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8, %struct.serio*)* @i8042_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8042_filter(i8 zeroext %0, i8 zeroext %1, %struct.serio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.serio*, align 8
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store %struct.serio* %2, %struct.serio** %7, align 8
  %8 = load i32, i32* @i8042_suppress_kbd_ack, align 4
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  %12 = load i8, i8* %6, align 1
  %13 = zext i8 %12 to i32
  %14 = xor i32 %13, -1
  %15 = load i8, i8* @I8042_STR_AUXDATA, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %11
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 250
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 254
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @i8042_suppress_kbd_ack, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @i8042_suppress_kbd_ack, align 4
  %30 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %42

31:                                               ; preds = %23, %11
  br label %32

32:                                               ; preds = %31, %3
  br i1 true, label %33, label %41

33:                                               ; preds = %32
  %34 = load i8, i8* %5, align 1
  %35 = load i8, i8* %6, align 1
  %36 = load %struct.serio*, %struct.serio** %7, align 8
  %37 = call i64 @i8042_platform_filter(i8 zeroext %34, i8 zeroext %35, %struct.serio* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %42

41:                                               ; preds = %33, %32
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %39, %27
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i64 @i8042_platform_filter(i8 zeroext, i8 zeroext, %struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
