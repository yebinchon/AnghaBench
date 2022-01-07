; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_cc_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_cc_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32, i8*, i32 }
%struct.cc_workarea = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.property* (%struct.cc_workarea*)* @dlpar_parse_cc_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.property* @dlpar_parse_cc_property(%struct.cc_workarea* %0) #0 {
  %2 = alloca %struct.property*, align 8
  %3 = alloca %struct.cc_workarea*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.cc_workarea* %0, %struct.cc_workarea** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 24, i32 %7)
  %9 = bitcast i8* %8 to %struct.property*
  store %struct.property* %9, %struct.property** %4, align 8
  %10 = load %struct.property*, %struct.property** %4, align 8
  %11 = icmp ne %struct.property* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.property* null, %struct.property** %2, align 8
  br label %70

13:                                               ; preds = %1
  %14 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %15 = bitcast %struct.cc_workarea* %14 to i8*
  %16 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %17 = getelementptr inbounds %struct.cc_workarea, %struct.cc_workarea* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kstrdup(i8* %21, i32 %22)
  %24 = load %struct.property*, %struct.property** %4, align 8
  %25 = getelementptr inbounds %struct.property, %struct.property* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.property*, %struct.property** %4, align 8
  %27 = getelementptr inbounds %struct.property, %struct.property* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %13
  %31 = load %struct.property*, %struct.property** %4, align 8
  %32 = call i32 @dlpar_free_cc_property(%struct.property* %31)
  store %struct.property* null, %struct.property** %2, align 8
  br label %70

33:                                               ; preds = %13
  %34 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %35 = getelementptr inbounds %struct.cc_workarea, %struct.cc_workarea* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.property*, %struct.property** %4, align 8
  %38 = getelementptr inbounds %struct.property, %struct.property* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %40 = bitcast %struct.cc_workarea* %39 to i8*
  %41 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %42 = getelementptr inbounds %struct.cc_workarea, %struct.cc_workarea* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %6, align 8
  %46 = load %struct.property*, %struct.property** %4, align 8
  %47 = getelementptr inbounds %struct.property, %struct.property* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kzalloc(i32 %48, i32 %49)
  %51 = load %struct.property*, %struct.property** %4, align 8
  %52 = getelementptr inbounds %struct.property, %struct.property* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.property*, %struct.property** %4, align 8
  %54 = getelementptr inbounds %struct.property, %struct.property* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %33
  %58 = load %struct.property*, %struct.property** %4, align 8
  %59 = call i32 @dlpar_free_cc_property(%struct.property* %58)
  store %struct.property* null, %struct.property** %2, align 8
  br label %70

60:                                               ; preds = %33
  %61 = load %struct.property*, %struct.property** %4, align 8
  %62 = getelementptr inbounds %struct.property, %struct.property* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.property*, %struct.property** %4, align 8
  %66 = getelementptr inbounds %struct.property, %struct.property* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @memcpy(i8* %63, i8* %64, i32 %67)
  %69 = load %struct.property*, %struct.property** %4, align 8
  store %struct.property* %69, %struct.property** %2, align 8
  br label %70

70:                                               ; preds = %60, %57, %30, %12
  %71 = load %struct.property*, %struct.property** %2, align 8
  ret %struct.property* %71
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @dlpar_free_cc_property(%struct.property*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
