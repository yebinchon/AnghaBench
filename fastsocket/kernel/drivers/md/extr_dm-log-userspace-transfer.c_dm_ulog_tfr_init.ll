; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-transfer.c_dm_ulog_tfr_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-transfer.c_dm_ulog_tfr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@receiving_list = common dso_local global i32 0, align 4
@DM_ULOG_PREALLOCED_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@prealloced_cn_msg = common dso_local global i8* null, align 8
@prealloced_ulog_tfr = common dso_local global i8* null, align 8
@ulog_cn_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dmlogusr\00", align 1
@cn_ulog_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_ulog_tfr_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call i32 @INIT_LIST_HEAD(i32* @receiving_list)
  %5 = load i32, i32* @DM_ULOG_PREALLOCED_SIZE, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmalloc(i32 %5, i32 %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %25

13:                                               ; preds = %0
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** @prealloced_cn_msg, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr i8, i8* %15, i64 4
  store i8* %16, i8** @prealloced_ulog_tfr, align 8
  %17 = load i32, i32* @cn_ulog_callback, align 4
  %18 = call i32 @cn_add_callback(i32* @ulog_cn_id, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = call i32 @cn_del_callback(i32* @ulog_cn_id)
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %25

24:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %21, %10
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cn_add_callback(i32*, i8*, i32) #1

declare dso_local i32 @cn_del_callback(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
