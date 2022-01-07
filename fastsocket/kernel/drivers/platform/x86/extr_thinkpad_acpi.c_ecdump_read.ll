; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_ecdump_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_ecdump_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"EC       +00 +01 +02 +03 +04 +05 +06 +07 +08 +09 +0a +0b +0c +0d +0e +0f\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"EC 0x%02x:\00", align 1
@ecdump_regs = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c" *%02x\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"  %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @ecdump_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdump_read(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %7 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %61, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %64

11:                                               ; preds = %8
  %12 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %51, %11
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @acpi_ec_read(i32 %21, i32* %5)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %54

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** @ecdump_regs, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %26, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %43

39:                                               ; preds = %25
  %40 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %5, align 4
  %45 = load i32*, i32** @ecdump_regs, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %15

54:                                               ; preds = %24, %15
  %55 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %56 = call i32 @seq_putc(%struct.seq_file* %55, i8 signext 10)
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 16
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %64

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 16
  store i32 %63, i32* %3, align 4
  br label %8

64:                                               ; preds = %59, %8
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
