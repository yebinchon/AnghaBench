; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac_update_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac_update_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.s_fpmc* }
%struct.s_fpmc = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32* }

@FM_AFCMD = common dso_local global i32 0, align 4
@FM_IINV_CAM = common dso_local global i32 0, align 4
@FM_AFMASK2 = common dso_local global i32 0, align 4
@FM_AFMASK1 = common dso_local global i32 0, align 4
@FM_AFMASK0 = common dso_local global i32 0, align 4
@FM_AFPERS = common dso_local global i32 0, align 4
@FM_VALID = common dso_local global i32 0, align 4
@FM_DA = common dso_local global i32 0, align 4
@FM_AFCOMP2 = common dso_local global i32 0, align 4
@FM_AFCOMP1 = common dso_local global i32 0, align 4
@FM_AFCOMP0 = common dso_local global i32 0, align 4
@FM_IWRITE_CAM = common dso_local global i32 0, align 4
@FPMAX_MULTICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_update_multicast(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.s_fpmc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %6 = load i32, i32* @FM_AFCMD, align 4
  %7 = call i32 @FM_A(i32 %6)
  %8 = load i32, i32* @FM_IINV_CAM, align 4
  %9 = call i32 @outpw(i32 %7, i32 %8)
  %10 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %11 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %1
  %17 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %18 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = bitcast i64* %20 to i32*
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* @FM_AFMASK2, align 4
  %23 = call i32 @FM_A(i32 %22)
  %24 = call i32 @outpw(i32 %23, i32 65535)
  %25 = load i32, i32* @FM_AFMASK1, align 4
  %26 = call i32 @FM_A(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = xor i32 %34, -1
  %36 = call i32 @outpw(i32 %26, i32 %35)
  %37 = load i32, i32* @FM_AFMASK0, align 4
  %38 = call i32 @FM_A(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = xor i32 %46, -1
  %48 = call i32 @outpw(i32 %38, i32 %47)
  %49 = load i32, i32* @FM_AFPERS, align 4
  %50 = call i32 @FM_A(i32 %49)
  %51 = load i32, i32* @FM_VALID, align 4
  %52 = load i32, i32* @FM_DA, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @outpw(i32 %50, i32 %53)
  %55 = load i32, i32* @FM_AFCOMP2, align 4
  %56 = call i32 @FM_A(i32 %55)
  %57 = call i32 @outpw(i32 %56, i32 49152)
  %58 = load i32, i32* @FM_AFCOMP1, align 4
  %59 = call i32 @FM_A(i32 %58)
  %60 = call i32 @outpw(i32 %59, i32 0)
  %61 = load i32, i32* @FM_AFCOMP0, align 4
  %62 = call i32 @FM_A(i32 %61)
  %63 = call i32 @outpw(i32 %62, i32 0)
  %64 = load i32, i32* @FM_AFCMD, align 4
  %65 = call i32 @FM_A(i32 %64)
  %66 = load i32, i32* @FM_IWRITE_CAM, align 4
  %67 = call i32 @outpw(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %16, %1
  %69 = load i32, i32* @FM_AFMASK0, align 4
  %70 = call i32 @FM_A(i32 %69)
  %71 = call i32 @outpw(i32 %70, i32 65535)
  %72 = load i32, i32* @FM_AFMASK1, align 4
  %73 = call i32 @FM_A(i32 %72)
  %74 = call i32 @outpw(i32 %73, i32 65535)
  %75 = load i32, i32* @FM_AFMASK2, align 4
  %76 = call i32 @FM_A(i32 %75)
  %77 = call i32 @outpw(i32 %76, i32 65535)
  %78 = load i32, i32* @FM_AFPERS, align 4
  %79 = call i32 @FM_A(i32 %78)
  %80 = load i32, i32* @FM_VALID, align 4
  %81 = load i32, i32* @FM_DA, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @outpw(i32 %79, i32 %82)
  store i32 0, i32* %5, align 4
  %84 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %85 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.s_fpmc*, %struct.s_fpmc** %88, align 8
  store %struct.s_fpmc* %89, %struct.s_fpmc** %3, align 8
  br label %90

90:                                               ; preds = %157, %68
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @FPMAX_MULTICAST, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %162

94:                                               ; preds = %90
  %95 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %96 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %156

99:                                               ; preds = %94
  %100 = call i32 (...) @CHECK_CAM()
  %101 = load i32, i32* @FM_AFCOMP2, align 4
  %102 = call i32 @FM_A(i32 %101)
  %103 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %104 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 8
  %110 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %111 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %109, %115
  %117 = call i32 @outpw(i32 %102, i32 %116)
  %118 = load i32, i32* @FM_AFCOMP1, align 4
  %119 = call i32 @FM_A(i32 %118)
  %120 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %121 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 8
  %127 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %128 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %126, %132
  %134 = call i32 @outpw(i32 %119, i32 %133)
  %135 = load i32, i32* @FM_AFCOMP0, align 4
  %136 = call i32 @FM_A(i32 %135)
  %137 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %138 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 8
  %144 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %145 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 5
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %143, %149
  %151 = call i32 @outpw(i32 %136, i32 %150)
  %152 = load i32, i32* @FM_AFCMD, align 4
  %153 = call i32 @FM_A(i32 %152)
  %154 = load i32, i32* @FM_IWRITE_CAM, align 4
  %155 = call i32 @outpw(i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %99, %94
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  %160 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %161 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %160, i32 1
  store %struct.s_fpmc* %161, %struct.s_fpmc** %3, align 8
  br label %90

162:                                              ; preds = %90
  ret void
}

declare dso_local i32 @outpw(i32, i32) #1

declare dso_local i32 @FM_A(i32) #1

declare dso_local i32 @CHECK_CAM(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
