; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_acornscsi.c_acornscsi_reconnect_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_acornscsi.c_acornscsi_reconnect_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__*, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__*, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_20__, %struct.TYPE_15__* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @acornscsi_reconnect_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acornscsi_reconnect_finish(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %3 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %68

8:                                                ; preds = %1
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %12 = icmp ne %struct.TYPE_23__* %11, null
  br i1 %12, label %13, label %68

13:                                               ; preds = %8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %23, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %13
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %30
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %67

57:                                               ; preds = %44, %30, %13
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  %64 = call i32 @queue_add_cmd_tail(i32* %60, %struct.TYPE_23__* %63)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %66, align 8
  br label %67

67:                                               ; preds = %57, %56
  br label %68

68:                                               ; preds = %67, %8, %1
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %70, align 8
  %72 = icmp ne %struct.TYPE_23__* %71, null
  br i1 %72, label %95, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call %struct.TYPE_23__* @queue_remove_tgtluntag(i32* %76, i64 %81, i64 %86, i64 %91)
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  store %struct.TYPE_23__* %92, %struct.TYPE_23__** %94, align 8
  br label %95

95:                                               ; preds = %73, %68
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = icmp ne %struct.TYPE_23__* %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @acornscsi_abortcmd(%struct.TYPE_22__* %101, i64 %106)
  br label %118

108:                                              ; preds = %95
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = bitcast %struct.TYPE_20__* %111 to i8*
  %117 = bitcast %struct.TYPE_20__* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 12, i1 false)
  br label %118

118:                                              ; preds = %108, %100
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  %130 = icmp ne %struct.TYPE_23__* %129, null
  %131 = zext i1 %130 to i32
  ret i32 %131
}

declare dso_local i32 @queue_add_cmd_tail(i32*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @queue_remove_tgtluntag(i32*, i64, i64, i64) #1

declare dso_local i32 @acornscsi_abortcmd(%struct.TYPE_22__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
