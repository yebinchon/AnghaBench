; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR53c406a.c_NCR53c406a_pio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR53c406a.c_NCR53c406a_pio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG1 = common dso_local global i32 0, align 4
@PIO_STATUS = common dso_local global i32 0, align 4
@fast_pio = common dso_local global i64 0, align 8
@PIO_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @NCR53c406a_pio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR53c406a_pio_write(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @REG1, align 4
  br label %9

9:                                                ; preds = %81, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 64
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %82

19:                                               ; preds = %17
  %20 = load i32, i32* @PIO_STATUS, align 4
  %21 = call i32 @inb(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %83

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 30
  switch i32 %28, label %33 [
    i32 16, label %29
    i32 0, label %30
    i32 8, label %31
    i32 12, label %32
    i32 14, label %34
  ]

29:                                               ; preds = %26
  store i32 128, i32* %7, align 4
  br label %35

30:                                               ; preds = %26
  store i32 84, i32* %7, align 4
  br label %35

31:                                               ; preds = %26
  store i32 42, i32* %7, align 4
  br label %35

32:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %35

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %26, %33
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %32, %31, %30, %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i64, i64* @fast_pio, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i32, i32* @PIO_FIFO, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 2
  %55 = call i32 @outsl(i32 %51, i8* %52, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 252
  %58 = load i8*, i8** %4, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 252
  %63 = load i32, i32* %5, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %80

65:                                               ; preds = %47, %44
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %7, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %4, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = load i32, i32* @PIO_FIFO, align 4
  %76 = call i32 @outb(i32 %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %5, align 4
  br label %66

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %80, %35
  br label %9

82:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %25
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outsl(i32, i8*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
