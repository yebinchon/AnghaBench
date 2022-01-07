; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_get_msg_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_get_msg_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD_MSGACCEPTED = common dso_local global i32 0, align 4
@STAT_INT = common dso_local global i32 0, align 4
@STAT_BUSMASK = common dso_local global i32 0, align 4
@STAT_MESGIN = common dso_local global i32 0, align 4
@REG_INST = common dso_local global i32 0, align 4
@CMD_TRANSFERINFO = common dso_local global i32 0, align 4
@STAT_PARITYERROR = common dso_local global i32 0, align 4
@REG_FF = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timed out waiting for message byte\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"unexpected phase change: status = %02x\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"parity error during message in phase\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fas216_get_msg_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fas216_get_msg_byte(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @CMD_MSGACCEPTED, align 4
  %7 = call i32 @fas216_wait_cmd(i32* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @STAT_INT, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %52

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @STAT_BUSMASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @STAT_MESGIN, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %56

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @REG_INST, align 4
  %23 = call i32 @fas216_readb(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @CMD_TRANSFERINFO, align 4
  %26 = call i32 @fas216_wait_cmd(i32* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @STAT_INT, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %52

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @STAT_PARITYERROR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %61

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @STAT_BUSMASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @STAT_MESGIN, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %56

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @REG_INST, align 4
  %48 = call i32 @fas216_readb(i32* %46, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @REG_FF, align 4
  %51 = call i32 @fas216_readb(i32* %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %65

52:                                               ; preds = %31, %12
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @LOG_ERROR, align 4
  %55 = call i32 (i32*, i32, i8*, ...) @fas216_log(i32* %53, i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %65

56:                                               ; preds = %44, %19
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @LOG_ERROR, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32*, i32, i8*, ...) @fas216_log(i32* %57, i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 -2, i32* %2, align 4
  br label %65

61:                                               ; preds = %37
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @LOG_ERROR, align 4
  %64 = call i32 (i32*, i32, i8*, ...) @fas216_log(i32* %62, i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -3, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %56, %52, %45
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @fas216_wait_cmd(i32*, i32) #1

declare dso_local i32 @fas216_readb(i32*, i32) #1

declare dso_local i32 @fas216_log(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
