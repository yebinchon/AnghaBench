; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sermouse.c_sermouse_process_msc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sermouse.c_sermouse_process_msc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sermouse = type { i8*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sermouse*, i8)* @sermouse_process_msc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sermouse_process_msc(%struct.sermouse* %0, i8 signext %1) #0 {
  %3 = alloca %struct.sermouse*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  store %struct.sermouse* %0, %struct.sermouse** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.sermouse*, %struct.sermouse** %3, align 8
  %8 = getelementptr inbounds %struct.sermouse, %struct.sermouse* %7, i32 0, i32 2
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load %struct.sermouse*, %struct.sermouse** %3, align 8
  %11 = getelementptr inbounds %struct.sermouse, %struct.sermouse* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.sermouse*, %struct.sermouse** %3, align 8
  %14 = getelementptr inbounds %struct.sermouse, %struct.sermouse* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %100 [
    i32 0, label %16
    i32 1, label %50
    i32 3, label %50
    i32 2, label %76
    i32 4, label %76
  ]

16:                                               ; preds = %2
  %17 = load i8, i8* %4, align 1
  %18 = sext i8 %17 to i32
  %19 = and i32 %18, 248
  %20 = icmp ne i32 %19, 128
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %111

22:                                               ; preds = %16
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = load i32, i32* @BTN_LEFT, align 4
  %25 = load i8, i8* %4, align 1
  %26 = sext i8 %25 to i32
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @input_report_key(%struct.input_dev* %23, i32 %24, i32 %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %33 = load i32, i32* @BTN_RIGHT, align 4
  %34 = load i8, i8* %4, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @input_report_key(%struct.input_dev* %32, i32 %33, i32 %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = load i32, i32* @BTN_MIDDLE, align 4
  %43 = load i8, i8* %4, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 2
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @input_report_key(%struct.input_dev* %41, i32 %42, i32 %48)
  br label %100

50:                                               ; preds = %2, %2
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = load i32, i32* @REL_X, align 4
  %53 = load i8, i8* %4, align 1
  %54 = sext i8 %53 to i32
  %55 = sdiv i32 %54, 2
  %56 = trunc i32 %55 to i8
  %57 = call i32 @input_report_rel(%struct.input_dev* %51, i32 %52, i8 signext %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = load i32, i32* @REL_Y, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = sub nsw i32 0, %63
  %65 = trunc i32 %64 to i8
  %66 = call i32 @input_report_rel(%struct.input_dev* %58, i32 %59, i8 signext %65)
  %67 = load i8, i8* %4, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %4, align 1
  %70 = sext i8 %69 to i32
  %71 = sdiv i32 %70, 2
  %72 = sub nsw i32 %68, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 %73, i8* %75, align 1
  br label %100

76:                                               ; preds = %2, %2
  %77 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %78 = load i32, i32* @REL_X, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @input_report_rel(%struct.input_dev* %77, i32 %78, i8 signext %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %84 = load i32, i32* @REL_Y, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* %4, align 1
  %90 = sext i8 %89 to i32
  %91 = sub nsw i32 %88, %90
  %92 = trunc i32 %91 to i8
  %93 = call i32 @input_report_rel(%struct.input_dev* %83, i32 %84, i8 signext %92)
  %94 = load i8, i8* %4, align 1
  %95 = sext i8 %94 to i32
  %96 = sdiv i32 %95, 2
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8 %97, i8* %99, align 1
  br label %100

100:                                              ; preds = %2, %76, %50, %22
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = call i32 @input_sync(%struct.input_dev* %101)
  %103 = load %struct.sermouse*, %struct.sermouse** %3, align 8
  %104 = getelementptr inbounds %struct.sermouse, %struct.sermouse* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = icmp eq i32 %106, 5
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.sermouse*, %struct.sermouse** %3, align 8
  %110 = getelementptr inbounds %struct.sermouse, %struct.sermouse* %109, i32 0, i32 1
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %21, %108, %100
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 signext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
