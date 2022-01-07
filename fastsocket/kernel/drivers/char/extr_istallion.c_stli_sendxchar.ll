; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_sendxchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_sendxchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32 }
%struct.tty_struct = type { %struct.stliport* }
%struct.stliport = type { i64 }
%struct.TYPE_4__ = type { i8, i32, i32 }

@stli_nrbrds = common dso_local global i64 0, align 8
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@CT_STOPFLOW = common dso_local global i32 0, align 4
@CT_STARTFLOW = common dso_local global i32 0, align 4
@CT_SENDCHR = common dso_local global i32 0, align 4
@A_PORTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @stli_sendxchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stli_sendxchar(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.stlibrd*, align 8
  %6 = alloca %struct.stliport*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.stliport*, %struct.stliport** %9, align 8
  store %struct.stliport* %10, %struct.stliport** %6, align 8
  %11 = load %struct.stliport*, %struct.stliport** %6, align 8
  %12 = icmp eq %struct.stliport* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.stliport*, %struct.stliport** %6, align 8
  %16 = getelementptr inbounds %struct.stliport, %struct.stliport* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @stli_nrbrds, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %63

21:                                               ; preds = %14
  %22 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %23 = load %struct.stliport*, %struct.stliport** %6, align 8
  %24 = getelementptr inbounds %struct.stliport, %struct.stliport* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %22, i64 %25
  %27 = load %struct.stlibrd*, %struct.stlibrd** %26, align 8
  store %struct.stlibrd* %27, %struct.stlibrd** %5, align 8
  %28 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %29 = icmp eq %struct.stlibrd* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %63

31:                                               ; preds = %21
  %32 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 12)
  %33 = load i8, i8* %4, align 1
  %34 = sext i8 %33 to i32
  %35 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %36 = call signext i8 @STOP_CHAR(%struct.tty_struct* %35)
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @CT_STOPFLOW, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  br label %58

42:                                               ; preds = %31
  %43 = load i8, i8* %4, align 1
  %44 = sext i8 %43 to i32
  %45 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %46 = call signext i8 @START_CHAR(%struct.tty_struct* %45)
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @CT_STARTFLOW, align 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  br label %57

52:                                               ; preds = %42
  %53 = load i32, i32* @CT_SENDCHR, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i8, i8* %4, align 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8 %55, i8* %56, align 4
  br label %57

57:                                               ; preds = %52, %49
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %60 = load %struct.stliport*, %struct.stliport** %6, align 8
  %61 = load i32, i32* @A_PORTCTRL, align 4
  %62 = call i32 @stli_cmdwait(%struct.stlibrd* %59, %struct.stliport* %60, i32 %61, %struct.TYPE_4__* %7, i32 12, i32 0)
  br label %63

63:                                               ; preds = %58, %30, %20, %13
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local signext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @stli_cmdwait(%struct.stlibrd*, %struct.stliport*, i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
