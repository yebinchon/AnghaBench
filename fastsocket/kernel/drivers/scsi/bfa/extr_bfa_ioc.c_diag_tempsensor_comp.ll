; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_tempsensor_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_tempsensor_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 (i32, i64)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, i8*, i8* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_diag_s*, %struct.TYPE_7__*)* @diag_tempsensor_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diag_tempsensor_comp(%struct.bfa_diag_s* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.bfa_diag_s*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.bfa_diag_s* %0, %struct.bfa_diag_s** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %12 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @bfa_trc(%struct.bfa_diag_s* %11, i64 %15)
  br label %124

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @be16_to_cpu(i64 %20)
  %22 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i8* %21, i8** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %29, i64* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 %37, i64* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %17
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i64 %50, i64* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BFA_STATUS_OK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %47
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @be16_to_cpu(i64 %64)
  %66 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  store i8* %65, i8** %70, align 8
  br label %77

71:                                               ; preds = %47
  %72 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i8* null, i8** %76, align 8
  br label %77

77:                                               ; preds = %71, %61
  br label %78

78:                                               ; preds = %77, %17
  %79 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @bfa_trc(%struct.bfa_diag_s* %79, i64 %82)
  %84 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @bfa_trc(%struct.bfa_diag_s* %84, i64 %87)
  %89 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @bfa_trc(%struct.bfa_diag_s* %89, i64 %92)
  %94 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @bfa_trc(%struct.bfa_diag_s* %94, i64 %97)
  %99 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @bfa_trc(%struct.bfa_diag_s* %99, i64 %102)
  %104 = load i64, i64* @BFA_STATUS_OK, align 8
  %105 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %106 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i64 %104, i64* %107, align 8
  %108 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %109 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load i32 (i32, i64)*, i32 (i32, i64)** %110, align 8
  %112 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %113 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %117 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 %111(i32 %115, i64 %119)
  %121 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %122 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %78, %10
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_diag_s*, i64) #1

declare dso_local i8* @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
