; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_pgid_analyze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_pgid_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.pgid }
%struct.pgid = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ccw_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.pgid* }

@SNID_STATE2_RESVD_ELSE = common dso_local global i64 0, align 8
@channel_subsystems = common dso_local global %struct.TYPE_8__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, %struct.pgid**, i32*, i32*, i32*)* @pgid_analyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgid_analyze(%struct.ccw_device* %0, %struct.pgid** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca %struct.pgid**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pgid*, align 8
  %12 = alloca %struct.pgid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %6, align 8
  store %struct.pgid** %1, %struct.pgid*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.pgid*, %struct.pgid** %18, align 8
  %20 = getelementptr inbounds %struct.pgid, %struct.pgid* %19, i64 0
  store %struct.pgid* %20, %struct.pgid** %11, align 8
  store %struct.pgid* null, %struct.pgid** %12, align 8
  %21 = load i32*, i32** %8, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %14, align 4
  store i32 128, i32* %13, align 4
  br label %24

24:                                               ; preds = %69, %5
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %29 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %69

37:                                               ; preds = %27
  %38 = load %struct.pgid*, %struct.pgid** %11, align 8
  %39 = getelementptr inbounds %struct.pgid, %struct.pgid* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNID_STATE2_RESVD_ELSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32*, i32** %9, align 8
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %37
  %48 = load %struct.pgid*, %struct.pgid** %11, align 8
  %49 = call i64 @pgid_is_reset(%struct.pgid* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %69

56:                                               ; preds = %47
  %57 = load %struct.pgid*, %struct.pgid** %12, align 8
  %58 = icmp ne %struct.pgid* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load %struct.pgid*, %struct.pgid** %11, align 8
  store %struct.pgid* %60, %struct.pgid** %12, align 8
  br label %69

61:                                               ; preds = %56
  %62 = load %struct.pgid*, %struct.pgid** %11, align 8
  %63 = load %struct.pgid*, %struct.pgid** %12, align 8
  %64 = call i64 @pgid_cmp(%struct.pgid* %62, %struct.pgid* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32*, i32** %8, align 8
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68, %59, %51, %36
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = load %struct.pgid*, %struct.pgid** %11, align 8
  %73 = getelementptr inbounds %struct.pgid, %struct.pgid* %72, i32 1
  store %struct.pgid* %73, %struct.pgid** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %24

76:                                               ; preds = %24
  %77 = load %struct.pgid*, %struct.pgid** %12, align 8
  %78 = icmp ne %struct.pgid* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @channel_subsystems, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %80, i64 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store %struct.pgid* %83, %struct.pgid** %12, align 8
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.pgid*, %struct.pgid** %12, align 8
  %86 = load %struct.pgid**, %struct.pgid*** %7, align 8
  store %struct.pgid* %85, %struct.pgid** %86, align 8
  ret void
}

declare dso_local i64 @pgid_is_reset(%struct.pgid*) #1

declare dso_local i64 @pgid_cmp(%struct.pgid*, %struct.pgid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
