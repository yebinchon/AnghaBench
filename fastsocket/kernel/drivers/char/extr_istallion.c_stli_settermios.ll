; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_settermios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_settermios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32 }
%struct.tty_struct = type { i64, %struct.ktermios*, %struct.stliport* }
%struct.stliport = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ktermios = type { i32 }

@stli_nrbrds = common dso_local global i64 0, align 8
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@A_SETPORT = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@A_SETSIGNALS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @stli_settermios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stli_settermios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.stliport*, align 8
  %6 = alloca %struct.stlibrd*, align 8
  %7 = alloca %struct.ktermios*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 2
  %11 = load %struct.stliport*, %struct.stliport** %10, align 8
  store %struct.stliport* %11, %struct.stliport** %5, align 8
  %12 = load %struct.stliport*, %struct.stliport** %5, align 8
  %13 = icmp eq %struct.stliport* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %96

15:                                               ; preds = %2
  %16 = load %struct.stliport*, %struct.stliport** %5, align 8
  %17 = getelementptr inbounds %struct.stliport, %struct.stliport* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @stli_nrbrds, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %96

22:                                               ; preds = %15
  %23 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %24 = load %struct.stliport*, %struct.stliport** %5, align 8
  %25 = getelementptr inbounds %struct.stliport, %struct.stliport* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %23, i64 %26
  %28 = load %struct.stlibrd*, %struct.stlibrd** %27, align 8
  store %struct.stlibrd* %28, %struct.stlibrd** %6, align 8
  %29 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %30 = icmp eq %struct.stlibrd* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %96

32:                                               ; preds = %22
  %33 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 1
  %35 = load %struct.ktermios*, %struct.ktermios** %34, align 8
  store %struct.ktermios* %35, %struct.ktermios** %7, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %37 = load %struct.stliport*, %struct.stliport** %5, align 8
  %38 = load %struct.ktermios*, %struct.ktermios** %7, align 8
  %39 = call i32 @stli_mkasyport(%struct.tty_struct* %36, %struct.stliport* %37, i32* %8, %struct.ktermios* %38)
  %40 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %41 = load %struct.stliport*, %struct.stliport** %5, align 8
  %42 = load i32, i32* @A_SETPORT, align 4
  %43 = call i32 @stli_cmdwait(%struct.stlibrd* %40, %struct.stliport* %41, i32 %42, i32* %8, i32 4, i32 0)
  %44 = load %struct.stliport*, %struct.stliport** %5, align 8
  %45 = getelementptr inbounds %struct.stliport, %struct.stliport* %44, i32 0, i32 2
  %46 = load %struct.ktermios*, %struct.ktermios** %7, align 8
  %47 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CBAUD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = call i32 @stli_mkasysigs(i32* %45, i32 %53, i32 -1)
  %55 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %56 = load %struct.stliport*, %struct.stliport** %5, align 8
  %57 = load i32, i32* @A_SETSIGNALS, align 4
  %58 = load %struct.stliport*, %struct.stliport** %5, align 8
  %59 = getelementptr inbounds %struct.stliport, %struct.stliport* %58, i32 0, i32 2
  %60 = call i32 @stli_cmdwait(%struct.stlibrd* %55, %struct.stliport* %56, i32 %57, i32* %59, i32 4, i32 0)
  %61 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CRTSCTS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %32
  %68 = load %struct.ktermios*, %struct.ktermios** %7, align 8
  %69 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CRTSCTS, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %76 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %67, %32
  %78 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %79 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CLOCAL, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load %struct.ktermios*, %struct.ktermios** %7, align 8
  %86 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CLOCAL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.stliport*, %struct.stliport** %5, align 8
  %93 = getelementptr inbounds %struct.stliport, %struct.stliport* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @wake_up_interruptible(i32* %94)
  br label %96

96:                                               ; preds = %14, %21, %31, %91, %84, %77
  ret void
}

declare dso_local i32 @stli_mkasyport(%struct.tty_struct*, %struct.stliport*, i32*, %struct.ktermios*) #1

declare dso_local i32 @stli_cmdwait(%struct.stlibrd*, %struct.stliport*, i32, i32*, i32, i32) #1

declare dso_local i32 @stli_mkasysigs(i32*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
