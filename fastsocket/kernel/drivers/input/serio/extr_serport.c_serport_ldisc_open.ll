; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serport.c_serport_ldisc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serport.c_serport_ldisc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.serport* }
%struct.serport = type { i32, i32, %struct.tty_struct* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @serport_ldisc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serport_ldisc_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serport*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %5 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %6 = call i32 @capable(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.serport* @kzalloc(i32 16, i32 %12)
  store %struct.serport* %13, %struct.serport** %4, align 8
  %14 = load %struct.serport*, %struct.serport** %4, align 8
  %15 = icmp ne %struct.serport* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %11
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = load %struct.serport*, %struct.serport** %4, align 8
  %22 = getelementptr inbounds %struct.serport, %struct.serport* %21, i32 0, i32 2
  store %struct.tty_struct* %20, %struct.tty_struct** %22, align 8
  %23 = load %struct.serport*, %struct.serport** %4, align 8
  %24 = getelementptr inbounds %struct.serport, %struct.serport* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.serport*, %struct.serport** %4, align 8
  %27 = getelementptr inbounds %struct.serport, %struct.serport* %26, i32 0, i32 0
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.serport*, %struct.serport** %4, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 2
  store %struct.serport* %29, %struct.serport** %31, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 0
  store i32 256, i32* %33, align 8
  %34 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %35 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 1
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %19, %16, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.serport* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
