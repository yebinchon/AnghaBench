; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_erase_oldest_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_erase_oldest_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DUMP_FIRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Internal error: dump number cannot be evaluated\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dump.%i\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Sorry, cannot delete any more dumps!\0A\00", align 1
@PARM_MODE_AUTO_NUM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Removing oldest dump: '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Remove oldest dump: '%s' (y/n)? \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%s/dump.%i\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Could not remove dump\0A\00", align 1
@WAIT_TIME_ERASE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"Dump removed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @erase_oldest_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_oldest_dump() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = bitcast [1024 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 1024, i1 false)
  %6 = bitcast [1024 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 1024, i1 false)
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %8 = load i32, i32* @DUMP_FIRST, align 4
  %9 = call i32 @get_dump_num(i8* %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @PRINT_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %67

14:                                               ; preds = %0
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @PRINT_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %67

23:                                               ; preds = %14
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %25 = load i64, i64* @PARM_MODE_AUTO_NUM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %29 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  br label %52

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %41, %30
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %43 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %42)
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %45 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %44)
  br label %31

46:                                               ; preds = %39
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %1, align 4
  br label %67

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %27
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %54 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %54, i32 %55)
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %58 = call i32 @unlink(i8* %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 @PRINT_PERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %67

62:                                               ; preds = %52
  %63 = call i32 (...) @sync()
  %64 = load i32, i32* @WAIT_TIME_ERASE, align 4
  %65 = call i32 @sleep(i32 %64)
  %66 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %62, %60, %50, %21, %12
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_dump_num(i8*, i32) #2

declare dso_local i32 @PRINT_ERR(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @PRINT(i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @scanf(i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @PRINT_PERR(i8*) #2

declare dso_local i32 @sync(...) #2

declare dso_local i32 @sleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
