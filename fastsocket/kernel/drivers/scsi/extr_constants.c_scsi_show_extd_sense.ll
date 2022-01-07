; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_scsi_show_extd_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_scsi_show_extd_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Add. Sense: \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Add. Sense: %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"<<vendor>> ASC=0x%x ASCQ=0x%x\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ASC=0x%x <<vendor>> ASCQ=0x%x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ASC=0x%x ASCQ=0x%x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_show_extd_sense(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* %3, align 1
  %7 = load i8, i8* %4, align 1
  %8 = call i8* @scsi_extd_sense_format(i8 zeroext %6, i8 zeroext %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strstr(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = call i32 (i8*, ...) @printk(i8* %17, i32 %19)
  br label %24

21:                                               ; preds = %11
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %15
  br label %52

25:                                               ; preds = %2
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sge i32 %27, 128
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 128
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i8, i8* %3, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %41, i32 %43)
  br label %51

45:                                               ; preds = %35
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %4, align 1
  %49 = zext i8 %48 to i32
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %24
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i8* @scsi_extd_sense_format(i8 zeroext, i8 zeroext) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
