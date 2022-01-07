; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_ldisc = type { i32, %struct.tty_ldisc_ops* }
%struct.tty_ldisc_ops = type { i32 }

@N_TTY = common dso_local global i32 0, align 4
@NR_LDISCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tty-ldisc-%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_ldisc* (i32)* @tty_ldisc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_ldisc* @tty_ldisc_get(i32 %0) #0 {
  %2 = alloca %struct.tty_ldisc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_ldisc*, align 8
  %5 = alloca %struct.tty_ldisc_ops*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @N_TTY, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NR_LDISCS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.tty_ldisc* @ERR_PTR(i32 %15)
  store %struct.tty_ldisc* %16, %struct.tty_ldisc** %2, align 8
  br label %54

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.tty_ldisc_ops* @get_ldops(i32 %18)
  store %struct.tty_ldisc_ops* %19, %struct.tty_ldisc_ops** %5, align 8
  %20 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %5, align 8
  %21 = call i64 @IS_ERR(%struct.tty_ldisc_ops* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @request_module(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.tty_ldisc_ops* @get_ldops(i32 %26)
  store %struct.tty_ldisc_ops* %27, %struct.tty_ldisc_ops** %5, align 8
  %28 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %5, align 8
  %29 = call i64 @IS_ERR(%struct.tty_ldisc_ops* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %5, align 8
  %33 = call %struct.tty_ldisc* @ERR_CAST(%struct.tty_ldisc_ops* %32)
  store %struct.tty_ldisc* %33, %struct.tty_ldisc** %2, align 8
  br label %54

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %17
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.tty_ldisc* @kmalloc(i32 16, i32 %36)
  store %struct.tty_ldisc* %37, %struct.tty_ldisc** %4, align 8
  %38 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  %39 = icmp eq %struct.tty_ldisc* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %5, align 8
  %42 = call i32 @put_ldops(%struct.tty_ldisc_ops* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.tty_ldisc* @ERR_PTR(i32 %44)
  store %struct.tty_ldisc* %45, %struct.tty_ldisc** %2, align 8
  br label %54

46:                                               ; preds = %35
  %47 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %5, align 8
  %48 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  %49 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %48, i32 0, i32 1
  store %struct.tty_ldisc_ops* %47, %struct.tty_ldisc_ops** %49, align 8
  %50 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  %51 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %50, i32 0, i32 0
  %52 = call i32 @atomic_set(i32* %51, i32 1)
  %53 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  store %struct.tty_ldisc* %53, %struct.tty_ldisc** %2, align 8
  br label %54

54:                                               ; preds = %46, %40, %31, %13
  %55 = load %struct.tty_ldisc*, %struct.tty_ldisc** %2, align 8
  ret %struct.tty_ldisc* %55
}

declare dso_local %struct.tty_ldisc* @ERR_PTR(i32) #1

declare dso_local %struct.tty_ldisc_ops* @get_ldops(i32) #1

declare dso_local i64 @IS_ERR(%struct.tty_ldisc_ops*) #1

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local %struct.tty_ldisc* @ERR_CAST(%struct.tty_ldisc_ops*) #1

declare dso_local %struct.tty_ldisc* @kmalloc(i32, i32) #1

declare dso_local i32 @put_ldops(%struct.tty_ldisc_ops*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
