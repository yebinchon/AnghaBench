; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_print_selftest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_print_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"eata_pio: executing controller self test & setup...\0A\00", align 1
@HA_RSTATUS = common dso_local global i64 0, align 8
@HA_SBUSY = common dso_local global i32 0, align 4
@EATA_CMD_PIO_SETUPTEST = common dso_local global i32 0, align 4
@HA_WCOMMAND = common dso_local global i64 0, align 8
@HA_SDRQ = common dso_local global i32 0, align 4
@HA_RDATA = common dso_local global i64 0, align 8
@HA_SERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @print_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_selftest(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [512 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = load i64, i64* @HA_RSTATUS, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @inb(i64 %9)
  %11 = load i32, i32* @HA_SBUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %5

15:                                               ; preds = %5
  %16 = load i32, i32* @EATA_CMD_PIO_SETUPTEST, align 4
  %17 = load i32, i32* %2, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* @HA_WCOMMAND, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %16, i64 %20)
  br label %22

22:                                               ; preds = %50, %15
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i32, i32* %2, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* @HA_RSTATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inb(i64 %27)
  %29 = load i32, i32* @HA_SBUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %23

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @HA_RSTATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @inb(i64 %37)
  %39 = load i32, i32* @HA_SDRQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i32, i32* %2, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* @HA_RDATA, align 8
  %46 = add nsw i64 %44, %45
  %47 = bitcast [512 x i8]* %3 to i8**
  %48 = call i32 @insw(i64 %46, i8** %47, i32 256)
  br label %49

49:                                               ; preds = %42, %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @HA_RSTATUS, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @inb(i64 %54)
  %56 = load i32, i32* @HA_SBUSY, align 4
  %57 = load i32, i32* @HA_SDRQ, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %22, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %2, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @HA_RSTATUS, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @inb(i64 %65)
  %67 = load i32, i32* @HA_SERROR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  ret i32 %71
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @insw(i64, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
