; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_mkpiggy.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_mkpiggy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Usage: %s compressed_file\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c".section \22.rodata.compressed\22,\22a\22,@progbits\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c".globl z_input_len\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"z_input_len = %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c".globl z_output_len\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"z_output_len = %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c".globl z_extract_offset\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"z_extract_offset = 0x%lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c".globl z_extract_offset_negative\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"z_extract_offset_negative = -0x%lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c".globl input_data, input_data_end\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"input_data:\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c".incbin \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"input_data_end:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 1, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @perror(i8* %28)
  store i32 1, i32* %3, align 4
  br label %87

30:                                               ; preds = %18
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @SEEK_END, align 4
  %33 = call i64 @fseek(i32* %31, i64 -4, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @perror(i8* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @fread(i64* %6, i32 8, i32 1, i32* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @ftell(i32* %43)
  store i64 %44, i64* %7, align 8
  %45 = call i64 @getle32(i64* %6)
  store i64 %45, i64* %6, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub nsw i64 %52, %53
  br label %56

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i64 [ %54, %51 ], [ 0, %55 ]
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = ashr i64 %58, 12
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 32786
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 4095
  %66 = and i64 %65, -4096
  store i64 %66, i64* %8, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i64, i64* %7, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %69)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i64, i64* %6, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %72)
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %75 = load i64, i64* %8, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %75)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %78 = load i64, i64* %8, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i64 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %84)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %56, %25, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fread(i64*, i32, i32, i32*) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @getle32(i64*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
