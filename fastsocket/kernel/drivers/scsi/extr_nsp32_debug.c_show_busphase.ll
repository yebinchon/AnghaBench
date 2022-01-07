; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32_debug.c_show_busphase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32_debug.c_show_busphase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"BUSPHASE_COMMAND\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"BUSPHASE_MESSAGE_IN\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"BUSPHASE_MESSAGE_OUT\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"BUSPHASE_DATA_IN\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"BUSPHASE_DATA_OUT\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"BUSPHASE_STATUS\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"BUSPHASE_SELECT\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"BUSPHASE_other: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @show_busphase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_busphase(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  switch i32 %4, label %19 [
    i32 134, label %5
    i32 131, label %7
    i32 130, label %9
    i32 133, label %11
    i32 132, label %13
    i32 128, label %15
    i32 129, label %17
  ]

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %23

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %23

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %23

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %23

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %23

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %23

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %23

19:                                               ; preds = %1
  %20 = load i8, i8* %2, align 1
  %21 = zext i8 %20 to i32
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %17, %15, %13, %11, %9, %7, %5
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
