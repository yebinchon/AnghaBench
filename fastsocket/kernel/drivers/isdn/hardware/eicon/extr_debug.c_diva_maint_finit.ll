; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_maint_finit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_maint_finit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@dbg_base = common dso_local global i32* null, align 8
@dbg_queue = common dso_local global i32* null, align 8
@dbg_q_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dbg_finit\00", align 1
@dbg_adapter_lock = common dso_local global i32 0, align 4
@external_dbg_queue = common dso_local global i64 0, align 8
@clients = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @diva_maint_finit() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @dbg_base, align 8
  %4 = bitcast i32* %3 to i8*
  store i8* %4, i8** %1, align 8
  store i32* null, i32** @dbg_queue, align 8
  store i32* null, i32** @dbg_base, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @diva_os_destroy_spin_lock(i32* @dbg_q_lock, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @diva_os_destroy_spin_lock(i32* @dbg_adapter_lock, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i64, i64* @external_dbg_queue, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i8* null, i8** %1, align 8
  br label %14

14:                                               ; preds = %13, %10
  store i64 0, i64* @external_dbg_queue, align 8
  store i32 1, i32* %2, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clients, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clients, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clients, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @diva_os_free(i32 0, i64 %34)
  br label %36

36:                                               ; preds = %28, %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %15

40:                                               ; preds = %15
  %41 = load i8*, i8** %1, align 8
  ret i8* %41
}

declare dso_local i32 @diva_os_destroy_spin_lock(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @diva_os_free(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
