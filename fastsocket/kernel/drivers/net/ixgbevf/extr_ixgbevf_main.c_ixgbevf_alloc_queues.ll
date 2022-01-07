; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_alloc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_alloc_queues(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %5 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kcalloc(i32 %7, i32 4, i32 %8)
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %11, i32 0, i32 2
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %12, align 8
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %154

18:                                               ; preds = %1
  %19 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kcalloc(i32 %21, i32 4, i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_5__*
  %25 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %25, i32 0, i32 4
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %149

32:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %87, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %33
  %40 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  store i32 %42, i32* %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %58, i32* %65, align 4
  %66 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %66, i32 0, i32 5
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i32* %69, i32** %76, align 8
  %77 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 %79, i32* %86, align 8
  br label %87

87:                                               ; preds = %39
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %33

90:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %145, %90
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %148

97:                                               ; preds = %91
  %98 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %101, i32 0, i32 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  store i32 %100, i32* %107, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %109, i32 0, i32 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %108, i32* %115, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %117, i32 0, i32 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i32 %116, i32* %123, align 4
  %124 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %124, i32 0, i32 5
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %128, i32 0, i32 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  store i32* %127, i32** %134, align 8
  %135 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %138, i32 0, i32 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  store i32 %137, i32* %144, align 8
  br label %145

145:                                              ; preds = %97
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %91

148:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %157

149:                                              ; preds = %31
  %150 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = call i32 @kfree(%struct.TYPE_6__* %152)
  br label %154

154:                                              ; preds = %149, %17
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %154, %148
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
