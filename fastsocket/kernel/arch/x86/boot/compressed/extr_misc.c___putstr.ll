; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_misc.c___putstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/compressed/extr_misc.c___putstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }

@real_mode = common dso_local global %struct.TYPE_4__* null, align 8
@lines = common dso_local global i32 0, align 4
@vidmem = common dso_local global i8* null, align 8
@cols = common dso_local global i32 0, align 4
@vidport = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @__putstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__putstr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %99

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @real_mode, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @real_mode, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %67, %12
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  %24 = load i8, i8* %22, align 1
  store i8 %24, i8* %8, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %21
  %28 = load i8, i8* %8, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @lines, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 (...) @scroll()
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %31
  br label %67

41:                                               ; preds = %27
  %42 = load i8, i8* %8, align 1
  %43 = load i8*, i8** @vidmem, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @cols, align 4
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  %49 = mul nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %43, i64 %50
  store i8 %42, i8* %51, align 1
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @cols, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @lines, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = call i32 (...) @scroll()
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %40
  br label %21

68:                                               ; preds = %21
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @real_mode, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @real_mode, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @cols, align 4
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %77, %80
  %82 = mul nsw i32 %81, 2
  store i32 %82, i32* %7, align 4
  %83 = load i64, i64* @vidport, align 8
  %84 = call i32 @outb(i32 14, i64 %83)
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %85, 9
  %87 = and i32 255, %86
  %88 = load i64, i64* @vidport, align 8
  %89 = add nsw i64 %88, 1
  %90 = call i32 @outb(i32 %87, i64 %89)
  %91 = load i64, i64* @vidport, align 8
  %92 = call i32 @outb(i32 15, i64 %91)
  %93 = load i32, i32* %7, align 4
  %94 = ashr i32 %93, 1
  %95 = and i32 255, %94
  %96 = load i64, i64* @vidport, align 8
  %97 = add nsw i64 %96, 1
  %98 = call i32 @outb(i32 %95, i64 %97)
  br label %99

99:                                               ; preds = %68, %11
  ret void
}

declare dso_local i32 @scroll(...) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
