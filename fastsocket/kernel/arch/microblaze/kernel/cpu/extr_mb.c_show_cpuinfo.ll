; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/cpu/extr_mb.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/cpu/extr_mb.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@family_string_lookup = common dso_local global %struct.TYPE_4__* null, align 8
@cpuinfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cpu_ver_lookup = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [87 x i8] c"CPU-Family:\09MicroBlaze\0AFPGA-Arch:\09%s\0ACPU-Ver:\09%s\0ACPU-MHz:\09%d.%02d\0ABogoMips:\09%lu.%02lu\0A\00", align 1
@loops_per_jiffy = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"HW:\0A Shift:\09\09%s\0A MSR:\09\09%s\0A PCMP:\09\09%s\0A DIV:\09\09%s\0A\00", align 1
@PVR0_USE_BARREL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@PVR2_USE_MSR_INSTR = common dso_local global i32 0, align 4
@PVR2_USE_PCMP_INSTR = common dso_local global i32 0, align 4
@PVR0_USE_DIV_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" MMU:\09\09%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" MUL:\09\09%s\0A FPU:\09\09%s\0A\00", align 1
@PVR2_USE_MUL64_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"v2\00", align 1
@PVR0_USE_HW_MUL_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@PVR2_USE_FPU2_MASK = common dso_local global i32 0, align 4
@PVR0_USE_FPU_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c" Exc:\09\09%s%s%s%s%s%s%s%s\0A\00", align 1
@PVR2_OPCODE_0x0_ILL_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"op0x0 \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PVR2_UNALIGNED_EXC_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"unal \00", align 1
@PVR2_ILL_OPCODE_EXC_MASK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"ill \00", align 1
@PVR2_IOPB_BUS_EXC_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"iopb \00", align 1
@PVR2_DOPB_BUS_EXC_MASK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"dopb \00", align 1
@PVR2_DIV_ZERO_EXC_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"zero \00", align 1
@PVR2_FPU_EXC_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"fpu \00", align 1
@PVR2_USE_FSL_EXC = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"fsl \00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Icache:\09\09%ukB\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Icache:\09\09no\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Dcache:\09\09%ukB\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Dcache:\09\09no\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"HW-Debug:\09%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"PVR-USR1:\09%02x\0APVR-USR2:\09%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @family_string_lookup, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %9
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 0), align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @family_string_lookup, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %18, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @family_string_lookup, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %6, align 8
  br label %38

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %9

38:                                               ; preds = %26, %9
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %65, %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpu_ver_lookup, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %39
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 1), align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpu_ver_lookup, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %48, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpu_ver_lookup, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %7, align 8
  br label %68

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %39

68:                                               ; preds = %56, %39
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 2), align 8
  %73 = sdiv i32 %72, 1000000
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 2), align 8
  %75 = srem i32 %74, 1000000
  %76 = load i32, i32* @loops_per_jiffy, align 4
  %77 = load i32, i32* @HZ, align 4
  %78 = sdiv i32 500000, %77
  %79 = sdiv i32 %76, %78
  %80 = load i32, i32* @loops_per_jiffy, align 4
  %81 = load i32, i32* @HZ, align 4
  %82 = sdiv i32 5000, %81
  %83 = sdiv i32 %80, %82
  %84 = srem i32 %83, 100
  %85 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i8* %70, i8* %71, i32 %73, i32 %75, i32 %79, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 3), align 4
  %88 = load i32, i32* @PVR0_USE_BARREL_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 3), align 4
  %94 = load i32, i32* @PVR2_USE_MSR_INSTR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 3), align 4
  %100 = load i32, i32* @PVR2_USE_PCMP_INSTR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 3), align 4
  %106 = load i32, i32* @PVR0_USE_DIV_MASK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %111 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %92, i8* %98, i8* %104, i8* %110)
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 14), align 8
  %116 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 4), align 8
  %121 = load i32, i32* @PVR2_USE_MUL64_MASK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %68
  br label %132

125:                                              ; preds = %68
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 4), align 8
  %127 = load i32, i32* @PVR0_USE_HW_MUL_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  br label %132

132:                                              ; preds = %125, %124
  %133 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %124 ], [ %131, %125 ]
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 5), align 4
  %135 = load i32, i32* @PVR2_USE_FPU2_MASK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %146

139:                                              ; preds = %132
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 5), align 4
  %141 = load i32, i32* @PVR0_USE_FPU_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  br label %146

146:                                              ; preds = %139, %138
  %147 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %138 ], [ %145, %139 ]
  %148 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %133, i8* %147)
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %5, align 4
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 8
  %153 = load i32, i32* @PVR2_OPCODE_0x0_ILL_MASK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 8
  %159 = load i32, i32* @PVR2_UNALIGNED_EXC_MASK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 8
  %165 = load i32, i32* @PVR2_ILL_OPCODE_EXC_MASK, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 8
  %171 = load i32, i32* @PVR2_IOPB_BUS_EXC_MASK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 8
  %177 = load i32, i32* @PVR2_DOPB_BUS_EXC_MASK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 8
  %183 = load i32, i32* @PVR2_DIV_ZERO_EXC_MASK, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 8
  %189 = load i32, i32* @PVR2_FPU_EXC_MASK, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 6), align 8
  %195 = load i32, i32* @PVR2_USE_FSL_EXC, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %200 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %157, i8* %163, i8* %169, i8* %175, i8* %181, i8* %187, i8* %193, i8* %199)
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %5, align 4
  %203 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 13), align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %146
  %206 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 7), align 4
  %208 = ashr i32 %207, 10
  %209 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %206, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %5, align 4
  br label %217

212:                                              ; preds = %146
  %213 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %214 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %213, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %212, %205
  %218 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 12), align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %217
  %221 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 8), align 8
  %223 = ashr i32 %222, 10
  %224 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %5, align 4
  br label %232

227:                                              ; preds = %217
  %228 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %229 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %228, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %227, %220
  %233 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %234 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 11), align 8
  %235 = icmp ne i64 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %238 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %233, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %237)
  %239 = load i32, i32* %5, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %5, align 4
  %241 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %242 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 9), align 8
  %243 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpuinfo, i32 0, i32 10), align 8
  %244 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %241, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i8* %242, i8* %243)
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %5, align 4
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
