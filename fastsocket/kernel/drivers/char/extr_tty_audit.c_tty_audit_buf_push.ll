; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_buf_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_buf_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.tty_audit_buf = type { i64, i32, i32, i32 }

@audit_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, i32, %struct.tty_audit_buf*)* @tty_audit_buf_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_audit_buf_push(%struct.task_struct* %0, i32 %1, i32 %2, %struct.tty_audit_buf* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_audit_buf*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.tty_audit_buf* %3, %struct.tty_audit_buf** %8, align 8
  %9 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %10 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %39

14:                                               ; preds = %4
  %15 = load i64, i64* @audit_enabled, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %19 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %39

20:                                               ; preds = %14
  %21 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %25 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %28 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %31 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %34 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @tty_audit_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.task_struct* %21, i32 %22, i32 %23, i32 %26, i32 %29, i32 %32, i64 %35)
  %37 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %38 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %20, %17, %13
  ret void
}

declare dso_local i32 @tty_audit_log(i8*, %struct.task_struct*, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
