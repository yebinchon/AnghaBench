; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_build_transfer_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_build_transfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.ahd_devinfo = type { i32, i32, i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.ahd_tmode_tstate = type { i32 }

@ROLE_TARGET = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i64 0, align 8
@AHD_WIDE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Ensuring async\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*)* @ahd_build_transfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_build_transfer_msg(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.ahd_devinfo*, align 8
  %5 = alloca %struct.ahd_initiator_tinfo*, align 8
  %6 = alloca %struct.ahd_tmode_tstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %4, align 8
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %13, i32 %16, i32 %19, i32 %22, %struct.ahd_tmode_tstate** %6)
  store %struct.ahd_initiator_tinfo* %23, %struct.ahd_initiator_tinfo** %5, align 8
  %24 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %25 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %29 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %33 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %37 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ROLE_TARGET, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %44 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %45 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %46 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ahd_devlimited_syncrate(%struct.ahd_softc* %43, %struct.ahd_initiator_tinfo* %44, i64* %10, i64* %11, i32 %47)
  %49 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %50 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %54 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %52, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %60 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %42
  %66 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %67 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %69, %70
  br label %72

72:                                               ; preds = %65, %42
  %73 = phi i1 [ true, %42 ], [ %71, %65 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %83
  %87 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %88 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %95 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %86, %83, %80, %72
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %127, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %127, label %109

109:                                              ; preds = %106
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AHD_WIDE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 1, i32* %7, align 4
  br label %118

117:                                              ; preds = %109
  store i32 1, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %116
  %119 = load i64, i64* @bootverbose, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %123 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %124 = call i32 @ahd_print_devinfo(%struct.ahd_softc* %122, %struct.ahd_devinfo* %123)
  %125 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %121, %118
  br label %127

127:                                              ; preds = %126, %106, %103, %100
  %128 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %129 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ROLE_TARGET, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %133, %127
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %189

140:                                              ; preds = %137
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %189, label %143

143:                                              ; preds = %140, %134
  %144 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %145 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %12, align 8
  %148 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %149 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %143
  %154 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %155 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  br label %163

158:                                              ; preds = %143
  %159 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %160 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  br label %163

163:                                              ; preds = %158, %153
  %164 = phi i64 [ %157, %153 ], [ %162, %158 ]
  %165 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %166 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ahd_validate_offset(%struct.ahd_softc* %148, %struct.ahd_initiator_tinfo* %149, i64 %150, i64* %12, i64 %164, i32 %167)
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %163
  %172 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %173 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %174 = load i64, i64* %10, align 8
  %175 = load i64, i64* %12, align 8
  %176 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %177 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %11, align 8
  %181 = call i32 @ahd_construct_ppr(%struct.ahd_softc* %172, %struct.ahd_devinfo* %173, i64 %174, i64 %175, i64 %179, i64 %180)
  br label %188

182:                                              ; preds = %163
  %183 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %184 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* %12, align 8
  %187 = call i32 @ahd_construct_sdtr(%struct.ahd_softc* %183, %struct.ahd_devinfo* %184, i64 %185, i64 %186)
  br label %188

188:                                              ; preds = %182, %171
  br label %197

189:                                              ; preds = %140, %137
  %190 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %191 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %192 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %193 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @ahd_construct_wdtr(%struct.ahd_softc* %190, %struct.ahd_devinfo* %191, i64 %195)
  br label %197

197:                                              ; preds = %189, %188
  ret void
}

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_devlimited_syncrate(%struct.ahd_softc*, %struct.ahd_initiator_tinfo*, i64*, i64*, i32) #1

declare dso_local i32 @ahd_print_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ahd_validate_offset(%struct.ahd_softc*, %struct.ahd_initiator_tinfo*, i64, i64*, i64, i32) #1

declare dso_local i32 @ahd_construct_ppr(%struct.ahd_softc*, %struct.ahd_devinfo*, i64, i64, i64, i64) #1

declare dso_local i32 @ahd_construct_sdtr(%struct.ahd_softc*, %struct.ahd_devinfo*, i64, i64) #1

declare dso_local i32 @ahd_construct_wdtr(%struct.ahd_softc*, %struct.ahd_devinfo*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
