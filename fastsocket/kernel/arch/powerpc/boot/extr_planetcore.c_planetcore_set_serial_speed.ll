; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_planetcore.c_planetcore_set_serial_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_planetcore.c_planetcore_set_serial_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@prop_buf = common dso_local global i8* null, align 8
@MAX_PROP_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"planetcore_set_serial_speed: Bad /chosen/linux,stdout-path.\0D\0A\00", align 1
@PLANETCORE_KEY_SERIAL_BAUD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"planetcore_set_serial_speed: No SB tag.\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @planetcore_set_serial_speed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call i8* @finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** @prop_buf, align 8
  %15 = load i32, i32* @MAX_PROP_LEN, align 4
  %16 = call i32 @getprop(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %38

20:                                               ; preds = %12
  %21 = load i8*, i8** @prop_buf, align 8
  %22 = call i8* @finddevice(i8* %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %38

27:                                               ; preds = %20
  %28 = load i8*, i8** %2, align 8
  %29 = load i32, i32* @PLANETCORE_KEY_SERIAL_BAUD, align 4
  %30 = call i32 @planetcore_get_decimal(i8* %28, i32 %29, i32* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @setprop(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %6, i32 4)
  br label %38

38:                                               ; preds = %34, %32, %25, %19, %11
  ret void
}

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i32 @getprop(i8*, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @planetcore_get_decimal(i8*, i32, i32*) #1

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
