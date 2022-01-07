; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_DisplayRegisterContents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_DisplayRegisterContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Displaying register content \0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt raw transfer              0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt raw block                 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt raw src transfer          0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt raw dst transfer          0x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt raw error                 0x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"--------------------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt stat transfer             0x%X\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt stat block                0x%X\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt stat src transfer         0x%X\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt stat dst transfer         0x%X\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt stat error                0x%X\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt mask transfer             0x%X\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt mask block                0x%X\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt mask src transfer         0x%X\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt mask dst transfer         0x%X\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt mask error                0x%X\0A\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt clear transfer            0x%X\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt clear block               0x%X\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt clear src transfer        0x%X\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt clear dst transfer        0x%X\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"Module %d: Interrupt clear error               0x%X\0A\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"Module %d: SW source req                       0x%X\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"Module %d: SW dest req                         0x%X\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"Module %d: SW source signal                    0x%X\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"Module %d: SW dest signal                      0x%X\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"Module %d: SW source last                      0x%X\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"Module %d: SW dest last                        0x%X\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"Module %d: misc config                         0x%X\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"Module %d: misc channel enable                 0x%X\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"Module %d: misc ID                             0x%X\0A\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"Module %d: misc test                           0x%X\0A\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Source                   0x%X\0A\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Destination              0x%X\0A\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d LLP                      0x%X\0A\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Control (LO)             0x%X\0A\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Control (HI)             0x%X\0A\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Source Stats             0x%X\0A\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Dest Stats               0x%X\0A\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Source Stats Addr        0x%X\0A\00", align 1
@.str.40 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Dest Stats Addr          0x%X\0A\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Config (LO)              0x%X\0A\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"Module %d: Channel %d Config (HI)              0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32 (i8*, ...)*)* @DisplayRegisterContents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DisplayRegisterContents(i32 %0, i32 %1, i32 (i8*, ...)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32 (i8*, ...)*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 (i8*, ...)* %2, i32 (i8*, ...)** %6, align 8
  %8 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %9 = call i32 (i8*, ...) %8(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @dmacHw_REG_INT_RAW_TRAN(i32 %12)
  %14 = trunc i64 %13 to i32
  %15 = call i32 (i8*, ...) %10(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @dmacHw_REG_INT_RAW_BLOCK(i32 %18)
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i8*, ...) %16(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @dmacHw_REG_INT_RAW_STRAN(i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) %22(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @dmacHw_REG_INT_RAW_DTRAN(i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i8*, ...) %28(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @dmacHw_REG_INT_RAW_ERROR(i32 %36)
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, ...) %34(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %41 = call i32 (i8*, ...) %40(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @dmacHw_REG_INT_STAT_TRAN(i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i8*, ...) %42(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @dmacHw_REG_INT_STAT_BLOCK(i32 %50)
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, ...) %48(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @dmacHw_REG_INT_STAT_STRAN(i32 %56)
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i8*, ...) %54(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @dmacHw_REG_INT_STAT_DTRAN(i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i8*, ...) %60(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @dmacHw_REG_INT_STAT_ERROR(i32 %68)
  %70 = trunc i64 %69 to i32
  %71 = call i32 (i8*, ...) %66(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %73 = call i32 (i8*, ...) %72(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @dmacHw_REG_INT_MASK_TRAN(i32 %76)
  %78 = trunc i64 %77 to i32
  %79 = call i32 (i8*, ...) %74(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @dmacHw_REG_INT_MASK_BLOCK(i32 %82)
  %84 = trunc i64 %83 to i32
  %85 = call i32 (i8*, ...) %80(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i64 @dmacHw_REG_INT_MASK_STRAN(i32 %88)
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i8*, ...) %86(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %87, i32 %90)
  %92 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @dmacHw_REG_INT_MASK_DTRAN(i32 %94)
  %96 = trunc i64 %95 to i32
  %97 = call i32 (i8*, ...) %92(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i64 @dmacHw_REG_INT_MASK_ERROR(i32 %100)
  %102 = trunc i64 %101 to i32
  %103 = call i32 (i8*, ...) %98(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %105 = call i32 (i8*, ...) %104(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @dmacHw_REG_INT_CLEAR_TRAN(i32 %108)
  %110 = trunc i64 %109 to i32
  %111 = call i32 (i8*, ...) %106(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i64 @dmacHw_REG_INT_CLEAR_BLOCK(i32 %114)
  %116 = trunc i64 %115 to i32
  %117 = call i32 (i8*, ...) %112(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i64 @dmacHw_REG_INT_CLEAR_STRAN(i32 %120)
  %122 = trunc i64 %121 to i32
  %123 = call i32 (i8*, ...) %118(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0), i32 %119, i32 %122)
  %124 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i64 @dmacHw_REG_INT_CLEAR_DTRAN(i32 %126)
  %128 = trunc i64 %127 to i32
  %129 = call i32 (i8*, ...) %124(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i32 %125, i32 %128)
  %130 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i64 @dmacHw_REG_INT_CLEAR_ERROR(i32 %132)
  %134 = trunc i64 %133 to i32
  %135 = call i32 (i8*, ...) %130(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 %131, i32 %134)
  %136 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %137 = call i32 (i8*, ...) %136(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %138 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i64 @dmacHw_REG_SW_HS_SRC_REQ(i32 %140)
  %142 = trunc i64 %141 to i32
  %143 = call i32 (i8*, ...) %138(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i64 @dmacHw_REG_SW_HS_DST_REQ(i32 %146)
  %148 = trunc i64 %147 to i32
  %149 = call i32 (i8*, ...) %144(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0), i32 %145, i32 %148)
  %150 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = call i64 @dmacHw_REG_SW_HS_SRC_SGL_REQ(i32 %152)
  %154 = trunc i64 %153 to i32
  %155 = call i32 (i8*, ...) %150(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i64 @dmacHw_REG_SW_HS_DST_SGL_REQ(i32 %158)
  %160 = trunc i64 %159 to i32
  %161 = call i32 (i8*, ...) %156(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i32 %157, i32 %160)
  %162 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = call i64 @dmacHw_REG_SW_HS_SRC_LST_REQ(i32 %164)
  %166 = trunc i64 %165 to i32
  %167 = call i32 (i8*, ...) %162(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0), i32 %163, i32 %166)
  %168 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i64 @dmacHw_REG_SW_HS_DST_LST_REQ(i32 %170)
  %172 = trunc i64 %171 to i32
  %173 = call i32 (i8*, ...) %168(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0), i32 %169, i32 %172)
  %174 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %175 = call i32 (i8*, ...) %174(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %176 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %4, align 4
  %179 = call i64 @dmacHw_REG_MISC_CFG(i32 %178)
  %180 = trunc i64 %179 to i32
  %181 = call i32 (i8*, ...) %176(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0), i32 %177, i32 %180)
  %182 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* %4, align 4
  %185 = call i64 @dmacHw_REG_MISC_CH_ENABLE(i32 %184)
  %186 = trunc i64 %185 to i32
  %187 = call i32 (i8*, ...) %182(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i64 0, i64 0), i32 %183, i32 %186)
  %188 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* %4, align 4
  %191 = call i64 @dmacHw_REG_MISC_ID(i32 %190)
  %192 = trunc i64 %191 to i32
  %193 = call i32 (i8*, ...) %188(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i64 0, i64 0), i32 %189, i32 %192)
  %194 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* %4, align 4
  %197 = call i64 @dmacHw_REG_MISC_TEST(i32 %196)
  %198 = trunc i64 %197 to i32
  %199 = call i32 (i8*, ...) %194(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.31, i64 0, i64 0), i32 %195, i32 %198)
  %200 = load i32, i32* %5, align 4
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %301

202:                                              ; preds = %3
  store i32 0, i32* %7, align 4
  br label %203

203:                                              ; preds = %297, %202
  %204 = load i32, i32* %7, align 4
  %205 = icmp slt i32 %204, 8
  br i1 %205, label %206, label %300

206:                                              ; preds = %203
  %207 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %208 = call i32 (i8*, ...) %207(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %209 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %7, align 4
  %214 = call i64 @dmacHw_REG_SAR(i32 %212, i32 %213)
  %215 = trunc i64 %214 to i32
  %216 = call i32 (i8*, ...) %209(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i64 0, i64 0), i32 %210, i32 %211, i32 %215)
  %217 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* %7, align 4
  %222 = call i64 @dmacHw_REG_DAR(i32 %220, i32 %221)
  %223 = trunc i64 %222 to i32
  %224 = call i32 (i8*, ...) %217(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.33, i64 0, i64 0), i32 %218, i32 %219, i32 %223)
  %225 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* %7, align 4
  %230 = call i64 @dmacHw_REG_LLP(i32 %228, i32 %229)
  %231 = trunc i64 %230 to i32
  %232 = call i32 (i8*, ...) %225(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.34, i64 0, i64 0), i32 %226, i32 %227, i32 %231)
  %233 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* %7, align 4
  %238 = call i64 @dmacHw_REG_CTL_LO(i32 %236, i32 %237)
  %239 = trunc i64 %238 to i32
  %240 = call i32 (i8*, ...) %233(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i64 0, i64 0), i32 %234, i32 %235, i32 %239)
  %241 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* %7, align 4
  %246 = call i64 @dmacHw_REG_CTL_HI(i32 %244, i32 %245)
  %247 = trunc i64 %246 to i32
  %248 = call i32 (i8*, ...) %241(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i64 0, i64 0), i32 %242, i32 %243, i32 %247)
  %249 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* %7, align 4
  %254 = call i64 @dmacHw_REG_SSTAT(i32 %252, i32 %253)
  %255 = trunc i64 %254 to i32
  %256 = call i32 (i8*, ...) %249(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0), i32 %250, i32 %251, i32 %255)
  %257 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* %7, align 4
  %262 = call i64 @dmacHw_REG_DSTAT(i32 %260, i32 %261)
  %263 = trunc i64 %262 to i32
  %264 = call i32 (i8*, ...) %257(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i64 0, i64 0), i32 %258, i32 %259, i32 %263)
  %265 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* %7, align 4
  %270 = call i64 @dmacHw_REG_SSTATAR(i32 %268, i32 %269)
  %271 = trunc i64 %270 to i32
  %272 = call i32 (i8*, ...) %265(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i64 0, i64 0), i32 %266, i32 %267, i32 %271)
  %273 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %274 = load i32, i32* %4, align 4
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* %4, align 4
  %277 = load i32, i32* %7, align 4
  %278 = call i64 @dmacHw_REG_DSTATAR(i32 %276, i32 %277)
  %279 = trunc i64 %278 to i32
  %280 = call i32 (i8*, ...) %273(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.40, i64 0, i64 0), i32 %274, i32 %275, i32 %279)
  %281 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* %4, align 4
  %285 = load i32, i32* %7, align 4
  %286 = call i64 @dmacHw_REG_CFG_LO(i32 %284, i32 %285)
  %287 = trunc i64 %286 to i32
  %288 = call i32 (i8*, ...) %281(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i64 0, i64 0), i32 %282, i32 %283, i32 %287)
  %289 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %290 = load i32, i32* %4, align 4
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* %4, align 4
  %293 = load i32, i32* %7, align 4
  %294 = call i64 @dmacHw_REG_CFG_HI(i32 %292, i32 %293)
  %295 = trunc i64 %294 to i32
  %296 = call i32 (i8*, ...) %289(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i64 0, i64 0), i32 %290, i32 %291, i32 %295)
  br label %297

297:                                              ; preds = %206
  %298 = load i32, i32* %7, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %7, align 4
  br label %203

300:                                              ; preds = %203
  br label %393

301:                                              ; preds = %3
  %302 = load i32, i32* %5, align 4
  store i32 %302, i32* %7, align 4
  %303 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %304 = call i32 (i8*, ...) %303(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %305 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %306 = load i32, i32* %4, align 4
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* %7, align 4
  %310 = call i64 @dmacHw_REG_SAR(i32 %308, i32 %309)
  %311 = trunc i64 %310 to i32
  %312 = call i32 (i8*, ...) %305(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i64 0, i64 0), i32 %306, i32 %307, i32 %311)
  %313 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* %7, align 4
  %318 = call i64 @dmacHw_REG_DAR(i32 %316, i32 %317)
  %319 = trunc i64 %318 to i32
  %320 = call i32 (i8*, ...) %313(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.33, i64 0, i64 0), i32 %314, i32 %315, i32 %319)
  %321 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %322 = load i32, i32* %4, align 4
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* %4, align 4
  %325 = load i32, i32* %7, align 4
  %326 = call i64 @dmacHw_REG_LLP(i32 %324, i32 %325)
  %327 = trunc i64 %326 to i32
  %328 = call i32 (i8*, ...) %321(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.34, i64 0, i64 0), i32 %322, i32 %323, i32 %327)
  %329 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %330 = load i32, i32* %4, align 4
  %331 = load i32, i32* %7, align 4
  %332 = load i32, i32* %4, align 4
  %333 = load i32, i32* %7, align 4
  %334 = call i64 @dmacHw_REG_CTL_LO(i32 %332, i32 %333)
  %335 = trunc i64 %334 to i32
  %336 = call i32 (i8*, ...) %329(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i64 0, i64 0), i32 %330, i32 %331, i32 %335)
  %337 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %338 = load i32, i32* %4, align 4
  %339 = load i32, i32* %7, align 4
  %340 = load i32, i32* %4, align 4
  %341 = load i32, i32* %7, align 4
  %342 = call i64 @dmacHw_REG_CTL_HI(i32 %340, i32 %341)
  %343 = trunc i64 %342 to i32
  %344 = call i32 (i8*, ...) %337(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i64 0, i64 0), i32 %338, i32 %339, i32 %343)
  %345 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %346 = load i32, i32* %4, align 4
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* %4, align 4
  %349 = load i32, i32* %7, align 4
  %350 = call i64 @dmacHw_REG_SSTAT(i32 %348, i32 %349)
  %351 = trunc i64 %350 to i32
  %352 = call i32 (i8*, ...) %345(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0), i32 %346, i32 %347, i32 %351)
  %353 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %354 = load i32, i32* %4, align 4
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* %4, align 4
  %357 = load i32, i32* %7, align 4
  %358 = call i64 @dmacHw_REG_DSTAT(i32 %356, i32 %357)
  %359 = trunc i64 %358 to i32
  %360 = call i32 (i8*, ...) %353(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i64 0, i64 0), i32 %354, i32 %355, i32 %359)
  %361 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %362 = load i32, i32* %4, align 4
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* %4, align 4
  %365 = load i32, i32* %7, align 4
  %366 = call i64 @dmacHw_REG_SSTATAR(i32 %364, i32 %365)
  %367 = trunc i64 %366 to i32
  %368 = call i32 (i8*, ...) %361(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i64 0, i64 0), i32 %362, i32 %363, i32 %367)
  %369 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %370 = load i32, i32* %4, align 4
  %371 = load i32, i32* %7, align 4
  %372 = load i32, i32* %4, align 4
  %373 = load i32, i32* %7, align 4
  %374 = call i64 @dmacHw_REG_DSTATAR(i32 %372, i32 %373)
  %375 = trunc i64 %374 to i32
  %376 = call i32 (i8*, ...) %369(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.40, i64 0, i64 0), i32 %370, i32 %371, i32 %375)
  %377 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %378 = load i32, i32* %4, align 4
  %379 = load i32, i32* %7, align 4
  %380 = load i32, i32* %4, align 4
  %381 = load i32, i32* %7, align 4
  %382 = call i64 @dmacHw_REG_CFG_LO(i32 %380, i32 %381)
  %383 = trunc i64 %382 to i32
  %384 = call i32 (i8*, ...) %377(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i64 0, i64 0), i32 %378, i32 %379, i32 %383)
  %385 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %386 = load i32, i32* %4, align 4
  %387 = load i32, i32* %7, align 4
  %388 = load i32, i32* %4, align 4
  %389 = load i32, i32* %7, align 4
  %390 = call i64 @dmacHw_REG_CFG_HI(i32 %388, i32 %389)
  %391 = trunc i64 %390 to i32
  %392 = call i32 (i8*, ...) %385(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i64 0, i64 0), i32 %386, i32 %387, i32 %391)
  br label %393

393:                                              ; preds = %301, %300
  ret void
}

declare dso_local i64 @dmacHw_REG_INT_RAW_TRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_RAW_BLOCK(i32) #1

declare dso_local i64 @dmacHw_REG_INT_RAW_STRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_RAW_DTRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_RAW_ERROR(i32) #1

declare dso_local i64 @dmacHw_REG_INT_STAT_TRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_STAT_BLOCK(i32) #1

declare dso_local i64 @dmacHw_REG_INT_STAT_STRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_STAT_DTRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_STAT_ERROR(i32) #1

declare dso_local i64 @dmacHw_REG_INT_MASK_TRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_MASK_BLOCK(i32) #1

declare dso_local i64 @dmacHw_REG_INT_MASK_STRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_MASK_DTRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_MASK_ERROR(i32) #1

declare dso_local i64 @dmacHw_REG_INT_CLEAR_TRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_CLEAR_BLOCK(i32) #1

declare dso_local i64 @dmacHw_REG_INT_CLEAR_STRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_CLEAR_DTRAN(i32) #1

declare dso_local i64 @dmacHw_REG_INT_CLEAR_ERROR(i32) #1

declare dso_local i64 @dmacHw_REG_SW_HS_SRC_REQ(i32) #1

declare dso_local i64 @dmacHw_REG_SW_HS_DST_REQ(i32) #1

declare dso_local i64 @dmacHw_REG_SW_HS_SRC_SGL_REQ(i32) #1

declare dso_local i64 @dmacHw_REG_SW_HS_DST_SGL_REQ(i32) #1

declare dso_local i64 @dmacHw_REG_SW_HS_SRC_LST_REQ(i32) #1

declare dso_local i64 @dmacHw_REG_SW_HS_DST_LST_REQ(i32) #1

declare dso_local i64 @dmacHw_REG_MISC_CFG(i32) #1

declare dso_local i64 @dmacHw_REG_MISC_CH_ENABLE(i32) #1

declare dso_local i64 @dmacHw_REG_MISC_ID(i32) #1

declare dso_local i64 @dmacHw_REG_MISC_TEST(i32) #1

declare dso_local i64 @dmacHw_REG_SAR(i32, i32) #1

declare dso_local i64 @dmacHw_REG_DAR(i32, i32) #1

declare dso_local i64 @dmacHw_REG_LLP(i32, i32) #1

declare dso_local i64 @dmacHw_REG_CTL_LO(i32, i32) #1

declare dso_local i64 @dmacHw_REG_CTL_HI(i32, i32) #1

declare dso_local i64 @dmacHw_REG_SSTAT(i32, i32) #1

declare dso_local i64 @dmacHw_REG_DSTAT(i32, i32) #1

declare dso_local i64 @dmacHw_REG_SSTATAR(i32, i32) #1

declare dso_local i64 @dmacHw_REG_DSTATAR(i32, i32) #1

declare dso_local i64 @dmacHw_REG_CFG_LO(i32, i32) #1

declare dso_local i64 @dmacHw_REG_CFG_HI(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
