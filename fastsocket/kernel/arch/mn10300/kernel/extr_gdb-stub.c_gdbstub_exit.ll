; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_gdbstub_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_gdbstub_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdbstub_busy = common dso_local global i32 0, align 4
@output_buffer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbstub_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @gdbstub_busy, align 4
  %6 = load i8*, i8** @output_buffer, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 87, i8* %7, align 1
  %8 = load i32, i32* %2, align 4
  %9 = trunc i32 %8 to i8
  %10 = call signext i8 @hex_asc_hi(i8 zeroext %9)
  %11 = load i8*, i8** @output_buffer, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %10, i8* %12, align 1
  %13 = load i32, i32* %2, align 4
  %14 = trunc i32 %13 to i8
  %15 = call signext i8 @hex_asc_lo(i8 zeroext %14)
  %16 = load i8*, i8** @output_buffer, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 %15, i8* %17, align 1
  %18 = load i8*, i8** @output_buffer, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 0, i8* %19, align 1
  %20 = call i32 @gdbstub_io_tx_char(i8 signext 36)
  store i8 0, i8* %3, align 1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %29, %1
  %22 = load i8*, i8** @output_buffer, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %4, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i8, i8* %4, align 1
  %31 = call i32 @gdbstub_io_tx_char(i8 signext %30)
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %3, align 1
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %21

40:                                               ; preds = %21
  %41 = call i32 @gdbstub_io_tx_char(i8 signext 35)
  %42 = load i8, i8* %3, align 1
  %43 = call signext i8 @hex_asc_hi(i8 zeroext %42)
  %44 = call i32 @gdbstub_io_tx_char(i8 signext %43)
  %45 = load i8, i8* %3, align 1
  %46 = call signext i8 @hex_asc_lo(i8 zeroext %45)
  %47 = call i32 @gdbstub_io_tx_char(i8 signext %46)
  %48 = call i32 (...) @gdbstub_io_tx_flush()
  store i32 0, i32* @gdbstub_busy, align 4
  ret void
}

declare dso_local signext i8 @hex_asc_hi(i8 zeroext) #1

declare dso_local signext i8 @hex_asc_lo(i8 zeroext) #1

declare dso_local i32 @gdbstub_io_tx_char(i8 signext) #1

declare dso_local i32 @gdbstub_io_tx_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
