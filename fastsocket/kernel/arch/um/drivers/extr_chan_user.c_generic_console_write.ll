; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_user.c_generic_console_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_chan_user.c_generic_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@SIGIO = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_console_write(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.termios, align 4
  %11 = alloca %struct.termios, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @isatty(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = call i32 @sigemptyset(i32* %9)
  %18 = load i32, i32* @SIGIO, align 4
  %19 = call i32 @sigaddset(i32* %9, i32 %18)
  %20 = load i32, i32* @SIG_BLOCK, align 4
  %21 = call i64 @sigprocmask(i32 %20, i32* %9, i32* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %63

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @tcgetattr(i32 %25, %struct.termios* %10)
  store i32 %26, i32* %12, align 4
  %27 = call i32 @CATCH_EINTR(i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %63

31:                                               ; preds = %24
  %32 = bitcast %struct.termios* %11 to i8*
  %33 = bitcast %struct.termios* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load i32, i32* @OPOST, align 4
  %35 = getelementptr inbounds %struct.termios, %struct.termios* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @TCSAFLUSH, align 4
  %40 = call i32 @tcsetattr(i32 %38, i32 %39, %struct.termios* %11)
  store i32 %40, i32* %12, align 4
  %41 = call i32 @CATCH_EINTR(i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %63

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %5, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @generic_write(i32 %47, i8* %48, i32 %49, i32* null)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @isatty(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @TCSAFLUSH, align 4
  %57 = call i32 @tcsetattr(i32 %55, i32 %56, %struct.termios* %10)
  %58 = call i32 @CATCH_EINTR(i32 %57)
  %59 = load i32, i32* @SIG_SETMASK, align 4
  %60 = call i64 @sigprocmask(i32 %59, i32* %8, i32* null)
  br label %61

61:                                               ; preds = %54, %46
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %44, %30, %23
  %64 = load i32, i32* @errno, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %61
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @CATCH_EINTR(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @generic_write(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
