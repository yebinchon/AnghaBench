; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_is_valid_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_is_valid_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSB_ID_Code = common dso_local global i64 0, align 8
@MSB_ID_Code = common dso_local global i64 0, align 8
@tmc1800 = common dso_local global i32 0, align 4
@chip = common dso_local global i32 0, align 4
@tmc18c50 = common dso_local global i32 0, align 4
@IO_Control = common dso_local global i64 0, align 8
@Configuration2 = common dso_local global i64 0, align 8
@tmc18c30 = common dso_local global i32 0, align 4
@FIFO_Size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fdomain_is_valid_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_is_valid_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load i64, i64* @LSB_ID_Code, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @inb(i64 %7)
  %9 = icmp ne i32 %8, 233
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @LSB_ID_Code, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inb(i64 %14)
  %16 = icmp ne i32 %15, 39
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %68

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @MSB_ID_Code, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inb(i64 %22)
  %24 = icmp ne i32 %23, 97
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %68

26:                                               ; preds = %18
  %27 = load i32, i32* @tmc1800, align 4
  store i32 %27, i32* @chip, align 4
  br label %67

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @MSB_ID_Code, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @inb(i64 %32)
  %34 = icmp ne i32 %33, 96
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %68

36:                                               ; preds = %28
  %37 = load i32, i32* @tmc18c50, align 4
  store i32 %37, i32* @chip, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @IO_Control, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 128, i64 %41)
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @Configuration2, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @inb(i64 %46)
  %48 = and i32 %47, 128
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %66

50:                                               ; preds = %36
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @IO_Control, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 0, i64 %54)
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @Configuration2, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @inb(i64 %59)
  %61 = and i32 %60, 128
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* @tmc18c30, align 4
  store i32 %64, i32* @chip, align 4
  store i32 2048, i32* @FIFO_Size, align 4
  br label %65

65:                                               ; preds = %63, %50
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66, %26
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %35, %25, %17
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
