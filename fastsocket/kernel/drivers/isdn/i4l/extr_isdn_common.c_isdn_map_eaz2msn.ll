; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_map_eaz2msn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_map_eaz2msn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8** }

@dev = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @isdn_map_eaz2msn(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %22, 48
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 9
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %3, align 8
  br label %51

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %26, %18
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
