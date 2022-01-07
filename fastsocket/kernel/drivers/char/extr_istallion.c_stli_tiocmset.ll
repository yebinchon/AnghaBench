; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32 }
%struct.tty_struct = type { i32, %struct.stliport* }
%struct.stliport = type { i64, i32 }
%struct.file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@stli_nrbrds = common dso_local global i64 0, align 8
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@A_SETSIGNALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @stli_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stli_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stliport*, align 8
  %11 = alloca %struct.stlibrd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 1
  %16 = load %struct.stliport*, %struct.stliport** %15, align 8
  store %struct.stliport* %16, %struct.stliport** %10, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %17 = load %struct.stliport*, %struct.stliport** %10, align 8
  %18 = icmp eq %struct.stliport* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %86

22:                                               ; preds = %4
  %23 = load %struct.stliport*, %struct.stliport** %10, align 8
  %24 = getelementptr inbounds %struct.stliport, %struct.stliport* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @stli_nrbrds, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %86

29:                                               ; preds = %22
  %30 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %31 = load %struct.stliport*, %struct.stliport** %10, align 8
  %32 = getelementptr inbounds %struct.stliport, %struct.stliport* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %30, i64 %33
  %35 = load %struct.stlibrd*, %struct.stlibrd** %34, align 8
  store %struct.stlibrd* %35, %struct.stlibrd** %11, align 8
  %36 = load %struct.stlibrd*, %struct.stlibrd** %11, align 8
  %37 = icmp eq %struct.stlibrd* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %86

39:                                               ; preds = %29
  %40 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TTY_IO_ERROR, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %86

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @TIOCM_RTS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @TIOCM_DTR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %13, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @TIOCM_RTS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @TIOCM_DTR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.stliport*, %struct.stliport** %10, align 8
  %76 = getelementptr inbounds %struct.stliport, %struct.stliport* %75, i32 0, i32 1
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @stli_mkasysigs(i32* %76, i32 %77, i32 %78)
  %80 = load %struct.stlibrd*, %struct.stlibrd** %11, align 8
  %81 = load %struct.stliport*, %struct.stliport** %10, align 8
  %82 = load i32, i32* @A_SETSIGNALS, align 4
  %83 = load %struct.stliport*, %struct.stliport** %10, align 8
  %84 = getelementptr inbounds %struct.stliport, %struct.stliport* %83, i32 0, i32 1
  %85 = call i32 @stli_cmdwait(%struct.stlibrd* %80, %struct.stliport* %81, i32 %82, i32* %84, i32 4, i32 0)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %74, %47, %38, %28, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @stli_mkasysigs(i32*, i32, i32) #1

declare dso_local i32 @stli_cmdwait(%struct.stlibrd*, %struct.stliport*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
