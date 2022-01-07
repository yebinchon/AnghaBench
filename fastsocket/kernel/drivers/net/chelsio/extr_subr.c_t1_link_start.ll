; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_subr.c_t1_link_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_subr.c_t1_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { %struct.TYPE_8__*, i8* }
%struct.TYPE_8__ = type { i32 (%struct.cphy*, i32)*, i32 (%struct.cphy*)*, i32 (%struct.cphy*, i32, i32)*, i32 (%struct.cphy*, i32)* }
%struct.cmac = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 (%struct.cmac*, i32, i32, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.link_config = type { i32, i32, i32, i64, i32, i32, i32, i32, i8 }

@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_ASYM_PAUSE = common dso_local global i32 0, align 4
@ADVERTISED_PAUSE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@PHY_AUTONEG_RDY = common dso_local global i8* null, align 8
@PHY_AUTONEG_EN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_link_start(%struct.cphy* %0, %struct.cmac* %1, %struct.link_config* %2) #0 {
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca %struct.cmac*, align 8
  %6 = alloca %struct.link_config*, align 8
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store %struct.cmac* %1, %struct.cmac** %5, align 8
  store %struct.link_config* %2, %struct.link_config** %6, align 8
  %8 = load %struct.link_config*, %struct.link_config** %6, align 8
  %9 = getelementptr inbounds %struct.link_config, %struct.link_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAUSE_RX, align 4
  %12 = load i32, i32* @PAUSE_TX, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.link_config*, %struct.link_config** %6, align 8
  %16 = getelementptr inbounds %struct.link_config, %struct.link_config* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %150

21:                                               ; preds = %3
  %22 = load i32, i32* @ADVERTISED_ASYM_PAUSE, align 4
  %23 = load i32, i32* @ADVERTISED_PAUSE, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.link_config*, %struct.link_config** %6, align 8
  %27 = getelementptr inbounds %struct.link_config, %struct.link_config* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @PAUSE_RX, align 4
  %35 = load i32, i32* @PAUSE_TX, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.cmac*, %struct.cmac** %5, align 8
  %38 = getelementptr inbounds %struct.cmac, %struct.cmac* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 2
  %44 = zext i1 %43 to i32
  %45 = and i32 %36, %44
  %46 = icmp eq i32 %33, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = load i32, i32* @ADVERTISED_PAUSE, align 4
  %49 = load %struct.link_config*, %struct.link_config** %6, align 8
  %50 = getelementptr inbounds %struct.link_config, %struct.link_config* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %69

53:                                               ; preds = %32
  %54 = load i32, i32* @ADVERTISED_ASYM_PAUSE, align 4
  %55 = load %struct.link_config*, %struct.link_config** %6, align 8
  %56 = getelementptr inbounds %struct.link_config, %struct.link_config* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @PAUSE_RX, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load i32, i32* @ADVERTISED_PAUSE, align 4
  %64 = load %struct.link_config*, %struct.link_config** %6, align 8
  %65 = getelementptr inbounds %struct.link_config, %struct.link_config* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %53
  br label %69

69:                                               ; preds = %68, %47
  br label %70

70:                                               ; preds = %69, %21
  %71 = load %struct.cphy*, %struct.cphy** %4, align 8
  %72 = getelementptr inbounds %struct.cphy, %struct.cphy* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32 (%struct.cphy*, i32)*, i32 (%struct.cphy*, i32)** %74, align 8
  %76 = load %struct.cphy*, %struct.cphy** %4, align 8
  %77 = load %struct.link_config*, %struct.link_config** %6, align 8
  %78 = getelementptr inbounds %struct.link_config, %struct.link_config* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %75(%struct.cphy* %76, i32 %79)
  %81 = load %struct.link_config*, %struct.link_config** %6, align 8
  %82 = getelementptr inbounds %struct.link_config, %struct.link_config* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AUTONEG_DISABLE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %138

86:                                               ; preds = %70
  %87 = load %struct.link_config*, %struct.link_config** %6, align 8
  %88 = getelementptr inbounds %struct.link_config, %struct.link_config* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.link_config*, %struct.link_config** %6, align 8
  %91 = getelementptr inbounds %struct.link_config, %struct.link_config* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.link_config*, %struct.link_config** %6, align 8
  %93 = getelementptr inbounds %struct.link_config, %struct.link_config* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.link_config*, %struct.link_config** %6, align 8
  %96 = getelementptr inbounds %struct.link_config, %struct.link_config* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = trunc i32 %97 to i8
  %99 = load %struct.link_config*, %struct.link_config** %6, align 8
  %100 = getelementptr inbounds %struct.link_config, %struct.link_config* %99, i32 0, i32 8
  store i8 %98, i8* %100, align 8
  %101 = load %struct.cmac*, %struct.cmac** %5, align 8
  %102 = getelementptr inbounds %struct.cmac, %struct.cmac* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32 (%struct.cmac*, i32, i32, i32)*, i32 (%struct.cmac*, i32, i32, i32)** %104, align 8
  %106 = load %struct.cmac*, %struct.cmac** %5, align 8
  %107 = load %struct.link_config*, %struct.link_config** %6, align 8
  %108 = getelementptr inbounds %struct.link_config, %struct.link_config* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.link_config*, %struct.link_config** %6, align 8
  %111 = getelementptr inbounds %struct.link_config, %struct.link_config* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 %105(%struct.cmac* %106, i32 %109, i32 %112, i32 %113)
  %115 = load i8*, i8** @PHY_AUTONEG_RDY, align 8
  %116 = load %struct.cphy*, %struct.cphy** %4, align 8
  %117 = getelementptr inbounds %struct.cphy, %struct.cphy* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.cphy*, %struct.cphy** %4, align 8
  %119 = getelementptr inbounds %struct.cphy, %struct.cphy* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32 (%struct.cphy*, i32, i32)*, i32 (%struct.cphy*, i32, i32)** %121, align 8
  %123 = load %struct.cphy*, %struct.cphy** %4, align 8
  %124 = load %struct.link_config*, %struct.link_config** %6, align 8
  %125 = getelementptr inbounds %struct.link_config, %struct.link_config* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.link_config*, %struct.link_config** %6, align 8
  %128 = getelementptr inbounds %struct.link_config, %struct.link_config* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = call i32 %122(%struct.cphy* %123, i32 %126, i32 %129)
  %131 = load %struct.cphy*, %struct.cphy** %4, align 8
  %132 = getelementptr inbounds %struct.cphy, %struct.cphy* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32 (%struct.cphy*, i32)*, i32 (%struct.cphy*, i32)** %134, align 8
  %136 = load %struct.cphy*, %struct.cphy** %4, align 8
  %137 = call i32 %135(%struct.cphy* %136, i32 0)
  br label %149

138:                                              ; preds = %70
  %139 = load i8*, i8** @PHY_AUTONEG_EN, align 8
  %140 = load %struct.cphy*, %struct.cphy** %4, align 8
  %141 = getelementptr inbounds %struct.cphy, %struct.cphy* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load %struct.cphy*, %struct.cphy** %4, align 8
  %143 = getelementptr inbounds %struct.cphy, %struct.cphy* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32 (%struct.cphy*)*, i32 (%struct.cphy*)** %145, align 8
  %147 = load %struct.cphy*, %struct.cphy** %4, align 8
  %148 = call i32 %146(%struct.cphy* %147)
  br label %149

149:                                              ; preds = %138, %86
  br label %173

150:                                              ; preds = %3
  %151 = load i8*, i8** @PHY_AUTONEG_RDY, align 8
  %152 = load %struct.cphy*, %struct.cphy** %4, align 8
  %153 = getelementptr inbounds %struct.cphy, %struct.cphy* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load %struct.cmac*, %struct.cmac** %5, align 8
  %155 = getelementptr inbounds %struct.cmac, %struct.cmac* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32 (%struct.cmac*, i32, i32, i32)*, i32 (%struct.cmac*, i32, i32, i32)** %157, align 8
  %159 = load %struct.cmac*, %struct.cmac** %5, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 %158(%struct.cmac* %159, i32 -1, i32 -1, i32 %160)
  %162 = load i32, i32* %7, align 4
  %163 = trunc i32 %162 to i8
  %164 = load %struct.link_config*, %struct.link_config** %6, align 8
  %165 = getelementptr inbounds %struct.link_config, %struct.link_config* %164, i32 0, i32 8
  store i8 %163, i8* %165, align 8
  %166 = load %struct.cphy*, %struct.cphy** %4, align 8
  %167 = getelementptr inbounds %struct.cphy, %struct.cphy* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32 (%struct.cphy*, i32)*, i32 (%struct.cphy*, i32)** %169, align 8
  %171 = load %struct.cphy*, %struct.cphy** %4, align 8
  %172 = call i32 %170(%struct.cphy* %171, i32 0)
  br label %173

173:                                              ; preds = %150, %149
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
