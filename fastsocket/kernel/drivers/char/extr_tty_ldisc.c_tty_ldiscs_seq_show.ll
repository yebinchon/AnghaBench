; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldiscs_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldiscs_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.tty_ldisc_ops = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"%-10s %2d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tty_ldiscs_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_ldiscs_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_ldisc_ops*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.tty_ldisc_ops* @get_ldops(i32 %11)
  store %struct.tty_ldisc_ops* %12, %struct.tty_ldisc_ops** %7, align 8
  %13 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %7, align 8
  %14 = call i64 @IS_ERR(%struct.tty_ldisc_ops* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %7, align 8
  %20 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %7, align 8
  %25 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %7, align 8
  %33 = call i32 @put_ldops(%struct.tty_ldisc_ops* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.tty_ldisc_ops* @get_ldops(i32) #1

declare dso_local i64 @IS_ERR(%struct.tty_ldisc_ops*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32) #1

declare dso_local i32 @put_ldops(%struct.tty_ldisc_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
