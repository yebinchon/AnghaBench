; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_mount_dump_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_mount_dump_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"e2fsck\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%i\00", align 1
@DEV_SCSI = common dso_local global i8* null, align 8
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"fork failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/bin/e2fsck\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"e2fsck\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"/sbin/e2fsck\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mount\0A\00", align 1
@DUMP_DIR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"ext4\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ext3\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ext2\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"mount failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mount_dump_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_dump_device() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 16
  %4 = call i32 @PRINT_TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %6 = load i8*, i8** @DEV_SCSI, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %8 = call i32 @atoi(i32 %7)
  %9 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %6, i32 %8)
  %10 = call i32 (...) @fork()
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @PRINT_PERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %49

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %20 = call i32 @execl(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %22 = call i32 @execl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %15
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @waitpid(i32 %25, i32* null, i32 0)
  br label %27

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27
  %29 = call i32 @PRINT_TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %31 = load i32, i32* @DUMP_DIR, align 4
  %32 = call i64 @mount(i8* %30, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0, i32* null)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %49

35:                                               ; preds = %28
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %37 = load i32, i32* @DUMP_DIR, align 4
  %38 = call i64 @mount(i8* %36, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* null)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %49

41:                                               ; preds = %35
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %43 = load i32, i32* @DUMP_DIR, align 4
  %44 = call i64 @mount(i8* %42, i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 0, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @PRINT_PERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %48, %46, %40, %34, %13
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @PRINT_TRACE(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @PRINT_PERR(i8*) #1

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @mount(i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
