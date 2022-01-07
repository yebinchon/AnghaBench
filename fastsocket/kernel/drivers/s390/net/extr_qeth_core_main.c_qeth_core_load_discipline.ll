; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_load_discipline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_load_discipline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@qeth_mod_mutex = common dso_local global i32 0, align 4
@qeth_l3_ccwgroup_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"qeth_l3\00", align 1
@qeth_l2_ccwgroup_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"qeth_l2\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"There is no kernel module to support discipline %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_core_load_discipline(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 @mutex_lock(i32* @qeth_mod_mutex)
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %22 [
    i32 128, label %8
    i32 129, label %15
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @qeth_l3_ccwgroup_driver, align 4
  %10 = call i32 @symbol_get(i32 %9)
  %11 = call i8* @try_then_request_module(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i8* %11, i8** %14, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @qeth_l2_ccwgroup_driver, align 4
  %17 = call i32 @symbol_get(i32 %16)
  %18 = call i8* @try_then_request_module(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  br label %22

22:                                               ; preds = %2, %15, %8
  %23 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %28, %22
  %38 = call i32 @mutex_unlock(i32* @qeth_mod_mutex)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @try_then_request_module(i32, i8*) #1

declare dso_local i32 @symbol_get(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
