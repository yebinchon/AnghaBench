; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_read_cr_lock_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_read_cr_lock_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LGDT3305_CR_LOCK_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"QAM UNLOCK\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"QAM 1stLock\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"QAM 2ndLock\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"QAM FinalLock\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"CLOCKQAM-INVALID!\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"CLOCKVSB\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"(%d) %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, i32*)* @lgdt3305_read_cr_lock_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_read_cr_lock_status(%struct.lgdt3305_state* %0, i32* %1) #0 {
  %3 = alloca %struct.lgdt3305_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i32*, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %10 = load i32, i32* @LGDT3305_CR_LOCK_STATUS, align 4
  %11 = call i32 @lgdt3305_read_reg(%struct.lgdt3305_state* %9, i32 %10, i32* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @lg_fail(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %3, align 8
  %18 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %42 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %35
  ]

20:                                               ; preds = %16, %16
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 7
  switch i32 %28, label %33 [
    i32 0, label %29
    i32 4, label %30
    i32 6, label %31
    i32 7, label %32
  ]

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %34

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %34

31:                                               ; preds = %26
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %34

32:                                               ; preds = %26
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %34

33:                                               ; preds = %26
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29
  br label %45

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  store i32 1, i32* %40, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %41

41:                                               ; preds = %39, %35
  br label %45

42:                                               ; preds = %16
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %41, %34
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @lg_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %45, %15
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @lgdt3305_read_reg(%struct.lgdt3305_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lg_dbg(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
