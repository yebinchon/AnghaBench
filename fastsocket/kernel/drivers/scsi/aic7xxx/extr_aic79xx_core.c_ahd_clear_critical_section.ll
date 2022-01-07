; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_clear_critical_section.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_clear_critical_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i64, i64, i32, i32, %struct.cs* }
%struct.cs = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@CURADDR = common dso_local global i32 0, align 4
@AHD_MAX_STEPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"%s: Infinite loop in critical section\0A%s: First Instruction 0x%x now 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"critical section loop\00", align 1
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i32 0, align 4
@SIMODE3 = common dso_local global i32 0, align 4
@LQIMODE0 = common dso_local global i32 0, align 4
@LQIMODE1 = common dso_local global i32 0, align 4
@LQOMODE0 = common dso_local global i32 0, align 4
@LQOMODE1 = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i64 0, align 8
@SEQCTL0 = common dso_local global i32 0, align 4
@STEP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i64 0, align 8
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i64 0, align 8
@HCNTRL = common dso_local global i32 0, align 4
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_clear_critical_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_clear_critical_section(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.cs*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %246

22:                                               ; preds = %1
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = call i32 @ahd_save_modes(%struct.ahd_softc* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %186, %22
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = load i32, i32* @AHD_MODE_SCSI, align 4
  %29 = load i32, i32* @AHD_MODE_SCSI, align 4
  %30 = call i32 @ahd_set_modes(%struct.ahd_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %32 = load i32, i32* @CURADDR, align 4
  %33 = call i64 @ahd_inw(%struct.ahd_softc* %31, i32 %32)
  store i64 %33, i64* %15, align 8
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %34, i32 0, i32 4
  %36 = load %struct.cs*, %struct.cs** %35, align 8
  store %struct.cs* %36, %struct.cs** %14, align 8
  store i64 0, i64* %16, align 8
  br label %37

37:                                               ; preds = %57, %26
  %38 = load i64, i64* %16, align 8
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.cs*, %struct.cs** %14, align 8
  %45 = getelementptr inbounds %struct.cs, %struct.cs* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %15, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.cs*, %struct.cs** %14, align 8
  %51 = getelementptr inbounds %struct.cs, %struct.cs* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %62

56:                                               ; preds = %49, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %16, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %16, align 8
  %60 = load %struct.cs*, %struct.cs** %14, align 8
  %61 = getelementptr inbounds %struct.cs, %struct.cs* %60, i32 1
  store %struct.cs* %61, %struct.cs** %14, align 8
  br label %37

62:                                               ; preds = %55, %37
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %189

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @AHD_MAX_STEPS, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %75 = call i8* @ahd_name(%struct.ahd_softc* %74)
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %77 = call i8* @ahd_name(%struct.ahd_softc* %76)
  %78 = ptrtoint i8* %77 to i64
  %79 = load i32, i32* %6, align 4
  %80 = load i64, i64* %15, align 8
  %81 = call i32 (i8*, i8*, i64, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %75, i64 %78, i32 %79, i64 %80)
  %82 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %83 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %82)
  %84 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %73, %69
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @FALSE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %156

91:                                               ; preds = %85
  %92 = load i64, i64* %15, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %6, align 4
  %94 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %95 = load i32, i32* @AHD_MODE_CFG, align 4
  %96 = load i32, i32* @AHD_MODE_CFG, align 4
  %97 = call i32 @ahd_set_modes(%struct.ahd_softc* %94, i32 %95, i32 %96)
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %99 = load i32, i32* @SIMODE0, align 4
  %100 = call i64 @ahd_inb(%struct.ahd_softc* %98, i32 %99)
  store i64 %100, i64* %7, align 8
  %101 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %102 = load i32, i32* @SIMODE3, align 4
  %103 = call i64 @ahd_inb(%struct.ahd_softc* %101, i32 %102)
  store i64 %103, i64* %9, align 8
  %104 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %105 = load i32, i32* @LQIMODE0, align 4
  %106 = call i64 @ahd_inb(%struct.ahd_softc* %104, i32 %105)
  store i64 %106, i64* %10, align 8
  %107 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %108 = load i32, i32* @LQIMODE1, align 4
  %109 = call i64 @ahd_inb(%struct.ahd_softc* %107, i32 %108)
  store i64 %109, i64* %11, align 8
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %111 = load i32, i32* @LQOMODE0, align 4
  %112 = call i64 @ahd_inb(%struct.ahd_softc* %110, i32 %111)
  store i64 %112, i64* %12, align 8
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %114 = load i32, i32* @LQOMODE1, align 4
  %115 = call i64 @ahd_inb(%struct.ahd_softc* %113, i32 %114)
  store i64 %115, i64* %13, align 8
  %116 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %117 = load i32, i32* @SIMODE0, align 4
  %118 = call i32 @ahd_outb(%struct.ahd_softc* %116, i32 %117, i64 0)
  %119 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %120 = load i32, i32* @SIMODE3, align 4
  %121 = call i32 @ahd_outb(%struct.ahd_softc* %119, i32 %120, i64 0)
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %123 = load i32, i32* @LQIMODE0, align 4
  %124 = call i32 @ahd_outb(%struct.ahd_softc* %122, i32 %123, i64 0)
  %125 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %126 = load i32, i32* @LQIMODE1, align 4
  %127 = call i32 @ahd_outb(%struct.ahd_softc* %125, i32 %126, i64 0)
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %129 = load i32, i32* @LQOMODE0, align 4
  %130 = call i32 @ahd_outb(%struct.ahd_softc* %128, i32 %129, i64 0)
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %132 = load i32, i32* @LQOMODE1, align 4
  %133 = call i32 @ahd_outb(%struct.ahd_softc* %131, i32 %132, i64 0)
  %134 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %135 = load i32, i32* @AHD_MODE_SCSI, align 4
  %136 = load i32, i32* @AHD_MODE_SCSI, align 4
  %137 = call i32 @ahd_set_modes(%struct.ahd_softc* %134, i32 %135, i32 %136)
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %139 = load i32, i32* @SIMODE1, align 4
  %140 = call i64 @ahd_inb(%struct.ahd_softc* %138, i32 %139)
  store i64 %140, i64* %8, align 8
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %142 = load i32, i32* @SIMODE1, align 4
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* @ENBUSFREE, align 8
  %145 = and i64 %143, %144
  %146 = call i32 @ahd_outb(%struct.ahd_softc* %141, i32 %142, i64 %145)
  %147 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %148 = load i32, i32* @SEQCTL0, align 4
  %149 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %150 = load i32, i32* @SEQCTL0, align 4
  %151 = call i64 @ahd_inb(%struct.ahd_softc* %149, i32 %150)
  %152 = load i64, i64* @STEP, align 8
  %153 = or i64 %151, %152
  %154 = call i32 @ahd_outb(%struct.ahd_softc* %147, i32 %148, i64 %153)
  %155 = load i32, i32* @TRUE, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %91, %85
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %158 = load i32, i32* @CLRSINT1, align 4
  %159 = load i64, i64* @CLRBUSFREE, align 8
  %160 = call i32 @ahd_outb(%struct.ahd_softc* %157, i32 %158, i64 %159)
  %161 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %162 = load i32, i32* @CLRINT, align 4
  %163 = load i64, i64* @CLRSCSIINT, align 8
  %164 = call i32 @ahd_outb(%struct.ahd_softc* %161, i32 %162, i64 %163)
  %165 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %166 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %167 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %170 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ahd_set_modes(%struct.ahd_softc* %165, i32 %168, i32 %171)
  %173 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %174 = load i32, i32* @HCNTRL, align 4
  %175 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %176 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @ahd_outb(%struct.ahd_softc* %173, i32 %174, i64 %177)
  br label %179

179:                                              ; preds = %184, %156
  %180 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %181 = call i32 @ahd_is_paused(%struct.ahd_softc* %180)
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = call i32 @ahd_delay(i32 200)
  br label %179

186:                                              ; preds = %179
  %187 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %188 = call i32 @ahd_update_modes(%struct.ahd_softc* %187)
  br label %26

189:                                              ; preds = %68
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %242

192:                                              ; preds = %189
  %193 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %194 = load i32, i32* @AHD_MODE_CFG, align 4
  %195 = load i32, i32* @AHD_MODE_CFG, align 4
  %196 = call i32 @ahd_set_modes(%struct.ahd_softc* %193, i32 %194, i32 %195)
  %197 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %198 = load i32, i32* @SIMODE0, align 4
  %199 = load i64, i64* %7, align 8
  %200 = call i32 @ahd_outb(%struct.ahd_softc* %197, i32 %198, i64 %199)
  %201 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %202 = load i32, i32* @SIMODE3, align 4
  %203 = load i64, i64* %9, align 8
  %204 = call i32 @ahd_outb(%struct.ahd_softc* %201, i32 %202, i64 %203)
  %205 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %206 = load i32, i32* @LQIMODE0, align 4
  %207 = load i64, i64* %10, align 8
  %208 = call i32 @ahd_outb(%struct.ahd_softc* %205, i32 %206, i64 %207)
  %209 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %210 = load i32, i32* @LQIMODE1, align 4
  %211 = load i64, i64* %11, align 8
  %212 = call i32 @ahd_outb(%struct.ahd_softc* %209, i32 %210, i64 %211)
  %213 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %214 = load i32, i32* @LQOMODE0, align 4
  %215 = load i64, i64* %12, align 8
  %216 = call i32 @ahd_outb(%struct.ahd_softc* %213, i32 %214, i64 %215)
  %217 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %218 = load i32, i32* @LQOMODE1, align 4
  %219 = load i64, i64* %13, align 8
  %220 = call i32 @ahd_outb(%struct.ahd_softc* %217, i32 %218, i64 %219)
  %221 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %222 = load i32, i32* @AHD_MODE_SCSI, align 4
  %223 = load i32, i32* @AHD_MODE_SCSI, align 4
  %224 = call i32 @ahd_set_modes(%struct.ahd_softc* %221, i32 %222, i32 %223)
  %225 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %226 = load i32, i32* @SEQCTL0, align 4
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %228 = load i32, i32* @SEQCTL0, align 4
  %229 = call i64 @ahd_inb(%struct.ahd_softc* %227, i32 %228)
  %230 = load i64, i64* @STEP, align 8
  %231 = xor i64 %230, -1
  %232 = and i64 %229, %231
  %233 = call i32 @ahd_outb(%struct.ahd_softc* %225, i32 %226, i64 %232)
  %234 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %235 = load i32, i32* @SIMODE1, align 4
  %236 = load i64, i64* %8, align 8
  %237 = call i32 @ahd_outb(%struct.ahd_softc* %234, i32 %235, i64 %236)
  %238 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %239 = load i32, i32* @CLRINT, align 4
  %240 = load i64, i64* @CLRSCSIINT, align 8
  %241 = call i32 @ahd_outb(%struct.ahd_softc* %238, i32 %239, i64 %240)
  br label %242

242:                                              ; preds = %192, %189
  %243 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @ahd_restore_modes(%struct.ahd_softc* %243, i32 %244)
  br label %246

246:                                              ; preds = %242, %21
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i64) #1

declare dso_local i32 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_delay(i32) #1

declare dso_local i32 @ahd_update_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
