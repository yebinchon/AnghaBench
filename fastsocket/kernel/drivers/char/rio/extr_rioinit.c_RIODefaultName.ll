; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioinit.c_RIODefaultName.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioinit.c_RIODefaultName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_info = type { %struct.Host* }
%struct.Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"UNKNOWN RTA X-XX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIODefaultName(%struct.rio_info* %0, %struct.Host* %1, i32 %2) #0 {
  %4 = alloca %struct.rio_info*, align 8
  %5 = alloca %struct.Host*, align 8
  %6 = alloca i32, align 4
  store %struct.rio_info* %0, %struct.rio_info** %4, align 8
  store %struct.Host* %1, %struct.Host** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.Host*, %struct.Host** %5, align 8
  %8 = getelementptr inbounds %struct.Host, %struct.Host* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @memcpy(i32* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 17)
  %16 = load %struct.Host*, %struct.Host** %5, align 8
  %17 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %18 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %17, i32 0, i32 0
  %19 = load %struct.Host*, %struct.Host** %18, align 8
  %20 = ptrtoint %struct.Host* %16 to i64
  %21 = ptrtoint %struct.Host* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = add nsw i64 49, %23
  %25 = trunc i64 %24 to i32
  %26 = load %struct.Host*, %struct.Host** %5, align 8
  %27 = getelementptr inbounds %struct.Host, %struct.Host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 12
  store i32 %25, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  %37 = icmp ugt i32 %36, 9
  br i1 %37, label %38, label %65

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  %41 = udiv i32 %40, 10
  %42 = add i32 48, %41
  %43 = load %struct.Host*, %struct.Host** %5, align 8
  %44 = getelementptr inbounds %struct.Host, %struct.Host* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 14
  store i32 %42, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  %54 = urem i32 %53, 10
  %55 = add i32 48, %54
  %56 = load %struct.Host*, %struct.Host** %5, align 8
  %57 = getelementptr inbounds %struct.Host, %struct.Host* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 15
  store i32 %55, i32* %64, align 4
  br label %86

65:                                               ; preds = %3
  %66 = load i32, i32* %6, align 4
  %67 = add i32 49, %66
  %68 = load %struct.Host*, %struct.Host** %5, align 8
  %69 = getelementptr inbounds %struct.Host, %struct.Host* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 14
  store i32 %67, i32* %76, align 4
  %77 = load %struct.Host*, %struct.Host** %5, align 8
  %78 = getelementptr inbounds %struct.Host, %struct.Host* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 15
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %65, %38
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
