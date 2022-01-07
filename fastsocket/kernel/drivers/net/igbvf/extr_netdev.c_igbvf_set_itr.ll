; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_set_itr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_set_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@lowest_latency = common dso_local global i64 0, align 8
@low_latency = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*)* @igbvf_set_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_set_itr(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %6 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %7 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %7, i32 0, i32 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @igbvf_update_itr(%struct.igbvf_adapter* %6, i64 %11, i32 %14, i32 %17)
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 %19, i64* %23, align 8
  %24 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %43

28:                                               ; preds = %1
  %29 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @lowest_latency, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i8*, i8** @low_latency, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %28, %1
  %44 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @igbvf_range_to_itr(i64 %48)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %51, i32 0, i32 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %43
  %58 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %58, i32 0, i32 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %3, align 8
  %69 = ashr i64 %68, 2
  %70 = add nsw i64 %67, %69
  %71 = load i64, i64* %3, align 8
  %72 = call i64 @min(i64 %70, i64 %71)
  br label %75

73:                                               ; preds = %57
  %74 = load i64, i64* %3, align 8
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi i64 [ %72, %66 ], [ %74, %73 ]
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %78, i32 0, i32 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i64 %77, i64* %81, align 8
  %82 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %82, i32 0, i32 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %75, %43
  %87 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %88 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @igbvf_update_itr(%struct.igbvf_adapter* %87, i64 %92, i32 %95, i32 %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 %100, i64* %104, align 8
  %105 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %124

109:                                              ; preds = %86
  %110 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %111 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @lowest_latency, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load i8*, i8** @low_latency, align 8
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i64 %119, i64* %123, align 8
  br label %124

124:                                              ; preds = %117, %109, %86
  %125 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %126 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @igbvf_range_to_itr(i64 %129)
  store i64 %130, i64* %3, align 8
  %131 = load i64, i64* %3, align 8
  %132 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %133 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %131, %136
  br i1 %137, label %138, label %167

138:                                              ; preds = %124
  %139 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %140 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %5, align 8
  %144 = load i64, i64* %3, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %138
  %148 = load i64, i64* %5, align 8
  %149 = load i64, i64* %3, align 8
  %150 = ashr i64 %149, 2
  %151 = add nsw i64 %148, %150
  %152 = load i64, i64* %3, align 8
  %153 = call i64 @min(i64 %151, i64 %152)
  br label %156

154:                                              ; preds = %138
  %155 = load i64, i64* %3, align 8
  br label %156

156:                                              ; preds = %154, %147
  %157 = phi i64 [ %153, %147 ], [ %155, %154 ]
  store i64 %157, i64* %3, align 8
  %158 = load i64, i64* %3, align 8
  %159 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %160 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  store i64 %158, i64* %162, align 8
  %163 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %164 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %156, %124
  ret void
}

declare dso_local i8* @igbvf_update_itr(%struct.igbvf_adapter*, i64, i32, i32) #1

declare dso_local i64 @igbvf_range_to_itr(i64) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
