; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_parser_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_parser_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__**, %struct.TYPE_6__*, i64 }

@RADEON_IS_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_cs_parser*, i32)* @radeon_cs_parser_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_cs_parser_fini(%struct.radeon_cs_parser* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 10
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ttm_eu_fence_buffer_objects(i32* %10, i32 %14)
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %17, i32 0, i32 10
  %19 = call i32 @ttm_eu_backoff_reservation(i32* %18)
  br label %20

20:                                               ; preds = %16, %8
  %21 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %21, i32 0, i32 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %33, i32 0, i32 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %43, i32 0, i32 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @drm_gem_object_unreference_unlocked(i64 %50)
  br label %52

52:                                               ; preds = %42, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %26

56:                                               ; preds = %26
  br label %57

57:                                               ; preds = %56, %20
  %58 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %58, i32 0, i32 9
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = call i32 @kfree(%struct.TYPE_6__* %60)
  %62 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %62, i32 0, i32 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @kfree(%struct.TYPE_6__* %64)
  %66 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %66, i32 0, i32 7
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = call i32 @kfree(%struct.TYPE_6__* %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %118, %57
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %70
  %77 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %77, i32 0, i32 6
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = call i32 @kfree(%struct.TYPE_6__* %84)
  %86 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RADEON_IS_AGP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %76
  %95 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %95, i32 0, i32 6
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %102, i64 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = call i32 @kfree(%struct.TYPE_6__* %104)
  %106 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %106, i32 0, i32 6
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %113, i64 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = call i32 @kfree(%struct.TYPE_6__* %115)
  br label %117

117:                                              ; preds = %94, %76
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %70

121:                                              ; preds = %70
  %122 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %123 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %122, i32 0, i32 6
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = call i32 @kfree(%struct.TYPE_6__* %124)
  %126 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %126, i32 0, i32 5
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = call i32 @kfree(%struct.TYPE_6__* %128)
  %130 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %130, i32 0, i32 3
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %133, i32 0, i32 4
  %135 = call i32 @radeon_ib_free(%struct.TYPE_4__* %132, %struct.TYPE_5__* %134)
  %136 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %137 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %136, i32 0, i32 3
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %139, i32 0, i32 2
  %141 = call i32 @radeon_ib_free(%struct.TYPE_4__* %138, %struct.TYPE_5__* %140)
  ret void
}

declare dso_local i32 @ttm_eu_fence_buffer_objects(i32*, i32) #1

declare dso_local i32 @ttm_eu_backoff_reservation(i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @radeon_ib_free(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
