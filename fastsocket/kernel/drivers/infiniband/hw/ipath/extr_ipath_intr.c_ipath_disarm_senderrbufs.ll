; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_ipath_disarm_senderrbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_ipath_disarm_senderrbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ipath_debug = common dso_local global i32 0, align 4
@__IPATH_PKTDBG = common dso_local global i32 0, align 4
@__IPATH_DBG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"SendbufErrs %lx %lx\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" %lx %lx \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_disarm_senderrbufs(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i64], align 16
  %5 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %6 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %13, i64 %18)
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 %19, i64* %20, align 16
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %21, i64 %27)
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = icmp sgt i32 %30, 128
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 2
  %40 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %33, i64 %39)
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 %40, i64* %41, align 16
  br label %42

42:                                               ; preds = %32, %1
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %43, 192
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %48 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 3
  %53 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %46, i64 %52)
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 %53, i64* %54, align 8
  br label %57

55:                                               ; preds = %42
  %56 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %55, %45
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %59 = load i64, i64* %58, align 16
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = icmp sgt i32 %66, 128
  br i1 %67, label %68, label %136

68:                                               ; preds = %65
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %70 = load i64, i64* %69, align 16
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %136

76:                                               ; preds = %72, %68, %61, %57
  %77 = load i32, i32* @ipath_debug, align 4
  %78 = load i32, i32* @__IPATH_PKTDBG, align 4
  %79 = load i32, i32* @__IPATH_DBG, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %76
  %84 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %85 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @jiffies, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %83
  %90 = load i32, i32* @__IPATH_PKTDBG, align 4
  %91 = load i32, i32* @__IPATH_DBG, align 4
  %92 = or i32 %90, %91
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %94 = load i64, i64* %93, align 16
  %95 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @__IPATH_DBG_WHICH(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %94, i64 %96)
  %98 = load i32, i32* @ipath_debug, align 4
  %99 = load i32, i32* @__IPATH_PKTDBG, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %89
  %103 = load i32, i32* %3, align 4
  %104 = icmp sgt i32 %103, 128
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %107 = load i64, i64* %106, align 16
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %107, i64 %109)
  br label %111

111:                                              ; preds = %105, %102, %89
  %112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %83, %76
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %128, %113
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %3, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %121 = call i64 @test_bit(i32 %119, i64* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @ipath_disarm_piobufs(%struct.ipath_devdata* %124, i32 %125, i32 1)
  br label %127

127:                                              ; preds = %123, %118
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %114

131:                                              ; preds = %114
  %132 = load i64, i64* @jiffies, align 8
  %133 = add nsw i64 %132, 3
  %134 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %135 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %131, %72, %65
  ret void
}

declare dso_local i64 @ipath_read_kreg64(%struct.ipath_devdata*, i64) #1

declare dso_local i32 @__IPATH_DBG_WHICH(i32, i8*, i64, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @ipath_disarm_piobufs(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
