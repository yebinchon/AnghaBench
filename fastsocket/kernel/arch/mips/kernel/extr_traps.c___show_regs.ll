; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c___show_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c___show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i32, i8**, i8*, i8*, i8*, i32, i8*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"Cpu %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"$%2d   :\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %0*lx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %*s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Hi    : %0*lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Lo    : %0*lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"epc   : %0*lx %pS\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ra    : %0*lx %pS\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Status: %08x    \00", align 1
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MIPS_CPU_ISA_I = common dso_local global i64 0, align 8
@ST0_KUO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"KUo \00", align 1
@ST0_IEO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"IEo \00", align 1
@ST0_KUP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"KUp \00", align 1
@ST0_IEP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"IEp \00", align 1
@ST0_KUC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"KUc \00", align 1
@ST0_IEC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"IEc \00", align 1
@ST0_KX = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"KX \00", align 1
@ST0_SX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"SX \00", align 1
@ST0_UX = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"UX \00", align 1
@ST0_KSU = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"USER \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"SUPERVISOR \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"KERNEL \00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"BAD_MODE \00", align 1
@ST0_ERL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"ERL \00", align 1
@ST0_EXL = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"EXL \00", align 1
@ST0_IE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"IE \00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Cause : %08x\0A\00", align 1
@CAUSEF_EXCCODE = common dso_local global i32 0, align 4
@CAUSEB_EXCCODE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [15 x i8] c"BadVA : %0*lx\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"PrId  : %08x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @__show_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 16, i32* %3, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @smp_processor_id()
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %52, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %53

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 16, i64 0)
  br label %44

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 26
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 27
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %43

34:                                               ; preds = %29
  %35 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 16, i8* %41)
  br label %43

43:                                               ; preds = %34, %32
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = srem i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  br label %11

53:                                               ; preds = %11
  %54 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 16, i8* %56)
  %58 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 16, i8* %60)
  %62 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %66 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 16, i64 %64, i8* %68)
  %70 = call i32 (...) @print_tainted()
  %71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  %72 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 31
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 31
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 16, i8* %76, i8* %81)
  %83 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %85)
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %88 = load i64, i64* @MIPS_CPU_ISA_I, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %145

90:                                               ; preds = %53
  %91 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %92 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ST0_KUO, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %90
  %100 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %101 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ST0_IEO, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %99
  %109 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ST0_KUP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %108
  %118 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ST0_IEP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %117
  %127 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %128 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ST0_KUC, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %126
  %136 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %137 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ST0_IEC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %135
  br label %214

145:                                              ; preds = %53
  %146 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %147 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ST0_KX, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %145
  %155 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %156 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @ST0_SX, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %154
  %164 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %165 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @ST0_UX, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %163
  %173 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %174 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ST0_KSU, align 4
  %177 = and i32 %175, %176
  switch i32 %177, label %184 [
    i32 128, label %178
    i32 129, label %180
    i32 130, label %182
  ]

178:                                              ; preds = %172
  %179 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %186

180:                                              ; preds = %172
  %181 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  br label %186

182:                                              ; preds = %172
  %183 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  br label %186

184:                                              ; preds = %172
  %185 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %182, %180, %178
  %187 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %188 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @ST0_ERL, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %186
  %196 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %197 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @ST0_EXL, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %195
  %205 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %206 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @ST0_IE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  %212 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %204
  br label %214

214:                                              ; preds = %213, %144
  %215 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %216 = load i32, i32* %4, align 4
  %217 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @CAUSEF_EXCCODE, align 4
  %220 = and i32 %218, %219
  %221 = load i32, i32* @CAUSEB_EXCCODE, align 4
  %222 = lshr i32 %220, %221
  store i32 %222, i32* %4, align 4
  %223 = load i32, i32* %4, align 4
  %224 = icmp ule i32 1, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %214
  %226 = load i32, i32* %4, align 4
  %227 = icmp ule i32 %226, 5
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %230 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %229, i32 0, i32 6
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i32 16, i8* %231)
  br label %233

233:                                              ; preds = %228, %225, %214
  %234 = call i32 (...) @read_c0_prid()
  %235 = call i8* (...) @cpu_name_string()
  %236 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 %234, i8* %235)
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local i32 @read_c0_prid(...) #1

declare dso_local i8* @cpu_name_string(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
