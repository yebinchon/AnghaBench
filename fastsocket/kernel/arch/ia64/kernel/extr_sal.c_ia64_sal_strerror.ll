; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_sal.c_ia64_sal_strerror.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_sal.c_ia64_sal_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Call completed without error\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Effect a warm boot of the system to complete the update\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Call completed with error\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Virtual address not registered\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"No information available\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Insufficient space to add the entry\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Invalid entry_addr value\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Invalid interrupt vector\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Requested memory not available\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Unable to write to the NVM device\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Invalid partition type specified\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Invalid NVM_Object id specified\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"NVM_Object already has the maximum number of partitions\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"Insufficient space in partition for the requested write sub-function\00", align 1
@.str.16 = private unnamed_addr constant [74 x i8] c"Insufficient data buffer space for the requested read record sub-function\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"Scratch buffer required for the write/delete sub-function\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"Insufficient space in the NVM_Object for the requested create sub-function\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"Invalid value specified in the partition_rec argument\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"Record oriented I/O not supported for this partition\00", align 1
@.str.21 = private unnamed_addr constant [78 x i8] c"Bad format of record to be written or required keyword variable not specified\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Unknown SAL status code\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ia64_sal_strerror(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  switch i64 %4, label %27 [
    i64 0, label %5
    i64 1, label %6
    i64 -1, label %7
    i64 -2, label %8
    i64 -3, label %9
    i64 -4, label %10
    i64 -5, label %11
    i64 -6, label %12
    i64 -7, label %13
    i64 -8, label %14
    i64 -9, label %15
    i64 -10, label %16
    i64 -11, label %17
    i64 -12, label %18
    i64 -13, label %19
    i64 -14, label %20
    i64 -15, label %21
    i64 -16, label %22
    i64 -17, label %23
    i64 -18, label %24
    i64 -19, label %25
    i64 -20, label %26
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %28

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %28

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %28

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %28

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %28

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %28

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %28

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %28

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %28

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %28

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %28

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %28

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %28

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %28

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %28

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %28

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %28

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %28

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %28

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %28

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %28

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %28

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
