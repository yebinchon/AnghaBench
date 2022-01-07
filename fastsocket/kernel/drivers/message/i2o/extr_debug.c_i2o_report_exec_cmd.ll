; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_debug.c_i2o_report_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_debug.c_i2o_report_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"EXEC_ADAPTER_ASSIGN, \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"EXEC_ADAPTER_READ, \00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EXEC_ADAPTER_RELEASE, \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"EXEC_BIOS_INFO_SET, \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"EXEC_BOOT_DEVICE_SET, \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"EXEC_CONFIG_VALIDATE, \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"EXEC_CONN_SETUP, \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"EXEC_DDM_DESTROY, \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"EXEC_DDM_ENABLE, \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"EXEC_DDM_QUIESCE, \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"EXEC_DDM_RESET, \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"EXEC_DDM_SUSPEND, \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"EXEC_DEVICE_ASSIGN, \00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"EXEC_DEVICE_RELEASE, \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"EXEC_HRT_GET, \00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"EXEC_IOP_CLEAR, \00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"EXEC_IOP_CONNECT, \00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"EXEC_IOP_RESET, \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"EXEC_LCT_NOTIFY, \00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"EXEC_OUTBOUND_INIT, \00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"EXEC_PATH_ENABLE, \00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"EXEC_PATH_QUIESCE, \00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"EXEC_PATH_RESET, \00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"EXEC_STATIC_MF_CREATE, \00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"EXEC_STATIC_MF_RELEASE, \00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"EXEC_STATUS_GET, \00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"EXEC_SW_DOWNLOAD, \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"EXEC_SW_UPLOAD, \00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"EXEC_SW_REMOVE, \00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"EXEC_SYS_ENABLE, \00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"EXEC_SYS_MODIFY, \00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"EXEC_SYS_QUIESCE, \00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"EXEC_SYS_TAB_SET, \00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Cmd = %#02x, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @i2o_report_exec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_report_exec_cmd(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %70 [
    i32 160, label %4
    i32 157, label %6
    i32 156, label %8
    i32 154, label %10
    i32 153, label %12
    i32 152, label %14
    i32 151, label %16
    i32 150, label %18
    i32 149, label %20
    i32 148, label %22
    i32 147, label %24
    i32 146, label %26
    i32 145, label %28
    i32 144, label %30
    i32 143, label %32
    i32 159, label %34
    i32 158, label %36
    i32 155, label %38
    i32 142, label %40
    i32 141, label %42
    i32 140, label %44
    i32 139, label %46
    i32 138, label %48
    i32 137, label %50
    i32 136, label %52
    i32 135, label %54
    i32 134, label %56
    i32 132, label %58
    i32 133, label %60
    i32 131, label %62
    i32 130, label %64
    i32 129, label %66
    i32 128, label %68
  ]

4:                                                ; preds = %1
  %5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %73

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %73

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %73

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %73

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %73

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %73

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %73

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %73

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %73

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %73

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %73

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %73

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %73

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %73

32:                                               ; preds = %1
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %73

34:                                               ; preds = %1
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %73

36:                                               ; preds = %1
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %73

38:                                               ; preds = %1
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %73

40:                                               ; preds = %1
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  br label %73

42:                                               ; preds = %1
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  br label %73

44:                                               ; preds = %1
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %73

46:                                               ; preds = %1
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  br label %73

48:                                               ; preds = %1
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  br label %73

50:                                               ; preds = %1
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %73

52:                                               ; preds = %1
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  br label %73

54:                                               ; preds = %1
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  br label %73

56:                                               ; preds = %1
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  br label %73

58:                                               ; preds = %1
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  br label %73

60:                                               ; preds = %1
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  br label %73

62:                                               ; preds = %1
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  br label %73

64:                                               ; preds = %1
  %65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  br label %73

66:                                               ; preds = %1
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  br label %73

68:                                               ; preds = %1
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0))
  br label %73

70:                                               ; preds = %1
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
