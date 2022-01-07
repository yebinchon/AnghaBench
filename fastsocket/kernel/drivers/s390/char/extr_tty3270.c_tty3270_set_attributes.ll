; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_set_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_set_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, i32*, i8, i8* }

@tty3270_set_attributes.f_colors = internal global [10 x i8] c"\86\83\85\80\87\84\82\81\00\86", align 1
@TAX_RESET = common dso_local global i8* null, align 8
@TAC_RESET = common dso_local global i8 0, align 1
@TAX_UNDER = common dso_local global i8* null, align 8
@TAX_BLINK = common dso_local global i8* null, align 8
@TAX_REVER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*)* @tty3270_set_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_set_attributes(%struct.tty3270* %0) #0 {
  %2 = alloca %struct.tty3270*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %81, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %8 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %6, %9
  br i1 %10, label %11, label %84

11:                                               ; preds = %5
  %12 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %13 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %80 [
    i32 0, label %20
    i32 4, label %27
    i32 5, label %31
    i32 7, label %35
    i32 24, label %39
    i32 25, label %50
    i32 27, label %61
    i32 30, label %72
    i32 31, label %72
    i32 32, label %72
    i32 33, label %72
    i32 34, label %72
    i32 35, label %72
    i32 36, label %72
    i32 37, label %72
    i32 39, label %72
  ]

20:                                               ; preds = %11
  %21 = load i8*, i8** @TAX_RESET, align 8
  %22 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %23 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i8, i8* @TAC_RESET, align 1
  %25 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %26 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %25, i32 0, i32 2
  store i8 %24, i8* %26, align 8
  br label %80

27:                                               ; preds = %11
  %28 = load i8*, i8** @TAX_UNDER, align 8
  %29 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %30 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  br label %80

31:                                               ; preds = %11
  %32 = load i8*, i8** @TAX_BLINK, align 8
  %33 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %34 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  br label %80

35:                                               ; preds = %11
  %36 = load i8*, i8** @TAX_REVER, align 8
  %37 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %38 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  br label %80

39:                                               ; preds = %11
  %40 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %41 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** @TAX_UNDER, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i8*, i8** @TAX_RESET, align 8
  %47 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %48 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  br label %80

50:                                               ; preds = %11
  %51 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %52 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** @TAX_BLINK, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i8*, i8** @TAX_RESET, align 8
  %58 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %59 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %50
  br label %80

61:                                               ; preds = %11
  %62 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %63 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** @TAX_REVER, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i8*, i8** @TAX_RESET, align 8
  %69 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %70 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  br label %80

72:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, 30
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x i8], [10 x i8]* @tty3270_set_attributes.f_colors, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %79 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %78, i32 0, i32 2
  store i8 %77, i8* %79, align 8
  br label %80

80:                                               ; preds = %11, %72, %71, %60, %49, %35, %31, %27, %20
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %5

84:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
