; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_get_error_cause.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_get_error_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"operation failed\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"operation not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"argument out of range\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"query operation not supported\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"no query data available\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @qeth_l3_arp_get_error_cause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qeth_l3_arp_get_error_cause(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %26 [
    i32 132, label %6
    i32 131, label %10
    i32 130, label %14
    i32 129, label %18
    i32 128, label %22
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @EIO, align 4
  %8 = sub nsw i32 0, %7
  %9 = load i32*, i32** %3, align 8
  store i32 %8, i32* %9, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  %13 = load i32*, i32** %3, align 8
  store i32 %12, i32* %13, align 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %27

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = load i32*, i32** %3, align 8
  store i32 %16, i32* %17, align 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32*, i32** %3, align 8
  store i32 %20, i32* %21, align 4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = load i32*, i32** %3, align 8
  store i32 %24, i32* %25, align 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %27

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %27

27:                                               ; preds = %26, %22, %18, %14, %10, %6
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
