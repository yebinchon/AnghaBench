; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_rfd_ftl.c_reclaim_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_rfd_ftl.c_reclaim_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"reclaim_block: reclaiming block #%d with %d used %d free sectors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.partition*, i32*)* @reclaim_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reclaim_block(%struct.partition* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.partition*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.partition* %0, %struct.partition** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.partition*, %struct.partition** %4, align 8
  %13 = getelementptr inbounds %struct.partition, %struct.partition* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_6__*)* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.partition*, %struct.partition** %4, align 8
  %21 = getelementptr inbounds %struct.partition, %struct.partition* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %24, align 8
  %26 = load %struct.partition*, %struct.partition** %4, align 8
  %27 = getelementptr inbounds %struct.partition, %struct.partition* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call i32 %25(%struct.TYPE_6__* %29)
  br label %31

31:                                               ; preds = %19, %2
  store i32 2147483647, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.partition*, %struct.partition** %4, align 8
  %39 = getelementptr inbounds %struct.partition, %struct.partition* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %37, %40
  store i32 %41, i32* %9, align 4
  br label %43

42:                                               ; preds = %31
  store i32 -1, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %35
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %118, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.partition*, %struct.partition** %4, align 8
  %47 = getelementptr inbounds %struct.partition, %struct.partition* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %121

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.partition*, %struct.partition** %4, align 8
  %53 = getelementptr inbounds %struct.partition, %struct.partition* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %118

57:                                               ; preds = %50
  %58 = load %struct.partition*, %struct.partition** %4, align 8
  %59 = getelementptr inbounds %struct.partition, %struct.partition* %58, i32 0, i32 5
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %171

68:                                               ; preds = %57
  %69 = load %struct.partition*, %struct.partition** %4, align 8
  %70 = getelementptr inbounds %struct.partition, %struct.partition* %69, i32 0, i32 5
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %11, align 4
  br label %98

83:                                               ; preds = %68
  %84 = load %struct.partition*, %struct.partition** %4, align 8
  %85 = getelementptr inbounds %struct.partition, %struct.partition* %84, i32 0, i32 5
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.partition*, %struct.partition** %4, align 8
  %93 = getelementptr inbounds %struct.partition, %struct.partition* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %118

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %80
  %99 = load %struct.partition*, %struct.partition** %4, align 8
  %100 = getelementptr inbounds %struct.partition, %struct.partition* %99, i32 0, i32 5
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %98
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %114, %98
  br label %118

118:                                              ; preds = %117, %96, %56
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %44

121:                                              ; preds = %44
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @ENOSPC, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %171

127:                                              ; preds = %121
  %128 = load %struct.partition*, %struct.partition** %4, align 8
  %129 = getelementptr inbounds %struct.partition, %struct.partition* %128, i32 0, i32 4
  store i32 -1, i32* %129, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.partition*, %struct.partition** %4, align 8
  %132 = getelementptr inbounds %struct.partition, %struct.partition* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.partition*, %struct.partition** %4, align 8
  %135 = getelementptr inbounds %struct.partition, %struct.partition* %134, i32 0, i32 5
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.partition*, %struct.partition** %4, align 8
  %143 = getelementptr inbounds %struct.partition, %struct.partition* %142, i32 0, i32 5
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %141, i64 %149)
  %151 = load %struct.partition*, %struct.partition** %4, align 8
  %152 = getelementptr inbounds %struct.partition, %struct.partition* %151, i32 0, i32 5
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %127
  %161 = load %struct.partition*, %struct.partition** %4, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @move_block_contents(%struct.partition* %161, i32 %162, i32* %163)
  store i32 %164, i32* %10, align 4
  br label %169

165:                                              ; preds = %127
  %166 = load %struct.partition*, %struct.partition** %4, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @erase_block(%struct.partition* %166, i32 %167)
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %165, %160
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %124, %67
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @move_block_contents(%struct.partition*, i32, i32*) #1

declare dso_local i32 @erase_block(%struct.partition*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
