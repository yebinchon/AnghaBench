; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_add_function_prop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_add_function_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_device = type { i32, i32 }
%struct.pmf_function = type { i8*, i8**, i32, i32, i8*, i8*, %struct.pmf_device*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"pmf: Adding functions for platform-do-%s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"pmf: idx %d: flags=%08x, phandle=%08x  %d bytes remaining, parsing...\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"pmf: Added %d functions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmf_device*, i8*, i8*, i8**, i32)* @pmf_add_function_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmf_add_function_prop(%struct.pmf_device* %0, i8* %1, i8* %2, i8** %3, i32 %4) #0 {
  %6 = alloca %struct.pmf_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pmf_function*, align 8
  store %struct.pmf_device* %0, %struct.pmf_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.pmf_function* null, %struct.pmf_function** %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %81, %5
  %16 = load i32, i32* %10, align 4
  %17 = icmp uge i32 %16, 12
  br i1 %17, label %18, label %104

18:                                               ; preds = %15
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.pmf_function* @kzalloc(i32 72, i32 %19)
  store %struct.pmf_function* %20, %struct.pmf_function** %12, align 8
  %21 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %22 = icmp eq %struct.pmf_function* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %105

24:                                               ; preds = %18
  %25 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %26 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %25, i32 0, i32 10
  %27 = call i32 @kref_init(i32* %26)
  %28 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %29 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %28, i32 0, i32 9
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.pmf_device*, %struct.pmf_device** %6, align 8
  %32 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %35 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %38 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %41 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i8**, i8*** %9, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %46 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i8**, i8*** %9, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %51 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i8**, i8*** %9, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  store i8** %53, i8*** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sub i32 %54, 8
  store i32 %55, i32* %10, align 4
  %56 = load i8**, i8*** %9, align 8
  %57 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %58 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %57, i32 0, i32 1
  store i8** %56, i8*** %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %61 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.pmf_device*, %struct.pmf_device** %6, align 8
  %63 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %64 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %63, i32 0, i32 6
  store %struct.pmf_device* %62, %struct.pmf_device** %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %68 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %71 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %69, i8* %72, i32 %73)
  %75 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %76 = call i64 @pmf_parse_one(%struct.pmf_function* %75, i32* null, i32* null, i32* null)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %24
  %79 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %80 = call i32 @kfree(%struct.pmf_function* %79)
  br label %105

81:                                               ; preds = %24
  %82 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %83 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load i8**, i8*** %9, align 8
  %88 = bitcast i8** %87 to i32*
  %89 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %90 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = bitcast i32* %93 to i8**
  store i8** %94, i8*** %9, align 8
  %95 = load %struct.pmf_function*, %struct.pmf_function** %12, align 8
  %96 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %95, i32 0, i32 3
  %97 = load %struct.pmf_device*, %struct.pmf_device** %6, align 8
  %98 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %97, i32 0, i32 0
  %99 = call i32 @list_add(i32* %96, i32* %98)
  %100 = load %struct.pmf_device*, %struct.pmf_device** %6, align 8
  %101 = call i32 @pmf_get_device(%struct.pmf_device* %100)
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %15

104:                                              ; preds = %15
  br label %105

105:                                              ; preds = %104, %78, %23
  %106 = load i32, i32* %11, align 4
  %107 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local %struct.pmf_function* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @pmf_parse_one(%struct.pmf_function*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.pmf_function*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pmf_get_device(%struct.pmf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
