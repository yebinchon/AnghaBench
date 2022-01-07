; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_get_class_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_get_class_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2o_get_class_name.i2o_class_name = internal global [17 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"Executive\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Device Driver Module\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Block Device\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Tape Device\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"LAN Interface\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"WAN Interface\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Fibre Channel Port\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Fibre Channel Device\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"SCSI Device\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ATE Port\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ATE Device\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Floppy Controller\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Floppy Device\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Secondary Bus Port\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Peer Transport Agent\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Peer Transport\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @i2o_get_class_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @i2o_get_class_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 16, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 4095
  switch i32 %5, label %22 [
    i32 139, label %6
    i32 140, label %7
    i32 131, label %8
    i32 129, label %9
    i32 134, label %10
    i32 128, label %11
    i32 137, label %12
    i32 138, label %13
    i32 130, label %14
    i32 142, label %15
    i32 143, label %16
    i32 136, label %17
    i32 135, label %18
    i32 141, label %19
    i32 132, label %20
    i32 133, label %21
  ]

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %22

7:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %22

8:                                                ; preds = %1
  store i32 2, i32* %3, align 4
  br label %22

9:                                                ; preds = %1
  store i32 3, i32* %3, align 4
  br label %22

10:                                               ; preds = %1
  store i32 4, i32* %3, align 4
  br label %22

11:                                               ; preds = %1
  store i32 5, i32* %3, align 4
  br label %22

12:                                               ; preds = %1
  store i32 6, i32* %3, align 4
  br label %22

13:                                               ; preds = %1
  store i32 7, i32* %3, align 4
  br label %22

14:                                               ; preds = %1
  store i32 8, i32* %3, align 4
  br label %22

15:                                               ; preds = %1
  store i32 9, i32* %3, align 4
  br label %22

16:                                               ; preds = %1
  store i32 10, i32* %3, align 4
  br label %22

17:                                               ; preds = %1
  store i32 11, i32* %3, align 4
  br label %22

18:                                               ; preds = %1
  store i32 12, i32* %3, align 4
  br label %22

19:                                               ; preds = %1
  store i32 13, i32* %3, align 4
  br label %22

20:                                               ; preds = %1
  store i32 14, i32* %3, align 4
  br label %22

21:                                               ; preds = %1
  store i32 15, i32* %3, align 4
  br label %22

22:                                               ; preds = %1, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [17 x i8*], [17 x i8*]* @i2o_get_class_name.i2o_class_name, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
