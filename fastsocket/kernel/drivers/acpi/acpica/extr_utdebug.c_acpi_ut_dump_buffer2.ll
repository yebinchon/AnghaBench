; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utdebug.c_acpi_ut_dump_buffer2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utdebug.c_acpi_ut_dump_buffer2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Null Buffer Pointer in DumpBuffer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%6.4X: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%04X \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%08X \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_dump_buffer2(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %148

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %15
  store i32 131, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %18
  br label %24

24:                                               ; preds = %143, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %147

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %105, %40, %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %109

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 2
  %43 = add nsw i32 %42, 1
  %44 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %31

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %51 [
    i32 131, label %50
    i32 128, label %61
    i32 130, label %72
    i32 129, label %83
  ]

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %48, %50
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %105

61:                                               ; preds = %48
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %64, %66
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = call i32 @ACPI_MOVE_16_TO_32(i32* %9, i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %105

72:                                               ; preds = %48
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %75, %77
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = call i32 @ACPI_MOVE_32_TO_32(i32* %9, i32* %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  br label %105

83:                                               ; preds = %48
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %86, %88
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  %91 = call i32 @ACPI_MOVE_32_TO_32(i32* %9, i32* %90)
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %96, %98
  %100 = add i64 %99, 4
  %101 = getelementptr inbounds i32, i32* %94, i64 %100
  %102 = call i32 @ACPI_MOVE_32_TO_32(i32* %9, i32* %101)
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %83, %72, %61, %51
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %31

109:                                              ; preds = %31
  %110 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %140, %109
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 16
  br i1 %113, label %114, label %143

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %5, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %148

122:                                              ; preds = %114
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %125, %127
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i64 @ACPI_IS_PRINT(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load i32, i32* %10, align 4
  %136 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %135)
  br label %139

137:                                              ; preds = %122
  %138 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %134
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %111

143:                                              ; preds = %111
  %144 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 16
  store i32 %146, i32* %7, align 4
  br label %24

147:                                              ; preds = %24
  br label %148

148:                                              ; preds = %147, %120, %13
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @ACPI_MOVE_16_TO_32(i32*, i32*) #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(i32*, i32*) #1

declare dso_local i64 @ACPI_IS_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
