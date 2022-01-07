; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c_sclp_tty_put_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c_sclp_tty_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@sclp_tty_chars = common dso_local global i8* null, align 8
@sclp_tty_chars_count = common dso_local global i64 0, align 8
@SCLP_TTY_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @sclp_tty_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_tty_put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** @sclp_tty_chars, align 8
  %7 = load i64, i64* @sclp_tty_chars_count, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* @sclp_tty_chars_count, align 8
  %9 = getelementptr inbounds i8, i8* %6, i64 %7
  store i8 %5, i8* %9, align 1
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @sclp_tty_chars_count, align 8
  %15 = load i64, i64* @SCLP_TTY_BUF_SIZE, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %2
  %18 = load i8*, i8** @sclp_tty_chars, align 8
  %19 = load i64, i64* @sclp_tty_chars_count, align 8
  %20 = call i32 @sclp_tty_write_string(i8* %18, i64 %19, i32 0)
  store i64 0, i64* @sclp_tty_chars_count, align 8
  br label %21

21:                                               ; preds = %17, %13
  ret i32 1
}

declare dso_local i32 @sclp_tty_write_string(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
