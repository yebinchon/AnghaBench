; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_timer.c_sc_check_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_timer.c_sc_check_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64, i64, i32* }

@.str = private unnamed_addr constant [30 x i8] c"%s: check_timer timer called\0A\00", align 1
@sc_adapter = common dso_local global %struct.TYPE_2__** null, align 8
@SIG_OFFSET = common dso_local global i64 0, align 8
@SIGNATURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: No signature yet, waiting another %lu jiffies.\0A\00", align 1
@CHECKRESET_TIME = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_check_reset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @setup_ports(i32 %16)
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = ashr i32 %48, 14
  %50 = or i32 %49, 128
  %51 = call i32 @outb(i32 %41, i32 %50)
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SIG_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = inttoptr i64 %60 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @SIGNATURE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %1
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @flushreadfifo(i32 %67)
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %77, i64 %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %66
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @startproc(i32 %86)
  br label %88

88:                                               ; preds = %85, %66
  br label %117

89:                                               ; preds = %1
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* @CHECKRESET_TIME, align 8
  %98 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %96, i64 %97)
  %99 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %99, i64 %101
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i64, i64* @jiffies, align 8
  %106 = load i64, i64* @CHECKRESET_TIME, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @mod_timer(i32* %104, i64 %107)
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sc_adapter, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 %111
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i64, i64* %3, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  br label %117

117:                                              ; preds = %89, %88
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @setup_ports(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @flushreadfifo(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @startproc(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
