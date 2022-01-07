; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_io.c_wlcore_translate_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_io.c_wlcore_translate_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.wlcore_partition_set }
%struct.wlcore_partition_set = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"HW address 0x%x out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_translate_addr(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wlcore_partition_set*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 0
  store %struct.wlcore_partition_set* %8, %struct.wlcore_partition_set** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %11 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %9, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %18 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %22 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %20, %24
  %26 = icmp slt i32 %16, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %30 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %28, %32
  store i32 %33, i32* %3, align 4
  br label %148

34:                                               ; preds = %15, %2
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %37 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %35, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %44 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %48 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %46, %50
  %52 = icmp slt i32 %42, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %41
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %56 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %54, %58
  %60 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %61 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %3, align 4
  br label %148

65:                                               ; preds = %41, %34
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %68 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %66, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %75 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %79 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %77, %81
  %83 = icmp slt i32 %73, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %72
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %87 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %85, %89
  %91 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %92 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %90, %94
  %96 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %97 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %95, %99
  store i32 %100, i32* %3, align 4
  br label %148

101:                                              ; preds = %72, %65
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %104 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %102, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %101
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %111 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %115 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %113, %117
  %119 = icmp slt i32 %109, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %108
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %123 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %121, %125
  %127 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %128 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %126, %130
  %132 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %133 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %131, %135
  %137 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %6, align 8
  %138 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %136, %140
  store i32 %141, i32* %3, align 4
  br label %148

142:                                              ; preds = %108, %101
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %145, %120, %84, %53, %27
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
