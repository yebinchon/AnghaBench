; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_get_speed_and_duplex_copper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_get_speed_and_duplex_copper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"1000 Mbs, \00", align 1
@E1000_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"100 Mbs, \00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"10 Mbs, \00", align 1
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Half Duplex\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_get_speed_and_duplex_copper(%struct.e1000_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @E1000_STATUS, align 4
  %9 = call i32 @rd32(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @SPEED_1000, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = call i32 @hw_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %32

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @SPEED_100, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = call i32 @hw_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @SPEED_10, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = call i32 @hw_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @E1000_STATUS_FD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @FULL_DUPLEX, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = call i32 @hw_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @HALF_DUPLEX, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %44 = call i32 @hw_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %37
  ret i32 0
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
