; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_subr.c_t1_link_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_subr.c_t1_link_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.cmac*, %struct.link_config, %struct.cphy* }
%struct.cmac = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.cmac*, i32, i32, i32)* }
%struct.link_config = type { i32, i32, i32, i64, i8 }
%struct.cphy = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* }

@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t1_link_changed(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cphy*, align 8
  %10 = alloca %struct.link_config*, align 8
  %11 = alloca %struct.cmac*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.cphy*, %struct.cphy** %18, align 8
  store %struct.cphy* %19, %struct.cphy** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store %struct.link_config* %26, %struct.link_config** %10, align 8
  %27 = load %struct.cphy*, %struct.cphy** %9, align 8
  %28 = getelementptr inbounds %struct.cphy, %struct.cphy* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32 (%struct.cphy*, i32*, i32*, i32*, i32*)*, i32 (%struct.cphy*, i32*, i32*, i32*, i32*)** %30, align 8
  %32 = load %struct.cphy*, %struct.cphy** %9, align 8
  %33 = call i32 %31(%struct.cphy* %32, i32* %5, i32* %6, i32* %7, i32* %8)
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @SPEED_INVALID, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.link_config*, %struct.link_config** %10, align 8
  %43 = getelementptr inbounds %struct.link_config, %struct.link_config* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @DUPLEX_INVALID, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.link_config*, %struct.link_config** %10, align 8
  %53 = getelementptr inbounds %struct.link_config, %struct.link_config* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.link_config*, %struct.link_config** %10, align 8
  %55 = getelementptr inbounds %struct.link_config, %struct.link_config* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PAUSE_AUTONEG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %50
  %61 = load %struct.link_config*, %struct.link_config** %10, align 8
  %62 = getelementptr inbounds %struct.link_config, %struct.link_config* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PAUSE_RX, align 4
  %65 = load i32, i32* @PAUSE_TX, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %60, %50
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %71
  %75 = load %struct.link_config*, %struct.link_config** %10, align 8
  %76 = getelementptr inbounds %struct.link_config, %struct.link_config* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AUTONEG_ENABLE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.cmac*, %struct.cmac** %87, align 8
  store %struct.cmac* %88, %struct.cmac** %11, align 8
  %89 = load %struct.cmac*, %struct.cmac** %11, align 8
  %90 = getelementptr inbounds %struct.cmac, %struct.cmac* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32 (%struct.cmac*, i32, i32, i32)*, i32 (%struct.cmac*, i32, i32, i32)** %92, align 8
  %94 = load %struct.cmac*, %struct.cmac** %11, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 %93(%struct.cmac* %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = trunc i32 %99 to i8
  %101 = load %struct.link_config*, %struct.link_config** %10, align 8
  %102 = getelementptr inbounds %struct.link_config, %struct.link_config* %101, i32 0, i32 4
  store i8 %100, i8* %102, align 8
  br label %103

103:                                              ; preds = %80, %74, %71, %68
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @t1_link_negotiated(%struct.TYPE_10__* %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @t1_link_negotiated(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
