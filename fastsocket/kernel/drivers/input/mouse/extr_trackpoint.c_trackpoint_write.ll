; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32 }

@TP_COMMAND = common dso_local global i8 0, align 1
@TP_WRITE_MEM = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps2dev*, i8, i8)* @trackpoint_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_write(%struct.ps2dev* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.ps2dev* %0, %struct.ps2dev** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %8 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %9 = load i8, i8* @TP_COMMAND, align 1
  %10 = call i32 @MAKE_PS2_CMD(i32 0, i32 0, i8 zeroext %9)
  %11 = call i64 @ps2_command(%struct.ps2dev* %8, i32* null, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %3
  %14 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %15 = load i8, i8* @TP_WRITE_MEM, align 1
  %16 = call i32 @MAKE_PS2_CMD(i32 0, i32 0, i8 zeroext %15)
  %17 = call i64 @ps2_command(%struct.ps2dev* %14, i32* null, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %21 = load i8, i8* %6, align 1
  %22 = call i32 @MAKE_PS2_CMD(i32 0, i32 0, i8 zeroext %21)
  %23 = call i64 @ps2_command(%struct.ps2dev* %20, i32* null, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %27 = load i8, i8* %7, align 1
  %28 = call i32 @MAKE_PS2_CMD(i32 0, i32 0, i8 zeroext %27)
  %29 = call i64 @ps2_command(%struct.ps2dev* %26, i32* null, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19, %13, %3
  store i32 -1, i32* %4, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @MAKE_PS2_CMD(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
