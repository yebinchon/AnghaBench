; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/yosemite/extr_atmel_read_eeprom.c_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/yosemite/extr_atmel_read_eeprom.c_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W_HEADER = common dso_local global i32 0, align 4
@R_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_eeprom(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 (...) @send_start()
  %11 = load i32, i32* @W_HEADER, align 4
  %12 = call i32 @send_byte(i32 %11)
  %13 = call i32 (...) @recv_ack()
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 2048
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @send_byte(i32 0)
  %18 = call i32 (...) @recv_ack()
  br label %19

19:                                               ; preds = %16, %3
  %20 = call i32 (...) @send_start()
  %21 = load i32, i32* @R_HEADER, align 4
  %22 = call i32 @send_byte(i32 %21)
  %23 = call i32 (...) @recv_ack()
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %44

28:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = call i32 (...) @recv_byte()
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  store i8 %35, i8* %36, align 1
  %38 = call i32 (...) @send_ack()
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %29

42:                                               ; preds = %29
  %43 = call i32 (...) @send_stop()
  br label %44

44:                                               ; preds = %42, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @send_start(...) #1

declare dso_local i32 @send_byte(i32) #1

declare dso_local i32 @recv_ack(...) #1

declare dso_local i32 @recv_byte(...) #1

declare dso_local i32 @send_ack(...) #1

declare dso_local i32 @send_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
