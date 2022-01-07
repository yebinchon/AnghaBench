; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_aib_follows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_aib_follows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_aib = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@etr_lpsc_operational_step = common dso_local global i32 0, align 4
@etr_lpsc_pps_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etr_aib*, %struct.etr_aib*, i32)* @etr_aib_follows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etr_aib_follows(%struct.etr_aib* %0, %struct.etr_aib* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.etr_aib*, align 8
  %6 = alloca %struct.etr_aib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.etr_aib* %0, %struct.etr_aib** %5, align 8
  store %struct.etr_aib* %1, %struct.etr_aib** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.etr_aib*, %struct.etr_aib** %5, align 8
  %11 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.etr_aib*, %struct.etr_aib** %6, align 8
  %16 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %3
  %22 = load %struct.etr_aib*, %struct.etr_aib** %5, align 8
  %23 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.etr_aib*, %struct.etr_aib** %6, align 8
  %28 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21, %3
  store i32 0, i32* %4, align 4
  br label %127

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.etr_aib*, %struct.etr_aib** %5, align 8
  %39 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  br label %47

42:                                               ; preds = %34
  %43 = load %struct.etr_aib*, %struct.etr_aib** %5, align 8
  %44 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i32 [ %41, %37 ], [ %46, %42 ]
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.etr_aib*, %struct.etr_aib** %6, align 8
  %53 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  br label %61

56:                                               ; preds = %47
  %57 = load %struct.etr_aib*, %struct.etr_aib** %6, align 8
  %58 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i32 [ %55, %51 ], [ %60, %56 ]
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @etr_lpsc_operational_step, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @etr_lpsc_operational_step, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %100, label %70

70:                                               ; preds = %66
  %71 = load %struct.etr_aib*, %struct.etr_aib** %5, align 8
  %72 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.etr_aib*, %struct.etr_aib** %6, align 8
  %76 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %100, label %80

80:                                               ; preds = %70
  %81 = load %struct.etr_aib*, %struct.etr_aib** %5, align 8
  %82 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.etr_aib*, %struct.etr_aib** %6, align 8
  %86 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %100, label %90

90:                                               ; preds = %80
  %91 = load %struct.etr_aib*, %struct.etr_aib** %5, align 8
  %92 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.etr_aib*, %struct.etr_aib** %6, align 8
  %96 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90, %80, %70, %66
  store i32 0, i32* %4, align 4
  br label %127

101:                                              ; preds = %90
  br label %108

102:                                              ; preds = %61
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @etr_lpsc_pps_mode, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %127

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %101
  %109 = load %struct.etr_aib*, %struct.etr_aib** %5, align 8
  %110 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  %114 = load %struct.etr_aib*, %struct.etr_aib** %6, align 8
  %115 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %113, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %127

120:                                              ; preds = %108
  %121 = load %struct.etr_aib*, %struct.etr_aib** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @etr_port_valid(%struct.etr_aib* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %127

126:                                              ; preds = %120
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %125, %119, %106, %100, %33
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @etr_port_valid(%struct.etr_aib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
