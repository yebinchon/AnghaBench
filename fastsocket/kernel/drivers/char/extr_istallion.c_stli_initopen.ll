; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_initopen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_initopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.stlibrd = type { i32 }
%struct.stliport = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@DT_TXLOW = common dso_local global i32 0, align 4
@DT_TXEMPTY = common dso_local global i32 0, align 4
@DT_RXBUSY = common dso_local global i32 0, align 4
@DT_RXBREAK = common dso_local global i32 0, align 4
@SG_DCD = common dso_local global i32 0, align 4
@A_SETNOTIFY = common dso_local global i32 0, align 4
@A_SETPORT = common dso_local global i32 0, align 4
@ST_GETSIGS = common dso_local global i32 0, align 4
@A_GETSIGNALS = common dso_local global i32 0, align 4
@A_SETSIGNALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.stlibrd*, %struct.stliport*)* @stli_initopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stli_initopen(%struct.tty_struct* %0, %struct.stlibrd* %1, %struct.stliport* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.stlibrd*, align 8
  %7 = alloca %struct.stliport*, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.stlibrd* %1, %struct.stlibrd** %6, align 8
  store %struct.stliport* %2, %struct.stliport** %7, align 8
  %11 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %12 = load %struct.stliport*, %struct.stliport** %7, align 8
  %13 = call i32 @stli_rawopen(%struct.stlibrd* %11, %struct.stliport* %12, i32 0, i32 1)
  store i32 %13, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = call i32 @memset(%struct.TYPE_7__* %8, i32 0, i32 12)
  %19 = load i32, i32* @DT_TXLOW, align 4
  %20 = load i32, i32* @DT_TXEMPTY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @DT_RXBUSY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DT_RXBREAK, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @SG_DCD, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %30 = load %struct.stliport*, %struct.stliport** %7, align 8
  %31 = load i32, i32* @A_SETNOTIFY, align 4
  %32 = call i32 @stli_cmdwait(%struct.stlibrd* %29, %struct.stliport* %30, i32 %31, %struct.TYPE_7__* %8, i32 12, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %92

36:                                               ; preds = %17
  %37 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %38 = load %struct.stliport*, %struct.stliport** %7, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @stli_mkasyport(%struct.tty_struct* %37, %struct.stliport* %38, %struct.TYPE_7__* %9, i32 %41)
  %43 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %44 = load %struct.stliport*, %struct.stliport** %7, align 8
  %45 = load i32, i32* @A_SETPORT, align 4
  %46 = call i32 @stli_cmdwait(%struct.stlibrd* %43, %struct.stliport* %44, i32 %45, %struct.TYPE_7__* %9, i32 12, i32 0)
  store i32 %46, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %92

50:                                               ; preds = %36
  %51 = load i32, i32* @ST_GETSIGS, align 4
  %52 = load %struct.stliport*, %struct.stliport** %7, align 8
  %53 = getelementptr inbounds %struct.stliport, %struct.stliport* %52, i32 0, i32 2
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %56 = load %struct.stliport*, %struct.stliport** %7, align 8
  %57 = load i32, i32* @A_GETSIGNALS, align 4
  %58 = load %struct.stliport*, %struct.stliport** %7, align 8
  %59 = getelementptr inbounds %struct.stliport, %struct.stliport* %58, i32 0, i32 0
  %60 = call i32 @stli_cmdwait(%struct.stlibrd* %55, %struct.stliport* %56, i32 %57, %struct.TYPE_7__* %59, i32 4, i32 1)
  store i32 %60, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %92

64:                                               ; preds = %50
  %65 = load i32, i32* @ST_GETSIGS, align 4
  %66 = load %struct.stliport*, %struct.stliport** %7, align 8
  %67 = getelementptr inbounds %struct.stliport, %struct.stliport* %66, i32 0, i32 2
  %68 = call i64 @test_and_clear_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.stliport*, %struct.stliport** %7, align 8
  %72 = getelementptr inbounds %struct.stliport, %struct.stliport* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @stli_mktiocm(i32 %74)
  %76 = load %struct.stliport*, %struct.stliport** %7, align 8
  %77 = getelementptr inbounds %struct.stliport, %struct.stliport* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %64
  %79 = load %struct.stliport*, %struct.stliport** %7, align 8
  %80 = getelementptr inbounds %struct.stliport, %struct.stliport* %79, i32 0, i32 0
  %81 = call i32 @stli_mkasysigs(%struct.TYPE_7__* %80, i32 1, i32 1)
  %82 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %83 = load %struct.stliport*, %struct.stliport** %7, align 8
  %84 = load i32, i32* @A_SETSIGNALS, align 4
  %85 = load %struct.stliport*, %struct.stliport** %7, align 8
  %86 = getelementptr inbounds %struct.stliport, %struct.stliport* %85, i32 0, i32 0
  %87 = call i32 @stli_cmdwait(%struct.stlibrd* %82, %struct.stliport* %83, i32 %84, %struct.TYPE_7__* %86, i32 4, i32 0)
  store i32 %87, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %89, %62, %48, %34, %15
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @stli_rawopen(%struct.stlibrd*, %struct.stliport*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @stli_cmdwait(%struct.stlibrd*, %struct.stliport*, i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @stli_mkasyport(%struct.tty_struct*, %struct.stliport*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @stli_mktiocm(i32) #1

declare dso_local i32 @stli_mkasysigs(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
