; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_starfire.c_starfire_translate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_starfire.c_starfire_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.starfire_irqinfo = type { i32, i64*, i32*, %struct.starfire_irqinfo* }

@sflist = common dso_local global %struct.starfire_irqinfo* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"XFIRE: Cannot find irqinfo for imap %016lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"starfire_translate: Are you kidding me?\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Lucy in the sky....\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @starfire_translate(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.starfire_irqinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = lshr i64 %8, 33
  %10 = and i64 %9, 127
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** @sflist, align 8
  store %struct.starfire_irqinfo* %12, %struct.starfire_irqinfo** %5, align 8
  br label %13

13:                                               ; preds = %24, %2
  %14 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %5, align 8
  %15 = icmp ne %struct.starfire_irqinfo* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %5, align 8
  %18 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %28

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %5, align 8
  %26 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %25, i32 0, i32 3
  %27 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %26, align 8
  store %struct.starfire_irqinfo* %27, %struct.starfire_irqinfo** %5, align 8
  br label %13

28:                                               ; preds = %22, %13
  %29 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %5, align 8
  %30 = icmp eq %struct.starfire_irqinfo* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @prom_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = call i32 (...) @prom_halt()
  br label %35

35:                                               ; preds = %31, %28
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp ult i32 %37, 32
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %5, align 8
  %41 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %39
  %50 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %5, align 8
  %51 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49, %39
  br label %63

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %36

63:                                               ; preds = %58, %36
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 32
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i64, i64* %3, align 8
  %71 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %5, align 8
  %72 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %70, i64* %76, align 8
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 60
  %79 = shl i32 %78, 1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 64
  %82 = lshr i32 %81, 4
  %83 = or i32 %79, %82
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 3
  %86 = or i32 %83, %85
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.starfire_irqinfo*, %struct.starfire_irqinfo** %5, align 8
  %89 = getelementptr inbounds %struct.starfire_irqinfo, %struct.starfire_irqinfo* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @upa_writel(i32 %87, i32 %94)
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @prom_printf(i8*, i64) #1

declare dso_local i32 @prom_halt(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @upa_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
