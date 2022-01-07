; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_grip_mp.c_dig_mode_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_grip_mp.c_dig_mode_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@init_seq = common dso_local global i64* null, align 8
@GRIP_INIT_DELAY = common dso_local global i32 0, align 4
@IO_RESET = common dso_local global i32 0, align 4
@IO_MODE_FAST = common dso_local global i32 0, align 4
@IO_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32*)* @dig_mode_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dig_mode_start(%struct.gameport* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i64*, i64** @init_seq, align 8
  %13 = call i32 @ARRAY_SIZE(i64* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i64*, i64** @init_seq, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.gameport*, %struct.gameport** %4, align 8
  %24 = call i32 @gameport_trigger(%struct.gameport* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* @GRIP_INIT_DELAY, align 4
  %27 = call i32 @udelay(i32 %26)
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %10

31:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %38, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @GRIP_INIT_DELAY, align 4
  %37 = call i32 @udelay(i32 %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %32

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 64
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %72

50:                                               ; preds = %48
  %51 = load %struct.gameport*, %struct.gameport** %4, align 8
  %52 = load i32, i32* @IO_RESET, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @multiport_io(%struct.gameport* %51, i32 %52, i32 39, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IO_MODE_FAST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %73

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IO_RETRY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %42

72:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @multiport_io(%struct.gameport*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
