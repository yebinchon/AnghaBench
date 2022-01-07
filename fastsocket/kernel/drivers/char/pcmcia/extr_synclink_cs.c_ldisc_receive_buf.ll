; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_ldisc_receive_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_ldisc_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i32*, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32*, i8*, i32)* @ldisc_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldisc_receive_buf(%struct.tty_struct* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = icmp ne %struct.tty_struct* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %39

13:                                               ; preds = %4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %14)
  store %struct.tty_ldisc* %15, %struct.tty_ldisc** %9, align 8
  %16 = load %struct.tty_ldisc*, %struct.tty_ldisc** %9, align 8
  %17 = icmp ne %struct.tty_ldisc* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.tty_ldisc*, %struct.tty_ldisc** %9, align 8
  %20 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.tty_struct*, i32*, i8*, i32)*, i32 (%struct.tty_struct*, i32*, i8*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.tty_struct*, i32*, i8*, i32)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load %struct.tty_ldisc*, %struct.tty_ldisc** %9, align 8
  %27 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.tty_struct*, i32*, i8*, i32)*, i32 (%struct.tty_struct*, i32*, i8*, i32)** %29, align 8
  %31 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 %30(%struct.tty_struct* %31, i32* %32, i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %25, %18
  %37 = load %struct.tty_ldisc*, %struct.tty_ldisc** %9, align 8
  %38 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %37)
  br label %39

39:                                               ; preds = %12, %36, %13
  ret void
}

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
