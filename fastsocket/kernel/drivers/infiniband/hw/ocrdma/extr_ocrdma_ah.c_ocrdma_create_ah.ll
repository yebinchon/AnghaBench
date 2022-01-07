; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_ocrdma_create_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_ocrdma_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32, i32 }
%struct.ocrdma_ah = type { %struct.ib_ah, i32, %struct.ocrdma_dev* }
%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_pd = type { %struct.TYPE_4__*, i32, %struct.ocrdma_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@IB_AH_GRH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ah* @ocrdma_create_ah(%struct.ib_pd* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_ah*, align 8
  %9 = alloca %struct.ocrdma_pd*, align 8
  %10 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %12 = call %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd* %11)
  store %struct.ocrdma_pd* %12, %struct.ocrdma_pd** %9, align 8
  %13 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %14 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %13, i32 0, i32 2
  %15 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %14, align 8
  store %struct.ocrdma_dev* %15, %struct.ocrdma_dev** %10, align 8
  %16 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %17 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IB_AH_GRH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ib_ah* @ERR_PTR(i32 %24)
  store %struct.ib_ah* %25, %struct.ib_ah** %3, align 8
  br label %98

26:                                               ; preds = %2
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.ocrdma_ah* @kzalloc(i32 16, i32 %27)
  store %struct.ocrdma_ah* %28, %struct.ocrdma_ah** %8, align 8
  %29 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %30 = icmp ne %struct.ocrdma_ah* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ib_ah* @ERR_PTR(i32 %33)
  store %struct.ib_ah* %34, %struct.ib_ah** %3, align 8
  br label %98

35:                                               ; preds = %26
  %36 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %37 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %36, i32 0, i32 2
  %38 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %37, align 8
  %39 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %40 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %39, i32 0, i32 2
  store %struct.ocrdma_dev* %38, %struct.ocrdma_dev** %40, align 8
  %41 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %42 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %43 = call i32 @ocrdma_alloc_av(%struct.ocrdma_dev* %41, %struct.ocrdma_ah* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %93

47:                                               ; preds = %35
  %48 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %49 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %50 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %51 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @set_av_attr(%struct.ocrdma_ah* %48, %struct.ib_ah_attr* %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %89

57:                                               ; preds = %47
  %58 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %59 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %64 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  %71 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %72 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %78 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32* %81, i32** %6, align 8
  %82 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %83 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %70, %62, %57
  %87 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %88 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %87, i32 0, i32 0
  store %struct.ib_ah* %88, %struct.ib_ah** %3, align 8
  br label %98

89:                                               ; preds = %56
  %90 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %91 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %92 = call i32 @ocrdma_free_av(%struct.ocrdma_dev* %90, %struct.ocrdma_ah* %91)
  br label %93

93:                                               ; preds = %89, %46
  %94 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %95 = call i32 @kfree(%struct.ocrdma_ah* %94)
  %96 = load i32, i32* %7, align 4
  %97 = call %struct.ib_ah* @ERR_PTR(i32 %96)
  store %struct.ib_ah* %97, %struct.ib_ah** %3, align 8
  br label %98

98:                                               ; preds = %93, %86, %31, %22
  %99 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  ret %struct.ib_ah* %99
}

declare dso_local %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd*) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local %struct.ocrdma_ah* @kzalloc(i32, i32) #1

declare dso_local i32 @ocrdma_alloc_av(%struct.ocrdma_dev*, %struct.ocrdma_ah*) #1

declare dso_local i32 @set_av_attr(%struct.ocrdma_ah*, %struct.ib_ah_attr*, i32) #1

declare dso_local i32 @ocrdma_free_av(%struct.ocrdma_dev*, %struct.ocrdma_ah*) #1

declare dso_local i32 @kfree(%struct.ocrdma_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
