; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR53c406a.c_NCR53c406a_pio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR53c406a.c_NCR53c406a_pio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG1 = common dso_local global i32 0, align 4
@PIO_STATUS = common dso_local global i32 0, align 4
@fast_pio = common dso_local global i64 0, align 8
@PIO_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @NCR53c406a_pio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR53c406a_pio_read(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @REG1, align 4
  br label %9

9:                                                ; preds = %82, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %9
  %13 = load i32, i32* @PIO_STATUS, align 4
  %14 = call i8* @inb(i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %84

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 30
  switch i32 %22, label %23 [
    i32 16, label %24
    i32 0, label %25
    i32 8, label %26
    i32 12, label %27
    i32 14, label %28
  ]

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %20, %23
  store i32 0, i32* %7, align 4
  br label %29

25:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %29

26:                                               ; preds = %20
  store i32 42, i32* %7, align 4
  br label %29

27:                                               ; preds = %20
  store i32 84, i32* %7, align 4
  br label %29

28:                                               ; preds = %20
  store i32 128, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %27, %26, %25, %24
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 64
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %84

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i64, i64* @fast_pio, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 3
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, i32* @PIO_FIFO, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %55, 2
  %57 = call i32 @insl(i32 %53, i8* %54, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 252
  %60 = load i8*, i8** %4, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 252
  %65 = load i32, i32* %5, align 4
  %66 = sub i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %81

67:                                               ; preds = %49, %46
  br label %68

68:                                               ; preds = %72, %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* @PIO_FIFO, align 4
  %74 = call i8* @inb(i32 %73)
  %75 = ptrtoint i8* %74 to i8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i32, i32* %5, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %5, align 4
  br label %68

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81, %37
  br label %9

83:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %36, %19
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i8* @inb(i32) #1

declare dso_local i32 @insl(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
