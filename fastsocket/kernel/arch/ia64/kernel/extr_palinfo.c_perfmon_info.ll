; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_palinfo.c_perfmon_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_palinfo.c_perfmon_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [178 x i8] c"PMC/PMD pairs                 : %d\0ACounter width                 : %d bits\0ACycle event number            : %d\0ARetired event number          : %d\0AImplemented PMC               : \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\0AImplemented PMD               : \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\0ACycles count capable          : \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\0ARetired bundles count capable : \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @perfmon_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perfmon_info(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %4, align 8
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %9 = call i64 @ia64_pal_perf_mon_info(i32* %8, %struct.TYPE_5__* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %32 = call i8* @bitregister_process(i8* %30, i32* %31, i32 256)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %4, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = call i8* @bitregister_process(i8* %38, i32* %40, i32 256)
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i8*, i8** %4, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = call i8* @bitregister_process(i8* %47, i32* %49, i32 256)
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i8*, i8** %4, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %58 = getelementptr inbounds i32, i32* %57, i64 12
  %59 = call i8* @bitregister_process(i8* %56, i32* %58, i32 256)
  store i8* %59, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i8*, i8** %4, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %4, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %12, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @ia64_pal_perf_mon_info(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @bitregister_process(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
