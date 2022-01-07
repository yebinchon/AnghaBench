; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_audit_buf = type { i32, i32, i32, i64, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_audit_buf* (i32, i32, i32)* @tty_audit_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_audit_buf* @tty_audit_buf_alloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_audit_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_audit_buf*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 40, i32 %9)
  %11 = bitcast i8* %10 to %struct.tty_audit_buf*
  store %struct.tty_audit_buf* %11, %struct.tty_audit_buf** %8, align 8
  %12 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %13 = icmp ne %struct.tty_audit_buf* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %48

15:                                               ; preds = %3
  %16 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  %19 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %20 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %22 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %21, i32 0, i32 6
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %45

26:                                               ; preds = %15
  %27 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %28 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %27, i32 0, i32 5
  %29 = call i32 @atomic_set(i32* %28, i32 1)
  %30 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %31 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %30, i32 0, i32 4
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %35 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %38 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %41 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %43 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  store %struct.tty_audit_buf* %44, %struct.tty_audit_buf** %4, align 8
  br label %49

45:                                               ; preds = %25
  %46 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %8, align 8
  %47 = call i32 @kfree(%struct.tty_audit_buf* %46)
  br label %48

48:                                               ; preds = %45, %14
  store %struct.tty_audit_buf* null, %struct.tty_audit_buf** %4, align 8
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %4, align 8
  ret %struct.tty_audit_buf* %50
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.tty_audit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
