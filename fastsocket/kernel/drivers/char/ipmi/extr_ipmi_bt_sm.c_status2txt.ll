; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_bt_sm.c_status2txt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_bt_sm.c_status2txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@status2txt.buf = internal global [40 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@BT_B_BUSY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"B_BUSY \00", align 1
@BT_H_BUSY = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"H_BUSY \00", align 1
@BT_OEM0 = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"OEM0 \00", align 1
@BT_SMS_ATN = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SMS \00", align 1
@BT_B2H_ATN = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"B2H \00", align 1
@BT_H2B_ATN = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"H2B \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @status2txt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @status2txt(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = call i32 @strcpy(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @status2txt.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, i8* @BT_B_BUSY, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @strcat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @status2txt.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @BT_H_BUSY, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @strcat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @status2txt.buf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i8, i8* %2, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @BT_OEM0, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @strcat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @status2txt.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i8, i8* %2, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @BT_SMS_ATN, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @strcat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @status2txt.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i8, i8* %2, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @BT_B2H_ATN, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @strcat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @status2txt.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %39
  %49 = load i8, i8* %2, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @BT_H2B_ATN, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 @strcat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @status2txt.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %48
  %58 = call i32 @strcat(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @status2txt.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret i8* getelementptr inbounds ([40 x i8], [40 x i8]* @status2txt.buf, i64 0, i64 0)
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
