; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_zr36057_set_jpg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_zr36057_set_jpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.tvnorm* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64 }
%struct.tvnorm = type { i32, i32, i32, i32, i32 }

@ZR36057_JPC = common dso_local global i32 0, align 4
@ZR36057_JMC_MJPGCmpMode = common dso_local global i32 0, align 4
@ZR36057_JMC_MJPGExpMode = common dso_local global i32 0, align 4
@ZR36057_JMC_SyncMstr = common dso_local global i32 0, align 4
@ZR36057_JMC_JPGCmpMode = common dso_local global i32 0, align 4
@ZR36057_JMC_JPGExpMode = common dso_local global i32 0, align 4
@ZR36057_JMC_JPG = common dso_local global i32 0, align 4
@ZR36057_JMC_Fld_per_buff = common dso_local global i32 0, align 4
@ZR36057_JMC = common dso_local global i32 0, align 4
@ZR36057_VFEVCR_VSPol = common dso_local global i32 0, align 4
@ZR36057_VFEVCR = common dso_local global i32 0, align 4
@ZR36057_VSP_VsyncSize = common dso_local global i32 0, align 4
@ZR36057_VSP_FrmTot = common dso_local global i32 0, align 4
@ZR36057_VSP = common dso_local global i32 0, align 4
@ZR36057_FVAP_NAY = common dso_local global i32 0, align 4
@ZR36057_FVAP_PAY = common dso_local global i32 0, align 4
@ZR36057_FVAP = common dso_local global i32 0, align 4
@ZR36057_VFEHCR_HSPol = common dso_local global i32 0, align 4
@ZR36057_VFEHCR = common dso_local global i32 0, align 4
@ZR36057_HSP_HsyncStart = common dso_local global i32 0, align 4
@ZR36057_HSP_LineTot = common dso_local global i32 0, align 4
@ZR36057_HSP = common dso_local global i32 0, align 4
@ZR36057_FHAP_NAX = common dso_local global i32 0, align 4
@ZR36057_FHAP_PAX = common dso_local global i32 0, align 4
@ZR36057_FHAP = common dso_local global i32 0, align 4
@ZR36057_FPP_Odd_Even = common dso_local global i32 0, align 4
@ZR36057_FPP = common dso_local global i32 0, align 4
@ZR36057_JCBA = common dso_local global i32 0, align 4
@BUZ = common dso_local global i32 0, align 4
@ZR36057_JCFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran*, i32)* @zr36057_set_jpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zr36057_set_jpg(%struct.zoran* %0, i32 %1) #0 {
  %3 = alloca %struct.zoran*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tvnorm*, align 8
  %6 = alloca i32, align 4
  store %struct.zoran* %0, %struct.zoran** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.zoran*, %struct.zoran** %3, align 8
  %8 = getelementptr inbounds %struct.zoran, %struct.zoran* %7, i32 0, i32 3
  %9 = load %struct.tvnorm*, %struct.tvnorm** %8, align 8
  store %struct.tvnorm* %9, %struct.tvnorm** %5, align 8
  %10 = load i32, i32* @ZR36057_JPC, align 4
  %11 = call i32 @btwrite(i32 0, i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %14 [
    i32 131, label %13
    i32 130, label %16
    i32 129, label %21
    i32 128, label %23
  ]

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %2, %13
  %15 = load i32, i32* @ZR36057_JMC_MJPGCmpMode, align 4
  store i32 %15, i32* %6, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @ZR36057_JMC_MJPGExpMode, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @ZR36057_JMC_SyncMstr, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @ZR36057_JMC_JPGCmpMode, align 4
  store i32 %22, i32* %6, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ZR36057_JMC_JPGExpMode, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %21, %16, %14
  %26 = load i32, i32* @ZR36057_JMC_JPG, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.zoran*, %struct.zoran** %3, align 8
  %30 = getelementptr inbounds %struct.zoran, %struct.zoran* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32, i32* @ZR36057_JMC_Fld_per_buff, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ZR36057_JMC, align 4
  %41 = call i32 @btwrite(i32 %39, i32 %40)
  %42 = load i32, i32* @ZR36057_VFEVCR_VSPol, align 4
  %43 = load i32, i32* @ZR36057_VFEVCR, align 4
  %44 = call i32 @btor(i32 %42, i32 %43)
  %45 = load i32, i32* @ZR36057_VSP_VsyncSize, align 4
  %46 = shl i32 6, %45
  %47 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %48 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ZR36057_VSP_FrmTot, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %46, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ZR36057_VSP, align 4
  %55 = call i32 @btwrite(i32 %53, i32 %54)
  %56 = load %struct.zoran*, %struct.zoran** %3, align 8
  %57 = getelementptr inbounds %struct.zoran, %struct.zoran* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %61 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = load i32, i32* @ZR36057_FVAP_NAY, align 4
  %65 = shl i32 %63, %64
  %66 = load %struct.zoran*, %struct.zoran** %3, align 8
  %67 = getelementptr inbounds %struct.zoran, %struct.zoran* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ZR36057_FVAP_PAY, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %65, %71
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ZR36057_FVAP, align 4
  %75 = call i32 @btwrite(i32 %73, i32 %74)
  %76 = load %struct.zoran*, %struct.zoran** %3, align 8
  %77 = getelementptr inbounds %struct.zoran, %struct.zoran* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %38
  %83 = load i32, i32* @ZR36057_VFEHCR_HSPol, align 4
  %84 = load i32, i32* @ZR36057_VFEHCR, align 4
  %85 = call i32 @btor(i32 %83, i32 %84)
  br label %91

86:                                               ; preds = %38
  %87 = load i32, i32* @ZR36057_VFEHCR_HSPol, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* @ZR36057_VFEHCR, align 4
  %90 = call i32 @btand(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %82
  %92 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %93 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ZR36057_HSP_HsyncStart, align 4
  %96 = shl i32 %94, %95
  %97 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %98 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ZR36057_HSP_LineTot, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %96, %101
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @ZR36057_HSP, align 4
  %105 = call i32 @btwrite(i32 %103, i32 %104)
  %106 = load %struct.zoran*, %struct.zoran** %3, align 8
  %107 = getelementptr inbounds %struct.zoran, %struct.zoran* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %111 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = add nsw i32 %113, 4
  %115 = load i32, i32* @ZR36057_FHAP_NAX, align 4
  %116 = shl i32 %114, %115
  %117 = load %struct.zoran*, %struct.zoran** %3, align 8
  %118 = getelementptr inbounds %struct.zoran, %struct.zoran* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ZR36057_FHAP_PAX, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %116, %122
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @ZR36057_FHAP, align 4
  %126 = call i32 @btwrite(i32 %124, i32 %125)
  %127 = load %struct.zoran*, %struct.zoran** %3, align 8
  %128 = getelementptr inbounds %struct.zoran, %struct.zoran* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %91
  %133 = load i32, i32* @ZR36057_FPP_Odd_Even, align 4
  store i32 %133, i32* %6, align 4
  br label %135

134:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %134, %132
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @ZR36057_FPP, align 4
  %138 = call i32 @btwrite(i32 %136, i32 %137)
  %139 = load %struct.zoran*, %struct.zoran** %3, align 8
  %140 = getelementptr inbounds %struct.zoran, %struct.zoran* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @virt_to_bus(i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @ZR36057_JCBA, align 4
  %145 = call i32 @btwrite(i32 %143, i32 %144)
  %146 = load i32, i32* %4, align 4
  switch i32 %146, label %158 [
    i32 129, label %147
    i32 131, label %147
    i32 128, label %157
    i32 130, label %157
  ]

147:                                              ; preds = %135, %135
  %148 = load %struct.zoran*, %struct.zoran** %3, align 8
  %149 = getelementptr inbounds %struct.zoran, %struct.zoran* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @BUZ, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  store i32 140, i32* %6, align 4
  br label %156

155:                                              ; preds = %147
  store i32 60, i32* %6, align 4
  br label %156

156:                                              ; preds = %155, %154
  br label %159

157:                                              ; preds = %135, %135
  store i32 20, i32* %6, align 4
  br label %159

158:                                              ; preds = %135
  store i32 80, i32* %6, align 4
  br label %159

159:                                              ; preds = %158, %157, %156
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @ZR36057_JCFT, align 4
  %162 = call i32 @btwrite(i32 %160, i32 %161)
  %163 = load %struct.zoran*, %struct.zoran** %3, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @zr36057_adjust_vfe(%struct.zoran* %163, i32 %164)
  ret void
}

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @btor(i32, i32) #1

declare dso_local i32 @btand(i32, i32) #1

declare dso_local i32 @virt_to_bus(i32) #1

declare dso_local i32 @zr36057_adjust_vfe(%struct.zoran*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
