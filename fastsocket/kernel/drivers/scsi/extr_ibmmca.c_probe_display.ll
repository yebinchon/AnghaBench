; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ibmmca.c_probe_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ibmmca.c_probe_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@probe_display.rotator = internal global i32 0, align 4
@__const.probe_display.rotor = private unnamed_addr constant [5 x i8] c"|/-\\\00", align 1
@display_mode = common dso_local global i32 0, align 4
@LED_DISP = common dso_local global i32 0, align 4
@MOD95_LED_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @probe_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_display(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [5 x i8], align 1
  store i32 %0, i32* %3, align 4
  %5 = bitcast [5 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.probe_display.rotor, i32 0, i32 0), i64 5, i1 false)
  %6 = load i32, i32* @display_mode, align 4
  %7 = load i32, i32* @LED_DISP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @MOD95_LED_PORT, align 8
  %16 = call i32 @outl(i32 538976288, i64 %15)
  %17 = load i64, i64* @MOD95_LED_PORT, align 8
  %18 = add nsw i64 %17, 4
  %19 = call i32 @outl(i32 538976288, i64 %18)
  br label %54

20:                                               ; preds = %11
  %21 = load i64, i64* @MOD95_LED_PORT, align 8
  %22 = add nsw i64 %21, 7
  %23 = call i32 @outb(i8 signext 83, i64 %22)
  %24 = load i64, i64* @MOD95_LED_PORT, align 8
  %25 = add nsw i64 %24, 6
  %26 = call i32 @outb(i8 signext 67, i64 %25)
  %27 = load i64, i64* @MOD95_LED_PORT, align 8
  %28 = add nsw i64 %27, 5
  %29 = call i32 @outb(i8 signext 83, i64 %28)
  %30 = load i64, i64* @MOD95_LED_PORT, align 8
  %31 = add nsw i64 %30, 4
  %32 = call i32 @outb(i8 signext 73, i64 %31)
  %33 = load i64, i64* @MOD95_LED_PORT, align 8
  %34 = add nsw i64 %33, 3
  %35 = call i32 @outb(i8 signext 105, i64 %34)
  %36 = load i64, i64* @MOD95_LED_PORT, align 8
  %37 = add nsw i64 %36, 2
  %38 = call i32 @outb(i8 signext 110, i64 %37)
  %39 = load i64, i64* @MOD95_LED_PORT, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i32 @outb(i8 signext 105, i64 %40)
  %42 = load i32, i32* @probe_display.rotator, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i64, i64* @MOD95_LED_PORT, align 8
  %47 = call i32 @outb(i8 signext %45, i64 %46)
  %48 = load i32, i32* @probe_display.rotator, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @probe_display.rotator, align 4
  %50 = load i32, i32* @probe_display.rotator, align 4
  %51 = icmp sgt i32 %50, 3
  br i1 %51, label %52, label %53

52:                                               ; preds = %20
  store i32 0, i32* @probe_display.rotator, align 4
  br label %53

53:                                               ; preds = %52, %20
  br label %54

54:                                               ; preds = %53, %14
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @outl(i32, i64) #2

declare dso_local i32 @outb(i8 signext, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
