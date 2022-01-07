; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { i32 }

@N_TTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"n_tty: init_tty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_ldisc_init(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load i32, i32* @N_TTY, align 4
  %5 = call %struct.tty_ldisc* @tty_ldisc_get(i32 %4)
  store %struct.tty_ldisc* %5, %struct.tty_ldisc** %3, align 8
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %7 = call i64 @IS_ERR(%struct.tty_ldisc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %14 = call i32 @tty_ldisc_assign(%struct.tty_struct* %12, %struct.tty_ldisc* %13)
  ret void
}

declare dso_local %struct.tty_ldisc* @tty_ldisc_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @tty_ldisc_assign(%struct.tty_struct*, %struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
