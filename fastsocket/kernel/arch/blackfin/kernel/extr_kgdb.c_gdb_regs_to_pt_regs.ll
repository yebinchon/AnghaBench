; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@BFIN_R0 = common dso_local global i64 0, align 8
@BFIN_R1 = common dso_local global i64 0, align 8
@BFIN_R2 = common dso_local global i64 0, align 8
@BFIN_R3 = common dso_local global i64 0, align 8
@BFIN_R4 = common dso_local global i64 0, align 8
@BFIN_R5 = common dso_local global i64 0, align 8
@BFIN_R6 = common dso_local global i64 0, align 8
@BFIN_R7 = common dso_local global i64 0, align 8
@BFIN_P0 = common dso_local global i64 0, align 8
@BFIN_P1 = common dso_local global i64 0, align 8
@BFIN_P2 = common dso_local global i64 0, align 8
@BFIN_P3 = common dso_local global i64 0, align 8
@BFIN_P4 = common dso_local global i64 0, align 8
@BFIN_P5 = common dso_local global i64 0, align 8
@BFIN_FP = common dso_local global i64 0, align 8
@BFIN_I0 = common dso_local global i64 0, align 8
@BFIN_I1 = common dso_local global i64 0, align 8
@BFIN_I2 = common dso_local global i64 0, align 8
@BFIN_I3 = common dso_local global i64 0, align 8
@BFIN_M0 = common dso_local global i64 0, align 8
@BFIN_M1 = common dso_local global i64 0, align 8
@BFIN_M2 = common dso_local global i64 0, align 8
@BFIN_M3 = common dso_local global i64 0, align 8
@BFIN_B0 = common dso_local global i64 0, align 8
@BFIN_B1 = common dso_local global i64 0, align 8
@BFIN_B2 = common dso_local global i64 0, align 8
@BFIN_B3 = common dso_local global i64 0, align 8
@BFIN_L0 = common dso_local global i64 0, align 8
@BFIN_L1 = common dso_local global i64 0, align 8
@BFIN_L2 = common dso_local global i64 0, align 8
@BFIN_L3 = common dso_local global i64 0, align 8
@BFIN_A0_DOT_X = common dso_local global i64 0, align 8
@BFIN_A0_DOT_W = common dso_local global i64 0, align 8
@BFIN_A1_DOT_X = common dso_local global i64 0, align 8
@BFIN_A1_DOT_W = common dso_local global i64 0, align 8
@BFIN_RETS = common dso_local global i64 0, align 8
@BFIN_LC0 = common dso_local global i64 0, align 8
@BFIN_LT0 = common dso_local global i64 0, align 8
@BFIN_LB0 = common dso_local global i64 0, align 8
@BFIN_LC1 = common dso_local global i64 0, align 8
@BFIN_LT1 = common dso_local global i64 0, align 8
@BFIN_LB1 = common dso_local global i64 0, align 8
@BFIN_USP = common dso_local global i64 0, align 8
@BFIN_SYSCFG = common dso_local global i64 0, align 8
@BFIN_PC = common dso_local global i64 0, align 8
@BFIN_RETN = common dso_local global i64 0, align 8
@BFIN_RETE = common dso_local global i64 0, align 8
@BFIN_ASTAT = common dso_local global i64 0, align 8
@BFIN_IPEND = common dso_local global i64 0, align 8
@BFIN_SEQSTAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_regs_to_pt_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = load i64, i64* @BFIN_R0, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = load i64, i64* @BFIN_R1, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* @BFIN_R2, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = load i64, i64* @BFIN_R3, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load i64*, i64** %3, align 8
  %30 = load i64, i64* @BFIN_R4, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load i64*, i64** %3, align 8
  %36 = load i64, i64* @BFIN_R5, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = load i64, i64* @BFIN_R6, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 6
  store i64 %44, i64* %46, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = load i64, i64* @BFIN_R7, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 7
  store i64 %50, i64* %52, align 8
  %53 = load i64*, i64** %3, align 8
  %54 = load i64, i64* @BFIN_P0, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 8
  store i64 %56, i64* %58, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = load i64, i64* @BFIN_P1, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 9
  store i64 %62, i64* %64, align 8
  %65 = load i64*, i64** %3, align 8
  %66 = load i64, i64* @BFIN_P2, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 10
  store i64 %68, i64* %70, align 8
  %71 = load i64*, i64** %3, align 8
  %72 = load i64, i64* @BFIN_P3, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %76 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %75, i32 0, i32 11
  store i64 %74, i64* %76, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = load i64, i64* @BFIN_P4, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %82 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %81, i32 0, i32 12
  store i64 %80, i64* %82, align 8
  %83 = load i64*, i64** %3, align 8
  %84 = load i64, i64* @BFIN_P5, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 13
  store i64 %86, i64* %88, align 8
  %89 = load i64*, i64** %3, align 8
  %90 = load i64, i64* @BFIN_FP, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %94 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %93, i32 0, i32 14
  store i64 %92, i64* %94, align 8
  %95 = load i64*, i64** %3, align 8
  %96 = load i64, i64* @BFIN_I0, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %100 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %99, i32 0, i32 15
  store i64 %98, i64* %100, align 8
  %101 = load i64*, i64** %3, align 8
  %102 = load i64, i64* @BFIN_I1, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %106 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %105, i32 0, i32 16
  store i64 %104, i64* %106, align 8
  %107 = load i64*, i64** %3, align 8
  %108 = load i64, i64* @BFIN_I2, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 17
  store i64 %110, i64* %112, align 8
  %113 = load i64*, i64** %3, align 8
  %114 = load i64, i64* @BFIN_I3, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %118 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %117, i32 0, i32 18
  store i64 %116, i64* %118, align 8
  %119 = load i64*, i64** %3, align 8
  %120 = load i64, i64* @BFIN_M0, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %124 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %123, i32 0, i32 19
  store i64 %122, i64* %124, align 8
  %125 = load i64*, i64** %3, align 8
  %126 = load i64, i64* @BFIN_M1, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %130 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %129, i32 0, i32 20
  store i64 %128, i64* %130, align 8
  %131 = load i64*, i64** %3, align 8
  %132 = load i64, i64* @BFIN_M2, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %136 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %135, i32 0, i32 21
  store i64 %134, i64* %136, align 8
  %137 = load i64*, i64** %3, align 8
  %138 = load i64, i64* @BFIN_M3, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %142 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %141, i32 0, i32 22
  store i64 %140, i64* %142, align 8
  %143 = load i64*, i64** %3, align 8
  %144 = load i64, i64* @BFIN_B0, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %148 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %147, i32 0, i32 23
  store i64 %146, i64* %148, align 8
  %149 = load i64*, i64** %3, align 8
  %150 = load i64, i64* @BFIN_B1, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %154 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %153, i32 0, i32 24
  store i64 %152, i64* %154, align 8
  %155 = load i64*, i64** %3, align 8
  %156 = load i64, i64* @BFIN_B2, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %160 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %159, i32 0, i32 25
  store i64 %158, i64* %160, align 8
  %161 = load i64*, i64** %3, align 8
  %162 = load i64, i64* @BFIN_B3, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %166 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %165, i32 0, i32 26
  store i64 %164, i64* %166, align 8
  %167 = load i64*, i64** %3, align 8
  %168 = load i64, i64* @BFIN_L0, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %172 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %171, i32 0, i32 27
  store i64 %170, i64* %172, align 8
  %173 = load i64*, i64** %3, align 8
  %174 = load i64, i64* @BFIN_L1, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %178 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %177, i32 0, i32 28
  store i64 %176, i64* %178, align 8
  %179 = load i64*, i64** %3, align 8
  %180 = load i64, i64* @BFIN_L2, align 8
  %181 = getelementptr inbounds i64, i64* %179, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %184 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %183, i32 0, i32 29
  store i64 %182, i64* %184, align 8
  %185 = load i64*, i64** %3, align 8
  %186 = load i64, i64* @BFIN_L3, align 8
  %187 = getelementptr inbounds i64, i64* %185, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %190 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %189, i32 0, i32 30
  store i64 %188, i64* %190, align 8
  %191 = load i64*, i64** %3, align 8
  %192 = load i64, i64* @BFIN_A0_DOT_X, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %196 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %195, i32 0, i32 31
  store i64 %194, i64* %196, align 8
  %197 = load i64*, i64** %3, align 8
  %198 = load i64, i64* @BFIN_A0_DOT_W, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %202 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %201, i32 0, i32 32
  store i64 %200, i64* %202, align 8
  %203 = load i64*, i64** %3, align 8
  %204 = load i64, i64* @BFIN_A1_DOT_X, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %208 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %207, i32 0, i32 33
  store i64 %206, i64* %208, align 8
  %209 = load i64*, i64** %3, align 8
  %210 = load i64, i64* @BFIN_A1_DOT_W, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %214 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %213, i32 0, i32 34
  store i64 %212, i64* %214, align 8
  %215 = load i64*, i64** %3, align 8
  %216 = load i64, i64* @BFIN_RETS, align 8
  %217 = getelementptr inbounds i64, i64* %215, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %220 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %219, i32 0, i32 35
  store i64 %218, i64* %220, align 8
  %221 = load i64*, i64** %3, align 8
  %222 = load i64, i64* @BFIN_LC0, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %226 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %225, i32 0, i32 36
  store i64 %224, i64* %226, align 8
  %227 = load i64*, i64** %3, align 8
  %228 = load i64, i64* @BFIN_LT0, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %232 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %231, i32 0, i32 37
  store i64 %230, i64* %232, align 8
  %233 = load i64*, i64** %3, align 8
  %234 = load i64, i64* @BFIN_LB0, align 8
  %235 = getelementptr inbounds i64, i64* %233, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %238 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %237, i32 0, i32 38
  store i64 %236, i64* %238, align 8
  %239 = load i64*, i64** %3, align 8
  %240 = load i64, i64* @BFIN_LC1, align 8
  %241 = getelementptr inbounds i64, i64* %239, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %244 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %243, i32 0, i32 39
  store i64 %242, i64* %244, align 8
  %245 = load i64*, i64** %3, align 8
  %246 = load i64, i64* @BFIN_LT1, align 8
  %247 = getelementptr inbounds i64, i64* %245, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %250 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %249, i32 0, i32 40
  store i64 %248, i64* %250, align 8
  %251 = load i64*, i64** %3, align 8
  %252 = load i64, i64* @BFIN_LB1, align 8
  %253 = getelementptr inbounds i64, i64* %251, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %256 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %255, i32 0, i32 41
  store i64 %254, i64* %256, align 8
  %257 = load i64*, i64** %3, align 8
  %258 = load i64, i64* @BFIN_USP, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %262 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %261, i32 0, i32 42
  store i64 %260, i64* %262, align 8
  %263 = load i64*, i64** %3, align 8
  %264 = load i64, i64* @BFIN_SYSCFG, align 8
  %265 = getelementptr inbounds i64, i64* %263, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %268 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %267, i32 0, i32 43
  store i64 %266, i64* %268, align 8
  %269 = load i64*, i64** %3, align 8
  %270 = load i64, i64* @BFIN_PC, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %274 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %273, i32 0, i32 44
  store i64 %272, i64* %274, align 8
  %275 = load i64*, i64** %3, align 8
  %276 = load i64, i64* @BFIN_RETN, align 8
  %277 = getelementptr inbounds i64, i64* %275, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %280 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %279, i32 0, i32 45
  store i64 %278, i64* %280, align 8
  %281 = load i64*, i64** %3, align 8
  %282 = load i64, i64* @BFIN_RETE, align 8
  %283 = getelementptr inbounds i64, i64* %281, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %286 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %285, i32 0, i32 46
  store i64 %284, i64* %286, align 8
  %287 = load i64*, i64** %3, align 8
  %288 = load i64, i64* @BFIN_PC, align 8
  %289 = getelementptr inbounds i64, i64* %287, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %292 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %291, i32 0, i32 47
  store i64 %290, i64* %292, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
