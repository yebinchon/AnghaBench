; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_i_EepromReadAnlogInputHeader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_i_EepromReadAnlogInputHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_AnalogInputHeader = type { i16, i16, i16, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_EepromReadAnlogInputHeader(i16 zeroext %0, i8* %1, i16 zeroext %2, %struct.str_AnalogInputHeader* %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.str_AnalogInputHeader*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store i16 %0, i16* %5, align 2
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store %struct.str_AnalogInputHeader* %3, %struct.str_AnalogInputHeader** %8, align 8
  %11 = load i16, i16* %5, align 2
  %12 = load i8*, i8** %6, align 8
  %13 = load i16, i16* %7, align 2
  %14 = zext i16 %13 to i32
  %15 = add nsw i32 256, %14
  %16 = add nsw i32 %15, 10
  %17 = call i8* @w_EepromReadWord(i16 zeroext %11, i8* %12, i32 %16)
  %18 = ptrtoint i8* %17 to i16
  store i16 %18, i16* %9, align 2
  %19 = load i16, i16* %9, align 2
  %20 = zext i16 %19 to i32
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 1023
  %23 = trunc i32 %22 to i16
  %24 = load %struct.str_AnalogInputHeader*, %struct.str_AnalogInputHeader** %8, align 8
  %25 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %24, i32 0, i32 0
  store i16 %23, i16* %25, align 8
  %26 = load i16, i16* %5, align 2
  %27 = load i8*, i8** %6, align 8
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = add nsw i32 256, %29
  %31 = add nsw i32 %30, 16
  %32 = call i8* @w_EepromReadWord(i16 zeroext %26, i8* %27, i32 %31)
  %33 = load %struct.str_AnalogInputHeader*, %struct.str_AnalogInputHeader** %8, align 8
  %34 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i16, i16* %5, align 2
  %36 = load i8*, i8** %6, align 8
  %37 = load i16, i16* %7, align 2
  %38 = zext i16 %37 to i32
  %39 = add nsw i32 256, %38
  %40 = add nsw i32 %39, 30
  %41 = call i8* @w_EepromReadWord(i16 zeroext %35, i8* %36, i32 %40)
  %42 = load %struct.str_AnalogInputHeader*, %struct.str_AnalogInputHeader** %8, align 8
  %43 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i16, i16* %5, align 2
  %45 = load i8*, i8** %6, align 8
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i32
  %48 = add nsw i32 256, %47
  %49 = add nsw i32 %48, 20
  %50 = call i8* @w_EepromReadWord(i16 zeroext %44, i8* %45, i32 %49)
  %51 = ptrtoint i8* %50 to i16
  store i16 %51, i16* %9, align 2
  %52 = load i16, i16* %9, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 13
  %55 = and i32 %54, 1
  %56 = trunc i32 %55 to i16
  %57 = load %struct.str_AnalogInputHeader*, %struct.str_AnalogInputHeader** %8, align 8
  %58 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %57, i32 0, i32 1
  store i16 %56, i16* %58, align 2
  %59 = load i16, i16* %5, align 2
  %60 = load i8*, i8** %6, align 8
  %61 = load i16, i16* %7, align 2
  %62 = zext i16 %61 to i32
  %63 = add nsw i32 256, %62
  %64 = add nsw i32 %63, 72
  %65 = call i8* @w_EepromReadWord(i16 zeroext %59, i8* %60, i32 %64)
  %66 = ptrtoint i8* %65 to i16
  store i16 %66, i16* %9, align 2
  %67 = load i16, i16* %9, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %9, align 2
  %71 = load i16, i16* %9, align 2
  %72 = icmp ne i16 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %4
  %74 = load i16, i16* %9, align 2
  %75 = zext i16 %74 to i32
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 74, %76
  %78 = load i16, i16* %9, align 2
  %79 = zext i16 %78 to i32
  %80 = sdiv i32 %79, 16
  %81 = add nsw i32 1, %80
  %82 = mul nsw i32 10, %81
  %83 = add nsw i32 %77, %82
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %10, align 2
  %85 = load i16, i16* %10, align 2
  %86 = zext i16 %85 to i32
  %87 = add nsw i32 %86, 2
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %10, align 2
  br label %94

89:                                               ; preds = %4
  store i16 74, i16* %10, align 2
  %90 = load i16, i16* %10, align 2
  %91 = zext i16 %90 to i32
  %92 = add nsw i32 %91, 2
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %10, align 2
  br label %94

94:                                               ; preds = %89, %73
  %95 = load i16, i16* %5, align 2
  %96 = load i8*, i8** %6, align 8
  %97 = load i16, i16* %7, align 2
  %98 = zext i16 %97 to i32
  %99 = add nsw i32 256, %98
  %100 = load i16, i16* %10, align 2
  %101 = zext i16 %100 to i32
  %102 = add nsw i32 %99, %101
  %103 = call i8* @w_EepromReadWord(i16 zeroext %95, i8* %96, i32 %102)
  %104 = ptrtoint i8* %103 to i16
  store i16 %104, i16* %9, align 2
  %105 = load i16, i16* %9, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 31
  %108 = trunc i32 %107 to i16
  %109 = load %struct.str_AnalogInputHeader*, %struct.str_AnalogInputHeader** %8, align 8
  %110 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %109, i32 0, i32 2
  store i16 %108, i16* %110, align 4
  ret i32 0
}

declare dso_local i8* @w_EepromReadWord(i16 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
