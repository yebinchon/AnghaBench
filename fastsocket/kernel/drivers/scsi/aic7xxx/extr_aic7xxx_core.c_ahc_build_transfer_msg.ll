; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_build_transfer_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_build_transfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32, i32, i32, i32 }
%struct.ahc_initiator_tinfo = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.ahc_tmode_tstate = type { i32 }
%struct.ahc_syncrate = type { i32 }

@ROLE_TARGET = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i64 0, align 8
@AHC_WIDE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Ensuring async\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*)* @ahc_build_transfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_build_transfer_msg(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.ahc_devinfo*, align 8
  %5 = alloca %struct.ahc_initiator_tinfo*, align 8
  %6 = alloca %struct.ahc_tmode_tstate*, align 8
  %7 = alloca %struct.ahc_syncrate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %4, align 8
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %15 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %14, i32 %17, i32 %20, i32 %23, %struct.ahc_tmode_tstate** %6)
  store %struct.ahc_initiator_tinfo* %24, %struct.ahc_initiator_tinfo** %5, align 8
  %25 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %26 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %30 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  %33 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %34 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %38 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ROLE_TARGET, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %45 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %46 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %47 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.ahc_syncrate* @ahc_devlimited_syncrate(%struct.ahc_softc* %44, %struct.ahc_initiator_tinfo* %45, i64* %11, i64* %12, i32 %48)
  store %struct.ahc_syncrate* %49, %struct.ahc_syncrate** %7, align 8
  %50 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %51 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %55 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %61 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %43
  %67 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %68 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ne i64 %70, %71
  br label %73

73:                                               ; preds = %66, %43
  %74 = phi i1 [ true, %43 ], [ %72, %66 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %84
  %88 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %89 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %93 = icmp ne i64 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %8, align 4
  %95 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %96 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %87, %84, %81, %73
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %128, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %128, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %107
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AHC_WIDE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 1, i32* %8, align 4
  br label %119

118:                                              ; preds = %110
  store i32 1, i32* %9, align 4
  br label %119

119:                                              ; preds = %118, %117
  %120 = load i64, i64* @bootverbose, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %124 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %125 = call i32 @ahc_print_devinfo(%struct.ahc_softc* %123, %struct.ahc_devinfo* %124)
  %126 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %119
  br label %128

128:                                              ; preds = %127, %107, %104, %101
  %129 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %130 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ROLE_TARGET, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %134, %128
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %190

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %190, label %144

144:                                              ; preds = %141, %135
  %145 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %146 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %13, align 8
  %149 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %150 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %151 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %7, align 8
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %144
  %155 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %156 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  br label %164

159:                                              ; preds = %144
  %160 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %161 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  br label %164

164:                                              ; preds = %159, %154
  %165 = phi i64 [ %158, %154 ], [ %163, %159 ]
  %166 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %167 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ahc_validate_offset(%struct.ahc_softc* %149, %struct.ahc_initiator_tinfo* %150, %struct.ahc_syncrate* %151, i64* %13, i64 %165, i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %164
  %173 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %174 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %175 = load i64, i64* %11, align 8
  %176 = load i64, i64* %13, align 8
  %177 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %178 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %12, align 8
  %182 = call i32 @ahc_construct_ppr(%struct.ahc_softc* %173, %struct.ahc_devinfo* %174, i64 %175, i64 %176, i64 %180, i64 %181)
  br label %189

183:                                              ; preds = %164
  %184 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %185 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %13, align 8
  %188 = call i32 @ahc_construct_sdtr(%struct.ahc_softc* %184, %struct.ahc_devinfo* %185, i64 %186, i64 %187)
  br label %189

189:                                              ; preds = %183, %172
  br label %198

190:                                              ; preds = %141, %138
  %191 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %192 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %193 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %194 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @ahc_construct_wdtr(%struct.ahc_softc* %191, %struct.ahc_devinfo* %192, i64 %196)
  br label %198

198:                                              ; preds = %190, %189
  ret void
}

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i32, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local %struct.ahc_syncrate* @ahc_devlimited_syncrate(%struct.ahc_softc*, %struct.ahc_initiator_tinfo*, i64*, i64*, i32) #1

declare dso_local i32 @ahc_print_devinfo(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ahc_validate_offset(%struct.ahc_softc*, %struct.ahc_initiator_tinfo*, %struct.ahc_syncrate*, i64*, i64, i32) #1

declare dso_local i32 @ahc_construct_ppr(%struct.ahc_softc*, %struct.ahc_devinfo*, i64, i64, i64, i64) #1

declare dso_local i32 @ahc_construct_sdtr(%struct.ahc_softc*, %struct.ahc_devinfo*, i64, i64) #1

declare dso_local i32 @ahc_construct_wdtr(%struct.ahc_softc*, %struct.ahc_devinfo*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
