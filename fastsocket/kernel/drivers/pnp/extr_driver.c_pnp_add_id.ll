; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_driver.c_pnp_add_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_driver.c_pnp_add_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_id = type { i8*, %struct.pnp_id* }
%struct.pnp_dev = type { %struct.pnp_id* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pnp_id* @pnp_add_id(%struct.pnp_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pnp_id*, align 8
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_id*, align 8
  %7 = alloca %struct.pnp_id*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pnp_id* @kzalloc(i32 16, i32 %8)
  store %struct.pnp_id* %9, %struct.pnp_id** %6, align 8
  %10 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %11 = icmp ne %struct.pnp_id* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.pnp_id* null, %struct.pnp_id** %3, align 8
  br label %107

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %18 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %16, i8* %20, align 1
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %25 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %23, i8* %27, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %32 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8 %30, i8* %34, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = call i8* @tolower(i8 signext %37)
  %39 = ptrtoint i8* %38 to i8
  %40 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %41 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  store i8 %39, i8* %43, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = load i8, i8* %45, align 1
  %47 = call i8* @tolower(i8 signext %46)
  %48 = ptrtoint i8* %47 to i8
  %49 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %50 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  store i8 %48, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 5
  %55 = load i8, i8* %54, align 1
  %56 = call i8* @tolower(i8 signext %55)
  %57 = ptrtoint i8* %56 to i8
  %58 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %59 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 5
  store i8 %57, i8* %61, align 1
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 6
  %64 = load i8, i8* %63, align 1
  %65 = call i8* @tolower(i8 signext %64)
  %66 = ptrtoint i8* %65 to i8
  %67 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %68 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 6
  store i8 %66, i8* %70, align 1
  %71 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %72 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 7
  store i8 0, i8* %74, align 1
  %75 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %76 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %75, i32 0, i32 1
  store %struct.pnp_id* null, %struct.pnp_id** %76, align 8
  %77 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %77, i32 0, i32 0
  %79 = load %struct.pnp_id*, %struct.pnp_id** %78, align 8
  store %struct.pnp_id* %79, %struct.pnp_id** %7, align 8
  br label %80

80:                                               ; preds = %90, %13
  %81 = load %struct.pnp_id*, %struct.pnp_id** %7, align 8
  %82 = icmp ne %struct.pnp_id* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.pnp_id*, %struct.pnp_id** %7, align 8
  %85 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %84, i32 0, i32 1
  %86 = load %struct.pnp_id*, %struct.pnp_id** %85, align 8
  %87 = icmp ne %struct.pnp_id* %86, null
  br label %88

88:                                               ; preds = %83, %80
  %89 = phi i1 [ false, %80 ], [ %87, %83 ]
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = load %struct.pnp_id*, %struct.pnp_id** %7, align 8
  %92 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %91, i32 0, i32 1
  %93 = load %struct.pnp_id*, %struct.pnp_id** %92, align 8
  store %struct.pnp_id* %93, %struct.pnp_id** %7, align 8
  br label %80

94:                                               ; preds = %88
  %95 = load %struct.pnp_id*, %struct.pnp_id** %7, align 8
  %96 = icmp ne %struct.pnp_id* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %99 = load %struct.pnp_id*, %struct.pnp_id** %7, align 8
  %100 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %99, i32 0, i32 1
  store %struct.pnp_id* %98, %struct.pnp_id** %100, align 8
  br label %105

101:                                              ; preds = %94
  %102 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  %103 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %104 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %103, i32 0, i32 0
  store %struct.pnp_id* %102, %struct.pnp_id** %104, align 8
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.pnp_id*, %struct.pnp_id** %6, align 8
  store %struct.pnp_id* %106, %struct.pnp_id** %3, align 8
  br label %107

107:                                              ; preds = %105, %12
  %108 = load %struct.pnp_id*, %struct.pnp_id** %3, align 8
  ret %struct.pnp_id* %108
}

declare dso_local %struct.pnp_id* @kzalloc(i32, i32) #1

declare dso_local i8* @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
