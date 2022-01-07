; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_search_carr_sw_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_sw.c_stv0900_search_carr_sw_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@ALGOSWRST = common dso_local global i32 0, align 4
@RST_HWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0900_internal*, i32, i32, i32, i32, i32)* @stv0900_search_carr_sw_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_search_carr_sw_loop(%struct.stv0900_internal* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.stv0900_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %20 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 1000
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = sdiv i32 %27, 10
  %29 = load i32, i32* %17, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = sdiv i32 %31, 2
  %33 = mul nsw i32 65536, %32
  store i32 %33, i32* %17, align 4
  %34 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %35 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 1000
  %38 = load i32, i32* %17, align 4
  %39 = sdiv i32 %38, %37
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp sgt i32 %40, 16384
  br i1 %41, label %42, label %43

42:                                               ; preds = %6
  store i32 16384, i32* %17, align 4
  br label %43

43:                                               ; preds = %42, %6
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  br label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %17, align 4
  %50 = sub nsw i32 0, %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %48, %47
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %143, %53
  %55 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %56 = load i32, i32* @DMDISTATE, align 4
  %57 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %55, i32 %56, i32 28)
  %58 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %59 = load i32, i32* @CFRINIT1, align 4
  %60 = load i32, i32* %16, align 4
  %61 = sdiv i32 %60, 256
  %62 = and i32 %61, 255
  %63 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %58, i32 %59, i32 %62)
  %64 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %65 = load i32, i32* @CFRINIT0, align 4
  %66 = load i32, i32* %16, align 4
  %67 = and i32 %66, 255
  %68 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %64, i32 %65, i32 %67)
  %69 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %70 = load i32, i32* @DMDISTATE, align 4
  %71 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %69, i32 %70, i32 24)
  %72 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %73 = load i32, i32* @ALGOSWRST, align 4
  %74 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %72, i32 %73, i32 1)
  %75 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %76 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 18
  br i1 %78, label %79, label %86

79:                                               ; preds = %54
  %80 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %81 = load i32, i32* @RST_HWARE, align 4
  %82 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %80, i32 %81, i32 1)
  %83 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %84 = load i32, i32* @RST_HWARE, align 4
  %85 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %79, %54
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @TRUE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i32, i32* %16, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = sub nsw i32 0, %94
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 2, %96
  %98 = sub nsw i32 %95, %97
  store i32 %98, i32* %16, align 4
  br label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %16, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %99, %93
  br label %108

103:                                              ; preds = %86
  %104 = load i32, i32* %8, align 4
  %105 = mul nsw i32 2, %104
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %103, %102
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  %111 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @stv0900_get_demod_lock(%struct.stv0900_internal* %111, i32 %112, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @stv0900_check_signal_presence(%struct.stv0900_internal* %115, i32 %116)
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @FALSE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %118
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @FALSE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load i32, i32* %17, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %17, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp sgt i32 %135, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %140, %141
  br label %143

143:                                              ; preds = %139, %132, %126, %122, %118
  %144 = phi i1 [ false, %132 ], [ false, %126 ], [ false, %122 ], [ false, %118 ], [ %142, %139 ]
  br i1 %144, label %54, label %145

145:                                              ; preds = %143
  %146 = load %struct.stv0900_internal*, %struct.stv0900_internal** %7, align 8
  %147 = load i32, i32* @ALGOSWRST, align 4
  %148 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %146, i32 %147, i32 0)
  %149 = load i32, i32* %14, align 4
  ret i32 %149
}

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_get_demod_lock(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_check_signal_presence(%struct.stv0900_internal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
