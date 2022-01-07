; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_proc.c_dasd_proc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_proc.c_dasd_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dasd\00", align 1
@dasd_proc_root_entry = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@dasd_devices_file_ops = common dso_local global i32 0, align 4
@dasd_devices_entry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@dasd_statistics_entry = common dso_local global %struct.TYPE_3__* null, align 8
@dasd_statistics_read = common dso_local global i32 0, align 4
@dasd_statistics_write = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_proc_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32* @proc_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %2, i32** @dasd_proc_root_entry, align 8
  %3 = load i32*, i32** @dasd_proc_root_entry, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %40

6:                                                ; preds = %0
  %7 = load i32, i32* @S_IFREG, align 4
  %8 = load i32, i32* @S_IRUGO, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @S_IWUSR, align 4
  %11 = or i32 %9, %10
  %12 = load i32*, i32** @dasd_proc_root_entry, align 8
  %13 = call i32 @proc_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32* %12, i32* @dasd_devices_file_ops)
  store i32 %13, i32* @dasd_devices_entry, align 4
  %14 = load i32, i32* @dasd_devices_entry, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  br label %38

17:                                               ; preds = %6
  %18 = load i32, i32* @S_IFREG, align 4
  %19 = load i32, i32* @S_IRUGO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @S_IWUSR, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** @dasd_proc_root_entry, align 8
  %24 = call %struct.TYPE_3__* @create_proc_entry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32* %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** @dasd_statistics_entry, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dasd_statistics_entry, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %35

28:                                               ; preds = %17
  %29 = load i32, i32* @dasd_statistics_read, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dasd_statistics_entry, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @dasd_statistics_write, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dasd_statistics_entry, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %1, align 4
  br label %43

35:                                               ; preds = %27
  %36 = load i32*, i32** @dasd_proc_root_entry, align 8
  %37 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %36)
  br label %38

38:                                               ; preds = %35, %16
  %39 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %40

40:                                               ; preds = %38, %5
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %40, %28
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32* @proc_mkdir(i8*, i32*) #1

declare dso_local i32 @proc_create(i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @create_proc_entry(i8*, i32, i32*) #1

declare dso_local i32 @remove_proc_entry(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
