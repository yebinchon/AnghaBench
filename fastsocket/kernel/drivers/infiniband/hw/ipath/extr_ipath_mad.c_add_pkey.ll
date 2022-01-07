; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_add_pkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_add_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.ipath_devdata = type { i32*, i32* }

@EEXIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ipath_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32)* @add_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pkey(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 32767
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 32767
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %134

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %79, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %82

22:                                               ; preds = %15
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %79

34:                                               ; preds = %22
  %35 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %34
  %45 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %46 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @atomic_inc_return(i32* %50)
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %134

54:                                               ; preds = %44
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @atomic_dec(i32* %60)
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %54, %34
  %65 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %66 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 32767
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @EEXIST, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %134

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %31
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %15

82:                                               ; preds = %15
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %134

88:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %128, %88
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %92 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @ARRAY_SIZE(i32* %93)
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %131

96:                                               ; preds = %89
  %97 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %98 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %127, label %105

105:                                              ; preds = %96
  %106 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %107 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i32 @atomic_inc_return(i32* %111)
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %127

114:                                              ; preds = %105
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %122 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %120, i32* %126, align 4
  store i32 1, i32* %8, align 4
  br label %134

127:                                              ; preds = %105, %96
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %89

131:                                              ; preds = %89
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %114, %85, %75, %53, %13
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
