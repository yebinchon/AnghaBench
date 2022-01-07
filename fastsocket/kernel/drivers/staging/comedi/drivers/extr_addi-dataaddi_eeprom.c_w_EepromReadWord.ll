; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_w_EepromReadWord.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_w_EepromReadWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"S5920\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"S5933\00", align 1
@NVCMD_LOAD_LOW = common dso_local global i8 0, align 1
@NVCMD_LOAD_HIGH = common dso_local global i8 0, align 1
@NVCMD_BEGIN_READ = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"93C76\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @w_EepromReadWord(i16 zeroext %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i16, align 2
  store i16 %0, i16* %4, align 2
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  store i16 0, i16* %13, align 2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %108, label %21

21:                                               ; preds = %17, %3
  store i8 0, i8* %7, align 1
  br label %22

22:                                               ; preds = %96, %21
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %99

26:                                               ; preds = %22
  %27 = load i16, i16* %6, align 2
  %28 = zext i16 %27 to i32
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %28, %30
  %32 = srem i32 %31, 256
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %11, align 1
  %34 = load i16, i16* %6, align 2
  %35 = zext i16 %34 to i32
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %35, %37
  %39 = sdiv i32 %38, 256
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %12, align 1
  %41 = load i8, i8* @NVCMD_LOAD_LOW, align 1
  %42 = load i16, i16* %4, align 2
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %43, 63
  %45 = trunc i32 %44 to i16
  %46 = call i32 @outb(i8 zeroext %41, i16 zeroext %45)
  %47 = load i16, i16* %4, align 2
  %48 = call i32 @v_EepromWaitBusy(i16 zeroext %47)
  %49 = load i8, i8* %11, align 1
  %50 = load i16, i16* %4, align 2
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %51, 62
  %53 = trunc i32 %52 to i16
  %54 = call i32 @outb(i8 zeroext %49, i16 zeroext %53)
  %55 = load i16, i16* %4, align 2
  %56 = call i32 @v_EepromWaitBusy(i16 zeroext %55)
  %57 = load i8, i8* @NVCMD_LOAD_HIGH, align 1
  %58 = load i16, i16* %4, align 2
  %59 = zext i16 %58 to i32
  %60 = add nsw i32 %59, 63
  %61 = trunc i32 %60 to i16
  %62 = call i32 @outb(i8 zeroext %57, i16 zeroext %61)
  %63 = load i16, i16* %4, align 2
  %64 = call i32 @v_EepromWaitBusy(i16 zeroext %63)
  %65 = load i8, i8* %12, align 1
  %66 = load i16, i16* %4, align 2
  %67 = zext i16 %66 to i32
  %68 = add nsw i32 %67, 62
  %69 = trunc i32 %68 to i16
  %70 = call i32 @outb(i8 zeroext %65, i16 zeroext %69)
  %71 = load i16, i16* %4, align 2
  %72 = call i32 @v_EepromWaitBusy(i16 zeroext %71)
  %73 = load i8, i8* @NVCMD_BEGIN_READ, align 1
  %74 = load i16, i16* %4, align 2
  %75 = zext i16 %74 to i32
  %76 = add nsw i32 %75, 63
  %77 = trunc i32 %76 to i16
  %78 = call i32 @outb(i8 zeroext %73, i16 zeroext %77)
  %79 = load i16, i16* %4, align 2
  %80 = call i32 @v_EepromWaitBusy(i16 zeroext %79)
  %81 = load i16, i16* %4, align 2
  %82 = zext i16 %81 to i32
  %83 = add nsw i32 %82, 62
  %84 = trunc i32 %83 to i16
  %85 = call zeroext i8 @inb(i16 zeroext %84)
  store i8 %85, i8* %8, align 1
  %86 = load i16, i16* %4, align 2
  %87 = call i32 @v_EepromWaitBusy(i16 zeroext %86)
  %88 = load i8, i8* %7, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %26
  %92 = load i8, i8* %8, align 1
  store i8 %92, i8* %9, align 1
  br label %95

93:                                               ; preds = %26
  %94 = load i8, i8* %8, align 1
  store i8 %94, i8* %10, align 1
  br label %95

95:                                               ; preds = %93, %91
  br label %96

96:                                               ; preds = %95
  %97 = load i8, i8* %7, align 1
  %98 = add i8 %97, 1
  store i8 %98, i8* %7, align 1
  br label %22

99:                                               ; preds = %22
  %100 = load i8, i8* %9, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i16
  %104 = zext i16 %103 to i32
  %105 = mul nsw i32 %104, 256
  %106 = or i32 %101, %105
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %13, align 2
  br label %108

108:                                              ; preds = %99, %17
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i16, i16* %4, align 2
  %114 = load i16, i16* %6, align 2
  %115 = call i32 @v_EepromCs76Read(i16 zeroext %113, i16 zeroext %114, i16* %13)
  br label %116

116:                                              ; preds = %112, %108
  %117 = load i16, i16* %13, align 2
  ret i16 %117
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @outb(i8 zeroext, i16 zeroext) #1

declare dso_local i32 @v_EepromWaitBusy(i16 zeroext) #1

declare dso_local zeroext i8 @inb(i16 zeroext) #1

declare dso_local i32 @v_EepromCs76Read(i16 zeroext, i16 zeroext, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
