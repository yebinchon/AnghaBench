; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_pt_regs_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

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
@BFIN_SP = common dso_local global i64 0, align 8
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
@BFIN_ASTAT = common dso_local global i64 0, align 8
@BFIN_RETS = common dso_local global i64 0, align 8
@BFIN_LC0 = common dso_local global i64 0, align 8
@BFIN_LT0 = common dso_local global i64 0, align 8
@BFIN_LB0 = common dso_local global i64 0, align 8
@BFIN_LC1 = common dso_local global i64 0, align 8
@BFIN_LT1 = common dso_local global i64 0, align 8
@BFIN_LB1 = common dso_local global i64 0, align 8
@BFIN_CYCLES = common dso_local global i64 0, align 8
@BFIN_CYCLES2 = common dso_local global i64 0, align 8
@BFIN_USP = common dso_local global i64 0, align 8
@BFIN_SEQSTAT = common dso_local global i64 0, align 8
@BFIN_SYSCFG = common dso_local global i64 0, align 8
@BFIN_RETI = common dso_local global i64 0, align 8
@BFIN_RETX = common dso_local global i64 0, align 8
@BFIN_RETN = common dso_local global i64 0, align 8
@BFIN_RETE = common dso_local global i64 0, align 8
@BFIN_PC = common dso_local global i64 0, align 8
@BFIN_CC = common dso_local global i64 0, align 8
@BFIN_EXTRA1 = common dso_local global i64 0, align 8
@BFIN_EXTRA2 = common dso_local global i64 0, align 8
@BFIN_EXTRA3 = common dso_local global i64 0, align 8
@BFIN_IPEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt_regs_to_gdb_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* @BFIN_R0, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  store i64 %7, i64* %10, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* @BFIN_R1, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %13, i64* %16, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %3, align 8
  %21 = load i64, i64* @BFIN_R2, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 %19, i64* %22, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %3, align 8
  %27 = load i64, i64* @BFIN_R3, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 %25, i64* %28, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %3, align 8
  %33 = load i64, i64* @BFIN_R4, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %31, i64* %34, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %3, align 8
  %39 = load i64, i64* @BFIN_R5, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %37, i64* %40, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %3, align 8
  %45 = load i64, i64* @BFIN_R6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = load i64, i64* @BFIN_R7, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %49, i64* %52, align 8
  %53 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %3, align 8
  %57 = load i64, i64* @BFIN_P0, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %55, i64* %58, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %3, align 8
  %63 = load i64, i64* @BFIN_P1, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  %65 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %66 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %65, i32 0, i32 10
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %3, align 8
  %69 = load i64, i64* @BFIN_P2, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 %67, i64* %70, align 8
  %71 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 11
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %3, align 8
  %75 = load i64, i64* @BFIN_P3, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %73, i64* %76, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 12
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %3, align 8
  %81 = load i64, i64* @BFIN_P4, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %79, i64* %82, align 8
  %83 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 13
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %3, align 8
  %87 = load i64, i64* @BFIN_P5, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %85, i64* %88, align 8
  %89 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %90 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %89, i32 0, i32 14
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %3, align 8
  %93 = load i64, i64* @BFIN_SP, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64 %91, i64* %94, align 8
  %95 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %96 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %95, i32 0, i32 15
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %3, align 8
  %99 = load i64, i64* @BFIN_FP, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %100, align 8
  %101 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 16
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %3, align 8
  %105 = load i64, i64* @BFIN_I0, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  store i64 %103, i64* %106, align 8
  %107 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %108 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %107, i32 0, i32 17
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %3, align 8
  %111 = load i64, i64* @BFIN_I1, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %109, i64* %112, align 8
  %113 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %114 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %113, i32 0, i32 18
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %3, align 8
  %117 = load i64, i64* @BFIN_I2, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64 %115, i64* %118, align 8
  %119 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %120 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %119, i32 0, i32 19
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %3, align 8
  %123 = load i64, i64* @BFIN_I3, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  store i64 %121, i64* %124, align 8
  %125 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %126 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %125, i32 0, i32 20
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %3, align 8
  %129 = load i64, i64* @BFIN_M0, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  store i64 %127, i64* %130, align 8
  %131 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 21
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %3, align 8
  %135 = load i64, i64* @BFIN_M1, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 %133, i64* %136, align 8
  %137 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %138 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %137, i32 0, i32 22
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %3, align 8
  %141 = load i64, i64* @BFIN_M2, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64 %139, i64* %142, align 8
  %143 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %144 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %143, i32 0, i32 23
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %3, align 8
  %147 = load i64, i64* @BFIN_M3, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  store i64 %145, i64* %148, align 8
  %149 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %150 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %149, i32 0, i32 24
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %3, align 8
  %153 = load i64, i64* @BFIN_B0, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  store i64 %151, i64* %154, align 8
  %155 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %156 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %155, i32 0, i32 25
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %3, align 8
  %159 = load i64, i64* @BFIN_B1, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  store i64 %157, i64* %160, align 8
  %161 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %162 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %161, i32 0, i32 26
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %3, align 8
  %165 = load i64, i64* @BFIN_B2, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 %163, i64* %166, align 8
  %167 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %168 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %167, i32 0, i32 27
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %3, align 8
  %171 = load i64, i64* @BFIN_B3, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  store i64 %169, i64* %172, align 8
  %173 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %174 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %173, i32 0, i32 28
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** %3, align 8
  %177 = load i64, i64* @BFIN_L0, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  store i64 %175, i64* %178, align 8
  %179 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %180 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %179, i32 0, i32 29
  %181 = load i64, i64* %180, align 8
  %182 = load i64*, i64** %3, align 8
  %183 = load i64, i64* @BFIN_L1, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  store i64 %181, i64* %184, align 8
  %185 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %186 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %185, i32 0, i32 30
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** %3, align 8
  %189 = load i64, i64* @BFIN_L2, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  store i64 %187, i64* %190, align 8
  %191 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %192 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %191, i32 0, i32 31
  %193 = load i64, i64* %192, align 8
  %194 = load i64*, i64** %3, align 8
  %195 = load i64, i64* @BFIN_L3, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  store i64 %193, i64* %196, align 8
  %197 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %198 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %197, i32 0, i32 32
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %3, align 8
  %201 = load i64, i64* @BFIN_A0_DOT_X, align 8
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  store i64 %199, i64* %202, align 8
  %203 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %204 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %203, i32 0, i32 33
  %205 = load i64, i64* %204, align 8
  %206 = load i64*, i64** %3, align 8
  %207 = load i64, i64* @BFIN_A0_DOT_W, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 %205, i64* %208, align 8
  %209 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %210 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %209, i32 0, i32 34
  %211 = load i64, i64* %210, align 8
  %212 = load i64*, i64** %3, align 8
  %213 = load i64, i64* @BFIN_A1_DOT_X, align 8
  %214 = getelementptr inbounds i64, i64* %212, i64 %213
  store i64 %211, i64* %214, align 8
  %215 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %216 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %215, i32 0, i32 35
  %217 = load i64, i64* %216, align 8
  %218 = load i64*, i64** %3, align 8
  %219 = load i64, i64* @BFIN_A1_DOT_W, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  store i64 %217, i64* %220, align 8
  %221 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %222 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %221, i32 0, i32 36
  %223 = load i64, i64* %222, align 8
  %224 = load i64*, i64** %3, align 8
  %225 = load i64, i64* @BFIN_ASTAT, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  store i64 %223, i64* %226, align 8
  %227 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %228 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %227, i32 0, i32 37
  %229 = load i64, i64* %228, align 8
  %230 = load i64*, i64** %3, align 8
  %231 = load i64, i64* @BFIN_RETS, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  store i64 %229, i64* %232, align 8
  %233 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %234 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %233, i32 0, i32 38
  %235 = load i64, i64* %234, align 8
  %236 = load i64*, i64** %3, align 8
  %237 = load i64, i64* @BFIN_LC0, align 8
  %238 = getelementptr inbounds i64, i64* %236, i64 %237
  store i64 %235, i64* %238, align 8
  %239 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %240 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %239, i32 0, i32 39
  %241 = load i64, i64* %240, align 8
  %242 = load i64*, i64** %3, align 8
  %243 = load i64, i64* @BFIN_LT0, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  store i64 %241, i64* %244, align 8
  %245 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %246 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %245, i32 0, i32 40
  %247 = load i64, i64* %246, align 8
  %248 = load i64*, i64** %3, align 8
  %249 = load i64, i64* @BFIN_LB0, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  store i64 %247, i64* %250, align 8
  %251 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %252 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %251, i32 0, i32 41
  %253 = load i64, i64* %252, align 8
  %254 = load i64*, i64** %3, align 8
  %255 = load i64, i64* @BFIN_LC1, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  store i64 %253, i64* %256, align 8
  %257 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %258 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %257, i32 0, i32 42
  %259 = load i64, i64* %258, align 8
  %260 = load i64*, i64** %3, align 8
  %261 = load i64, i64* @BFIN_LT1, align 8
  %262 = getelementptr inbounds i64, i64* %260, i64 %261
  store i64 %259, i64* %262, align 8
  %263 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %264 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %263, i32 0, i32 43
  %265 = load i64, i64* %264, align 8
  %266 = load i64*, i64** %3, align 8
  %267 = load i64, i64* @BFIN_LB1, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  store i64 %265, i64* %268, align 8
  %269 = load i64*, i64** %3, align 8
  %270 = load i64, i64* @BFIN_CYCLES, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  store i64 0, i64* %271, align 8
  %272 = load i64*, i64** %3, align 8
  %273 = load i64, i64* @BFIN_CYCLES2, align 8
  %274 = getelementptr inbounds i64, i64* %272, i64 %273
  store i64 0, i64* %274, align 8
  %275 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %276 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %275, i32 0, i32 44
  %277 = load i64, i64* %276, align 8
  %278 = load i64*, i64** %3, align 8
  %279 = load i64, i64* @BFIN_USP, align 8
  %280 = getelementptr inbounds i64, i64* %278, i64 %279
  store i64 %277, i64* %280, align 8
  %281 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %282 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %281, i32 0, i32 45
  %283 = load i64, i64* %282, align 8
  %284 = load i64*, i64** %3, align 8
  %285 = load i64, i64* @BFIN_SEQSTAT, align 8
  %286 = getelementptr inbounds i64, i64* %284, i64 %285
  store i64 %283, i64* %286, align 8
  %287 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %288 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %287, i32 0, i32 46
  %289 = load i64, i64* %288, align 8
  %290 = load i64*, i64** %3, align 8
  %291 = load i64, i64* @BFIN_SYSCFG, align 8
  %292 = getelementptr inbounds i64, i64* %290, i64 %291
  store i64 %289, i64* %292, align 8
  %293 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %294 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %293, i32 0, i32 47
  %295 = load i64, i64* %294, align 8
  %296 = load i64*, i64** %3, align 8
  %297 = load i64, i64* @BFIN_RETI, align 8
  %298 = getelementptr inbounds i64, i64* %296, i64 %297
  store i64 %295, i64* %298, align 8
  %299 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %300 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %299, i32 0, i32 48
  %301 = load i64, i64* %300, align 8
  %302 = load i64*, i64** %3, align 8
  %303 = load i64, i64* @BFIN_RETX, align 8
  %304 = getelementptr inbounds i64, i64* %302, i64 %303
  store i64 %301, i64* %304, align 8
  %305 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %306 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %305, i32 0, i32 49
  %307 = load i64, i64* %306, align 8
  %308 = load i64*, i64** %3, align 8
  %309 = load i64, i64* @BFIN_RETN, align 8
  %310 = getelementptr inbounds i64, i64* %308, i64 %309
  store i64 %307, i64* %310, align 8
  %311 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %312 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %311, i32 0, i32 50
  %313 = load i64, i64* %312, align 8
  %314 = load i64*, i64** %3, align 8
  %315 = load i64, i64* @BFIN_RETE, align 8
  %316 = getelementptr inbounds i64, i64* %314, i64 %315
  store i64 %313, i64* %316, align 8
  %317 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %318 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %317, i32 0, i32 47
  %319 = load i64, i64* %318, align 8
  %320 = load i64*, i64** %3, align 8
  %321 = load i64, i64* @BFIN_PC, align 8
  %322 = getelementptr inbounds i64, i64* %320, i64 %321
  store i64 %319, i64* %322, align 8
  %323 = load i64*, i64** %3, align 8
  %324 = load i64, i64* @BFIN_CC, align 8
  %325 = getelementptr inbounds i64, i64* %323, i64 %324
  store i64 0, i64* %325, align 8
  %326 = load i64*, i64** %3, align 8
  %327 = load i64, i64* @BFIN_EXTRA1, align 8
  %328 = getelementptr inbounds i64, i64* %326, i64 %327
  store i64 0, i64* %328, align 8
  %329 = load i64*, i64** %3, align 8
  %330 = load i64, i64* @BFIN_EXTRA2, align 8
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  store i64 0, i64* %331, align 8
  %332 = load i64*, i64** %3, align 8
  %333 = load i64, i64* @BFIN_EXTRA3, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  store i64 0, i64* %334, align 8
  %335 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %336 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %335, i32 0, i32 51
  %337 = load i64, i64* %336, align 8
  %338 = load i64*, i64** %3, align 8
  %339 = load i64, i64* @BFIN_IPEND, align 8
  %340 = getelementptr inbounds i64, i64* %338, i64 %339
  store i64 %337, i64* %340, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
