; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/aicasm/extr_aicasm.c_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/aicasm/extr_aicasm.c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@appname = common dso_local global i8* null, align 8
@yyfilename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Stopped at file %s, line %d - \00", align 1
@yylineno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ofile = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: Removing %s due to error\0A\00", align 1
@ofilename = common dso_local global i8* null, align 8
@regfile = common dso_local global i32* null, align 8
@regfilename = common dso_local global i8* null, align 8
@listfile = common dso_local global i32* null, align 8
@listfilename = common dso_local global i8* null, align 8
@patch_functions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8*, i8** @appname, align 8
  %10 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i8*, i8** @yyfilename, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8*, i8** @yyfilename, align 8
  %16 = load i32, i32* @yylineno, align 4
  %17 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %7
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32*, i32** @ofile, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32*, i32** @ofile, align 8
  %27 = call i32 @fclose(i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** @appname, align 8
  %33 = load i8*, i8** @ofilename, align 8
  %34 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load i8*, i8** @ofilename, align 8
  %36 = call i32 @unlink(i8* %35)
  br label %37

37:                                               ; preds = %30, %25
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32*, i32** @regfile, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32*, i32** @regfile, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** @appname, align 8
  %49 = load i8*, i8** @regfilename, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %49)
  %51 = load i8*, i8** @regfilename, align 8
  %52 = call i32 @unlink(i8* %51)
  br label %53

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32*, i32** @listfile, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32*, i32** @listfile, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** @appname, align 8
  %65 = load i8*, i8** @listfilename, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %65)
  %67 = load i8*, i8** @listfilename, align 8
  %68 = call i32 @unlink(i8* %67)
  br label %69

69:                                               ; preds = %62, %57
  br label %70

70:                                               ; preds = %69, %54
  %71 = call i32 @symlist_free(i32* @patch_functions)
  %72 = call i32 (...) @symtable_close()
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @exit(i32 %73) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @symlist_free(i32*) #1

declare dso_local i32 @symtable_close(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
