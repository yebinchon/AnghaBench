; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_init_cold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_init_cold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm3510_state = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"AP is already running - firmware already loaded.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"reset?\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tristate?\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"firmware?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm3510_state*)* @bcm3510_init_cold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_init_cold(%struct.bcm3510_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm3510_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %3, align 8
  %6 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %7 = call i32 @bcm3510_readB(%struct.bcm3510_state* %6, i32 162, %struct.TYPE_8__* %5)
  store i32 %7, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @deb_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

18:                                               ; preds = %11
  %19 = call i32 @deb_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %21 = call i32 @bcm3510_reset(%struct.bcm3510_state* %20)
  store i32 %21, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %18
  %26 = call i32 @deb_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %30 = bitcast %struct.TYPE_8__* %5 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %29, i32 46, i64 %32, i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %25
  %40 = call i32 @deb_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %42 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %41, i32 0, i32 0
  %43 = call i32 @bcm3510_download_firmware(i32* %42)
  store i32 %43, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %47 = call i32 @bcm3510_clear_reset(%struct.bcm3510_state* %46)
  store i32 %47, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %49, %37, %23, %16, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @bcm3510_readB(%struct.bcm3510_state*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i32 @bcm3510_reset(%struct.bcm3510_state*) #1

declare dso_local i32 @bcm3510_writeB(%struct.bcm3510_state*, i32, i64, i64) #1

declare dso_local i32 @bcm3510_download_firmware(i32*) #1

declare dso_local i32 @bcm3510_clear_reset(%struct.bcm3510_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
