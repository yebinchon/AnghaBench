; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_apply_geo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_apply_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.bttv_geometry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@BT848_VSCALE_COMB = common dso_local global i32 0, align 4
@BT848_E_VSCALE_HI = common dso_local global i64 0, align 8
@BT848_E_VTC = common dso_local global i64 0, align 8
@BT848_E_HSCALE_HI = common dso_local global i64 0, align 8
@BT848_E_HSCALE_LO = common dso_local global i64 0, align 8
@BT848_E_VSCALE_LO = common dso_local global i64 0, align 8
@BT848_E_HACTIVE_LO = common dso_local global i64 0, align 8
@BT848_E_HDELAY_LO = common dso_local global i64 0, align 8
@BT848_E_VACTIVE_LO = common dso_local global i64 0, align 8
@BT848_E_VDELAY_LO = common dso_local global i64 0, align 8
@BT848_E_CROP = common dso_local global i64 0, align 8
@BT848_VTOTAL_HI = common dso_local global i64 0, align 8
@BT848_VTOTAL_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, %struct.bttv_geometry*, i32)* @bttv_apply_geo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_apply_geo(%struct.bttv* %0, %struct.bttv_geometry* %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.bttv_geometry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store %struct.bttv_geometry* %1, %struct.bttv_geometry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 128, i32 0
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %13 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @BT848_VSCALE_COMB, align 4
  %18 = load i64, i64* @BT848_E_VSCALE_HI, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @btor(i32 %17, i64 %21)
  br label %31

23:                                               ; preds = %3
  %24 = load i32, i32* @BT848_VSCALE_COMB, align 4
  %25 = xor i32 %24, -1
  %26 = load i64, i64* @BT848_E_VSCALE_HI, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @btand(i32 %25, i64 %29)
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %33 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* @BT848_E_VTC, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @btwrite(i32 %34, i64 %38)
  %40 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %41 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = load i64, i64* @BT848_E_HSCALE_HI, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = call i32 @btwrite(i32 %43, i64 %47)
  %49 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %50 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 255
  %53 = load i64, i64* @BT848_E_HSCALE_LO, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = call i32 @btwrite(i32 %52, i64 %56)
  %58 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %59 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 8
  %62 = load i64, i64* @BT848_E_VSCALE_HI, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = call i32 @btaor(i32 %61, i32 224, i64 %65)
  %67 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %68 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 255
  %71 = load i64, i64* @BT848_E_VSCALE_LO, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @btwrite(i32 %70, i64 %74)
  %76 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %77 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 255
  %80 = load i64, i64* @BT848_E_HACTIVE_LO, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = call i32 @btwrite(i32 %79, i64 %83)
  %85 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %86 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 255
  %89 = load i64, i64* @BT848_E_HDELAY_LO, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = call i32 @btwrite(i32 %88, i64 %92)
  %94 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %95 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 255
  %98 = load i64, i64* @BT848_E_VACTIVE_LO, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = call i32 @btwrite(i32 %97, i64 %101)
  %103 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %104 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 255
  %107 = load i64, i64* @BT848_E_VDELAY_LO, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = call i32 @btwrite(i32 %106, i64 %110)
  %112 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %113 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* @BT848_E_CROP, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = call i32 @btwrite(i32 %114, i64 %118)
  %120 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %121 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = ashr i32 %122, 8
  %124 = load i64, i64* @BT848_VTOTAL_HI, align 8
  %125 = call i32 @btwrite(i32 %123, i64 %124)
  %126 = load %struct.bttv_geometry*, %struct.bttv_geometry** %5, align 8
  %127 = getelementptr inbounds %struct.bttv_geometry, %struct.bttv_geometry* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 255
  %130 = load i64, i64* @BT848_VTOTAL_LO, align 8
  %131 = call i32 @btwrite(i32 %129, i64 %130)
  ret void
}

declare dso_local i32 @btor(i32, i64) #1

declare dso_local i32 @btand(i32, i64) #1

declare dso_local i32 @btwrite(i32, i64) #1

declare dso_local i32 @btaor(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
