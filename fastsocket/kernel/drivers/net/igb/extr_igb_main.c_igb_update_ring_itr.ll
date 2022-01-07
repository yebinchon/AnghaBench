; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_update_ring_itr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_update_ring_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.igb_adapter* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.igb_adapter = type { i64, i32, i32 }

@SPEED_1000 = common dso_local global i64 0, align 8
@IGB_4K_ITR = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@IGB_20K_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_q_vector*)* @igb_update_ring_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_update_ring_itr(%struct.igb_q_vector* %0) #0 {
  %2 = alloca %struct.igb_q_vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %2, align 8
  %7 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %8 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %11 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %10, i32 0, i32 4
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  store %struct.igb_adapter* %12, %struct.igb_adapter** %5, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPEED_1000, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @IGB_4K_ITR, align 4
  store i32 %19, i32* %3, align 4
  br label %100

20:                                               ; preds = %1
  %21 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %22 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %29 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = udiv i32 %31, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %36 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i32, i32* @u32, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %45 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = udiv i32 %47, %48
  %50 = call i32 @max_t(i32 %42, i32 %43, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %41, %34
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %113

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 24
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @min(i32 %58, i32 3000)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 300
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 1200
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = sdiv i32 %66, 3
  store i32 %67, i32* %3, align 4
  br label %71

68:                                               ; preds = %62, %55
  %69 = load i32, i32* %4, align 4
  %70 = sdiv i32 %69, 2
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @IGB_20K_ITR, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %77 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %83 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %97, label %86

86:                                               ; preds = %81, %75
  %87 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %88 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %94 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %97, label %99

97:                                               ; preds = %92, %81
  %98 = load i32, i32* @IGB_20K_ITR, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %92, %86, %71
  br label %100

100:                                              ; preds = %99, %18
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %103 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %109 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %111 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %54
  %114 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %115 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %118 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %121 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %124 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  ret void
}

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
