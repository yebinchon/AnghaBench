; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_fsl_booke_mmu.c_settlbcam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_fsl_booke_mmu.c_settlbcam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@TLBCAM = common dso_local global %struct.TYPE_4__* null, align 8
@MAS1_VALID = common dso_local global i32 0, align 4
@MAS1_IPROT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@_PAGE_WRITETHRU = common dso_local global i32 0, align 4
@MAS2_W = common dso_local global i64 0, align 8
@_PAGE_NO_CACHE = common dso_local global i32 0, align 4
@MAS2_I = common dso_local global i64 0, align 8
@_PAGE_COHERENT = common dso_local global i32 0, align 4
@MAS2_M = common dso_local global i64 0, align 8
@_PAGE_GUARDED = common dso_local global i32 0, align 4
@MAS2_G = common dso_local global i64 0, align 8
@_PAGE_ENDIAN = common dso_local global i32 0, align 4
@MAS2_E = common dso_local global i64 0, align 8
@MAS3_SX = common dso_local global i64 0, align 8
@MAS3_SR = common dso_local global i64 0, align 8
@_PAGE_RW = common dso_local global i32 0, align 4
@MAS3_SW = common dso_local global i64 0, align 8
@_PAGE_USER = common dso_local global i32 0, align 4
@MAS3_UX = common dso_local global i32 0, align 4
@MAS3_UR = common dso_local global i32 0, align 4
@MAS3_UW = common dso_local global i32 0, align 4
@tlbcam_addrs = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @settlbcam(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 asm "cntlzw $0,$1", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %15) #2, !srcloc !2
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = sub i32 21, %17
  store i32 %18, i32* %13, align 4
  %19 = call i32 @MAS0_TLBSEL(i32 1)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @MAS0_ESEL(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @MAS0_NV(i32 %24)
  %26 = or i32 %22, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 8
  %32 = load i32, i32* @MAS1_VALID, align 4
  %33 = load i32, i32* @MAS1_IPROT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @MAS1_TSIZE(i32 %35)
  %37 = or i32 %34, %36
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @MAS1_TID(i32 %38)
  %40 = or i32 %37, %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 4
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @PAGE_MASK, align 8
  %48 = and i64 %46, %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i64 %48, i64* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @_PAGE_WRITETHRU, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %6
  %59 = load i64, i64* @MAS2_W, align 8
  br label %61

60:                                               ; preds = %6
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i64 [ %59, %58 ], [ 0, %60 ]
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %68, %62
  store i64 %69, i64* %67, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @_PAGE_NO_CACHE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i64, i64* @MAS2_I, align 8
  br label %77

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i64 [ %75, %74 ], [ 0, %76 ]
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %84, %78
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @_PAGE_COHERENT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i64, i64* @MAS2_M, align 8
  br label %93

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i64 [ %91, %90 ], [ 0, %92 ]
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %94
  store i64 %101, i64* %99, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @_PAGE_GUARDED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i64, i64* @MAS2_G, align 8
  br label %109

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i64 [ %107, %106 ], [ 0, %108 ]
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = or i64 %116, %110
  store i64 %117, i64* %115, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @_PAGE_ENDIAN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %109
  %123 = load i64, i64* @MAS2_E, align 8
  br label %125

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i64 [ %123, %122 ], [ 0, %124 ]
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = or i64 %132, %126
  store i64 %133, i64* %131, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @PAGE_MASK, align 8
  %136 = and i64 %134, %135
  %137 = load i64, i64* @MAS3_SX, align 8
  %138 = or i64 %136, %137
  %139 = load i64, i64* @MAS3_SR, align 8
  %140 = or i64 %138, %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  store i64 %140, i64* %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @_PAGE_RW, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %125
  %151 = load i64, i64* @MAS3_SW, align 8
  br label %153

152:                                              ; preds = %125
  br label %153

153:                                              ; preds = %152, %150
  %154 = phi i64 [ %151, %150 ], [ 0, %152 ]
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = or i64 %160, %154
  store i64 %161, i64* %159, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @_PAGE_USER, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %195

166:                                              ; preds = %153
  %167 = load i32, i32* @MAS3_UX, align 4
  %168 = load i32, i32* @MAS3_UR, align 4
  %169 = or i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = or i64 %176, %170
  store i64 %177, i64* %175, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @_PAGE_RW, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %166
  %183 = load i32, i32* @MAS3_UW, align 4
  br label %185

184:                                              ; preds = %166
  br label %185

185:                                              ; preds = %184, %182
  %186 = phi i32 [ %183, %182 ], [ 0, %184 ]
  %187 = sext i32 %186 to i64
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TLBCAM, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = or i64 %193, %187
  store i64 %194, i64* %192, align 8
  br label %195

195:                                              ; preds = %185, %153
  %196 = load i64, i64* %8, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tlbcam_addrs, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  store i64 %196, i64* %201, align 8
  %202 = load i64, i64* %8, align 8
  %203 = load i32, i32* %10, align 4
  %204 = zext i32 %203 to i64
  %205 = add i64 %202, %204
  %206 = sub i64 %205, 1
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tlbcam_addrs, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 1
  store i64 %206, i64* %211, align 8
  %212 = load i64, i64* %9, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tlbcam_addrs, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  store i64 %212, i64* %217, align 8
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @loadcam_entry(i32 %218)
  ret void
}

declare dso_local i32 @MAS0_TLBSEL(i32) #1

declare dso_local i32 @MAS0_ESEL(i32) #1

declare dso_local i32 @MAS0_NV(i32) #1

declare dso_local i32 @MAS1_TSIZE(i32) #1

declare dso_local i32 @MAS1_TID(i32) #1

declare dso_local i32 @loadcam_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1211}
