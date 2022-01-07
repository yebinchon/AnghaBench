; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i64, i32, %struct.stliport** }
%struct.stliport = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s: version %s\0A\00", align 1
@stli_drvtitle = common dso_local global i32 0, align 4
@stli_drvversion = common dso_local global i32 0, align 4
@stli_nrbrds = common dso_local global i32 0, align 4
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@STL_MAXPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @stli_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stli_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stlibrd*, align 8
  %6 = alloca %struct.stliport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load i32, i32* @stli_drvtitle, align 4
  %12 = load i32, i32* @stli_drvversion, align 4
  %13 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %66, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @stli_nrbrds, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %14
  %19 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %19, i64 %21
  %23 = load %struct.stlibrd*, %struct.stlibrd** %22, align 8
  store %struct.stlibrd* %23, %struct.stlibrd** %5, align 8
  %24 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %25 = icmp eq %struct.stlibrd* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %66

27:                                               ; preds = %18
  %28 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %29 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %66

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @STL_MAXPORTS, align 4
  %36 = mul i32 %34, %35
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %60, %33
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %40 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %45 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %44, i32 0, i32 2
  %46 = load %struct.stliport**, %struct.stliport*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.stliport*, %struct.stliport** %46, i64 %48
  %50 = load %struct.stliport*, %struct.stliport** %49, align 8
  store %struct.stliport* %50, %struct.stliport** %6, align 8
  %51 = load %struct.stliport*, %struct.stliport** %6, align 8
  %52 = icmp eq %struct.stliport* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %60

54:                                               ; preds = %43
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.stlibrd*, %struct.stlibrd** %5, align 8
  %57 = load %struct.stliport*, %struct.stliport** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @stli_portinfo(%struct.seq_file* %55, %struct.stlibrd* %56, %struct.stliport* %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %53
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %37

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %65, %32, %26
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %14

69:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32 @stli_portinfo(%struct.seq_file*, %struct.stlibrd*, %struct.stliport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
