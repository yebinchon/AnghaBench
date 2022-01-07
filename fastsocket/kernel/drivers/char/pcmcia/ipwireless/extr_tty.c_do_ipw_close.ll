; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_do_ipw_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_do_ipw_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_tty = type { i64, i64, i32, %struct.tty_struct* }
%struct.tty_struct = type { i32* }

@TTYTYPE_MODEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_tty*)* @do_ipw_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ipw_close(%struct.ipw_tty* %0) #0 {
  %2 = alloca %struct.ipw_tty*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  store %struct.ipw_tty* %0, %struct.ipw_tty** %2, align 8
  %4 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %9 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %14 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %13, i32 0, i32 3
  %15 = load %struct.tty_struct*, %struct.tty_struct** %14, align 8
  store %struct.tty_struct* %15, %struct.tty_struct** %3, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = icmp ne %struct.tty_struct* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %20 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %19, i32 0, i32 3
  store %struct.tty_struct* null, %struct.tty_struct** %20, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %24 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TTYTYPE_MODEM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %30 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ipwireless_ppp_close(i32 %31)
  br label %33

33:                                               ; preds = %28, %18
  br label %34

34:                                               ; preds = %33, %12
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @ipwireless_ppp_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
